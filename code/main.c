//standard libs
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

//avr libs
#include <avr/io.h>
#include <util/delay.h>
#include <avr/pgmspace.h>
#include <avr/power.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>

//LUFA stuff
#include "Descriptors.h"
#include <LUFA/Drivers/USB/USB.h>

//own stuff
#include "keypad.h"

/**********************************************************
 * Function prototypes
 **********************************************************/

void initialize(void);

/**********************************************************
 * External variables
 **********************************************************/

/**********************************************************
 * Global variables
 **********************************************************/

/** Buffer to hold the previously generated Keyboard HID report, for comparison purposes inside the HID class driver. */
static uint8_t PrevKeyboardHIDReportBuffer[sizeof(USB_KeyboardReport_Data_t)];

/** LUFA HID Class driver interface configuration and state information. This structure is
 *  passed to all HID Class driver functions, so that multiple instances of the same class
 *  within a device can be differentiated from one another.
 */
USB_ClassInfo_HID_Device_t Keyboard_HID_Interface =
 	{
		.Config =
			{
				.InterfaceNumber              = 0,
				.ReportINEndpoint             =
					{
						.Address              = KEYBOARD_EPADDR,
						.Size                 = KEYBOARD_EPSIZE,
						.Banks                = 1,
					},
				.PrevReportINBuffer           = PrevKeyboardHIDReportBuffer,
				.PrevReportINBufferSize       = sizeof(PrevKeyboardHIDReportBuffer),
			},
    };

/**********************************************************
 * Main function
 **********************************************************/
int main(void){

    //initialize
    initialize();

    //main loop
    while (1)
    {
        /**LUFA usb related tasks*/
		HID_Device_USBTask(&Keyboard_HID_Interface);
        USB_USBTask();

    }
    return 0;
}

/**********************************************************
 * Interrupt vectors
 **********************************************************/


/**********************************************************
 * Other functions
 **********************************************************/

/** Initializes all of the hardware. */
void initialize(void){
	/* Disable watchdog if enabled by bootloader/fuses */
	MCUSR &= ~(1 << WDRF);
	wdt_disable();

	/* Disable clock division */
	clock_prescale_set(clock_div_1);

    /** LUFA USB related inits */
	USB_Init();

    /* Enable numpad pullups */
    PORTB |= PB_ALL_MASK;
    PORTC |= PC_ALL_MASK;
    PORTD |= PD_ALL_MASK;
    //keypad_init();

    /* Capslock LED */
    CAPL_LED_DDR |= (1<<CAPL_LED_BIT);

    /** enable interrupts*/
    sei();
}

/**********************************************************
 * LUFA functions
 **********************************************************/

/** HID class driver callback function for the creation of HID reports to the host.
 *
 *  \param[in]     HIDInterfaceInfo  Pointer to the HID class interface configuration structure being referenced
 *  \param[in,out] ReportID    Report ID requested by the host if non-zero, otherwise callback should set to the generated report ID
 *  \param[in]     ReportType  Type of the report to create, either HID_REPORT_ITEM_In or HID_REPORT_ITEM_Feature
 *  \param[out]    ReportData  Pointer to a buffer where the created report should be stored
 *  \param[out]    ReportSize  Number of bytes written in the report (or zero if no report is to be sent)
 *
 *  \return Boolean true to force the sending of the report, false to let the library determine if it needs to be sent
 */
