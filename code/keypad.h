#ifndef _KEYPAD_H_
#define _KEYPAD_H_

/* byte format
 * bit 7   = edge (0=rising, 1=falling)
 * bit 4:3 = port (0=PORTB, 1=PORTC, 2=PORTD)
 * bit 2:0 = bit
 */

#define PB_0_BIT     0
#define PB_8_BIT     4
#define PB_5_BIT     5
#define PB_7_BIT     6
#define PB_4_BIT     7
#define PB_ALL_MASK ((1<<PB_0_BIT)|(1<<PB_8_BIT)|(1<<PB_5_BIT)|(1<<PB_7_BIT)| \
        (1<<PB_7_BIT)|(1<<PB_4_BIT))

#define PC_MUL_BIT   2
#define PC_DIV_BIT   4
#define PC_NUML_BIT  6
#define PC_1_BIT     7
#define PC_ALL_MASK ((1<<PC_MUL_BIT)|(1<<PC_DIV_BIT)|(1<<PC_NUML_BIT)| \
        (1<<PC_1_BIT))

#define PD_MINUS_BIT 0
#define PD_PLUS_BIT  1
#define PD_6_BIT     2
#define PD_9_BIT     3
#define PD_3_BIT     4
#define PD_ENT_BIT   5
#define PD_DOT_BIT   6
#define PD_2_BIT     7
#define PD_ALL_MASK  0xFF

#define RINGBUF_SIZE 16

void keypad_init(void);
uint8_t keypad_get(void);

#endif
