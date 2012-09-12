#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <util/atomic.h>

#include "keypad.h"

static volatile uint8_t pinb_last;
static volatile uint8_t pinc_last;
static volatile uint8_t pind_last;

static volatile uint8_t ringbuf_buf[RINGBUF_SIZE];
static volatile uint8_t ringbuf_index;

static inline void ringbuf_put(uint8_t data){
    ringbuf_buf[ringbuf_index++] = data;
    ringbuf_index %= RINGBUF_SIZE;
}

static inline uint8_t ringbuf_get(void){
    static uint8_t ringbuf_index_get = 0;
    uint8_t retval;


    ATOMIC_BLOCK(ATOMIC_FORCEON){
        if (ringbuf_index_get != ringbuf_index)
            retval = ringbuf_buf[ringbuf_index_get++];
        else
            retval = 0;
    }

    ringbuf_index_get %= RINGBUF_SIZE;

    return retval;
}


uint8_t keypad_get(void){
    return ringbuf_get();
}

void keypad_init(void){
    PORTB |= PB_ALL_MASK;
    PORTC |= PC_ALL_MASK;
    PORTD |= PD_ALL_MASK;
    _delay_ms(1);
    pinb_last = (PINB & PB_ALL_MASK);
    pinc_last = (PINC & PC_ALL_MASK);
    pind_last = (PIND & PD_ALL_MASK);

    TCCR0A |= (1<<WGM01); //CTC
    TCCR0B |= 0b101; //clockdiv 1024
    OCR0A = 156; //8MHz/1024/156 = 50.08Hz
    TIMSK0 |= (1<<OCIE0A);

    ringbuf_index = 0;
}

ISR(TIMER0_COMPA_vect){
    uint8_t i; 
    uint8_t packet;

    uint8_t pinb_diff;
    uint8_t pinc_diff;
    uint8_t pind_diff;

    uint8_t pinb_new;
    uint8_t pinc_new;
    uint8_t pind_new;

    pinb_new = (PINB & PB_ALL_MASK);
    pinc_new = (PINC & PC_ALL_MASK);
    pind_new = (PIND & PD_ALL_MASK);

    pinb_diff = pinb_new ^ pinb_last;
    pinc_diff = pinc_new ^ pinc_last;
    pind_diff = pind_new ^ pind_last;

    if (pinb_diff != 0){
        for (i=0 ; i<8 ; i++){
            if (pinb_diff & (1<<i)){
                packet  = i; //bit
                packet |= 0b00001000; //port
                if (pinb_new & (1<<i)) //edge
                    packet |= 0b10000000;
                ringbuf_put(packet);
            }
        }
    }

    if (pinc_diff != 0){
        for (i=0 ; i<8 ; i++){
            if (pinc_diff & (1<<i)){
                packet  = i; //bit
                packet |= 0b00010000; //port
                if (pinc_new & (1<<i)) //edge
                    packet |= 0b10000000;
                ringbuf_put(packet);
            }
        }
    }

    if (pind_diff != 0){
        for (i=0 ; i<8 ; i++){
            if (pind_diff & (1<<i)){
                packet  = i; //bit
                packet |= 0b00011000; //port
                if (pind_new & (1<<i)) //edge
                    packet |= 0b10000000;
                ringbuf_put(packet);
            }
        }
    }

    pinb_last = pinb_new;
    pinc_last = pinc_new;
    pind_last = pind_new;
}