bool CALLBACK_HID_Device_CreateHIDReport(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo,
                                         uint8_t* const ReportID,
                                         const uint8_t ReportType,
                                         void* ReportData,
                                         uint16_t* const ReportSize)
{
	USB_KeyboardReport_Data_t* KeyboardReport = (USB_KeyboardReport_Data_t*)ReportData;

	uint8_t UsedKeyCodes = 0;

    //Check keys connected to port B
    if (!((1<<PB_0_BIT)&PINB))
        KeyboardReport->KeyCode[UsedKeyCodes++] = HID_KEYBOARD_SC_KEYPAD_0_AND_INSERT;
    if (!((1<<PB_8_BIT)&PINB))
        KeyboardReport->KeyCode[UsedKeyCodes++] = HID_KEYBOARD_SC_KEYPAD_8_AND_UP_ARROW;
    if (!((1<<PB_5_BIT)&PINB))
        KeyboardReport->KeyCode[UsedKeyCodes++] = HID_KEYBOARD_SC_KEYPAD_5;
    if (!((1<<PB_7_BIT)&PINB))
        KeyboardReport->KeyCode[UsedKeyCodes++] = HID_KEYBOARD_SC_KEYPAD_7_AND_HOME;
    if (!((1<<PB_4_BIT)&PINB))
        KeyboardReport->KeyCode[UsedKeyCodes++] = HID_KEYBOARD_SC_KEYPAD_4_AND_LEFT_ARROW;
    if (UsedKeyCodes >5)
        goto TOOMANY;


    //Check keys connected to port C
    if (!((1<<PC_MUL_BIT)&PINC))
        KeyboardReport->KeyCode[UsedKeyCodes++] = HID_KEYBOARD_SC_KEYPAD_ASTERISK;
    if (UsedKeyCodes >5)
        goto TOOMANY;
    if (!((1<<PC_DIV_BIT)&PINC))
        KeyboardReport->KeyCode[UsedKeyCodes++] = HID_KEYBOARD_SC_KEYPAD_SLASH;
    if (UsedKeyCodes >5)
        goto TOOMANY;
    if (!((1<<PC_NUML_BIT)&PINC))
        KeyboardReport->KeyCode[UsedKeyCodes++] = HID_KEYBOARD_SC_NUM_LOCK;
    if (UsedKeyCodes >5)
        goto TOOMANY;
    if (!((1<<PC_1_BIT)&PINC))
        KeyboardReport->KeyCode[UsedKeyCodes++] = HID_KEYBOARD_SC_KEYPAD_1_AND_END;
    if (UsedKeyCodes >5)
        goto TOOMANY;

    //Check keys connected to port D
    if (!((1<<PD_MINUS_BIT)&PIND))
        KeyboardReport->KeyCode[UsedKeyCodes++] = HID_KEYBOARD_SC_KEYPAD_MINUS;
    if (UsedKeyCodes >5)
        goto TOOMANY;
    if (!((1<<PD_PLUS_BIT)&PIND))
        KeyboardReport->KeyCode[UsedKeyCodes++] = HID_KEYBOARD_SC_KEYPAD_PLUS;
    if (UsedKeyCodes >5)
        goto TOOMANY;
    if (!((1<<PD_6_BIT)&PIND))
        KeyboardReport->KeyCode[UsedKeyCodes++] = HID_KEYBOARD_SC_KEYPAD_6_AND_RIGHT_ARROW;
    if (UsedKeyCodes >5)
        goto TOOMANY;
    if (!((1<<PD_9_BIT)&PIND))
        KeyboardReport->KeyCode[UsedKeyCodes++] = HID_KEYBOARD_SC_KEYPAD_9_AND_PAGE_UP;
    if (UsedKeyCodes >5)
        goto TOOMANY;
    if (!((1<<PD_3_BIT)&PIND))
        KeyboardReport->KeyCode[UsedKeyCodes++] = HID_KEYBOARD_SC_KEYPAD_3_AND_PAGE_DOWN;
    if (UsedKeyCodes >5)
        goto TOOMANY;
    if (!((1<<PD_ENT_BIT)&PIND))
        KeyboardReport->KeyCode[UsedKeyCodes++] = HID_KEYBOARD_SC_KEYPAD_ENTER;
    if (UsedKeyCodes >5)
        goto TOOMANY;
    if (!((1<<PD_DOT_BIT)&PIND))
        KeyboardReport->KeyCode[UsedKeyCodes++] = HID_KEYBOARD_SC_KEYPAD_DOT_AND_DELETE;
    if (UsedKeyCodes >5)
        goto TOOMANY;
    if (!((1<<PD_2_BIT)&PIND))
        KeyboardReport->KeyCode[UsedKeyCodes++] = HID_KEYBOARD_SC_KEYPAD_2_AND_DOWN_ARROW;

TOOMANY:
	*ReportSize = sizeof(USB_KeyboardReport_Data_t);

	return false;
}

/** HID class driver callback function for the processing of HID reports from the host.
 *
 *  \param[in] HIDInterfaceInfo  Pointer to the HID class interface configuration structure being referenced
 *  \param[in] ReportID    Report ID of the received report from the host
 *  \param[in] ReportType  The type of report that the host has sent, either HID_REPORT_ITEM_Out or HID_REPORT_ITEM_Feature
 *  \param[in] ReportData  Pointer to a buffer where the received report has been stored
 *  \param[in] ReportSize  Size in bytes of the received HID report
 */

void CALLBACK_HID_Device_ProcessHIDReport(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo,
                                          const uint8_t ReportID,
                                          const uint8_t ReportType,
                                          const void* ReportData,
                                          const uint16_t ReportSize)
{
	uint8_t* LEDReport = (uint8_t*)ReportData;

	if (*LEDReport & HID_KEYBOARD_LED_NUMLOCK)
        CAPL_LED_PORT |= (1<<CAPL_LED_BIT);
    else
        CAPL_LED_PORT &= ~(1<<CAPL_LED_BIT);
}


/** Event handler for the library USB Connection event. */
void EVENT_USB_Device_Connect(void){
}

/** Event handler for the library USB Disconnection event. */
void EVENT_USB_Device_Disconnect(void){
}

void EVENT_USB_Device_ConfigurationChanged(void){
    HID_Device_ConfigureEndpoints(&Keyboard_HID_Interface);
	USB_Device_EnableSOFEvents();
}

/** Event handler for the library USB Control Request reception event. */
void EVENT_USB_Device_ControlRequest(void){
	HID_Device_ProcessControlRequest(&Keyboard_HID_Interface);
}

/** Event handler for the USB device Start Of Frame event. */
void EVENT_USB_Device_StartOfFrame(void)
{
	HID_Device_MillisecondElapsed(&Keyboard_HID_Interface);
}
