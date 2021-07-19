;-------------------------------------------------------------------------------
; MSP430 Assembler Code Template for use with TI Code Composer Studio
;
;
;-------------------------------------------------------------------------------
            .cdecls C,LIST,"msp430.h"       ; Include device header file
            
;-------------------------------------------------------------------------------
            .def    RESET                   ; Export program entry-point to
                                            ; make it known to linker.
;-------------------------------------------------------------------------------
            .text                           ; Assemble into program memory.
            .retain                         ; Override ELF conditional linking
                                            ; and retain current section.
            .retainrefs                     ; And retain any sections that have
                                            ; references to current section.

;-------------------------------------------------------------------------------
RESET       mov.w   #__STACK_END,SP         ; Initialize stackpointer
StopWDT     mov.w   #WDTPW|WDTHOLD,&WDTCTL  ; Stop watchdog timer


;-------------------------------------------------------------------------------
		mov.w	#0x0007,P1DIR			;set p1.0 , p1.1 , p1.2 as output

		;0x01FF		00000001 11111111	intensity
		;0x02FF		00000010 11111111	intensity
		;0x0301		00000011 00000001	scan limit
		;0x0401		00000100 00000001	configuration
		;0x2053		00100000 01010011	S
		;0x214C		00100001 01001100	L
		;0x2249		00100010 01001001	I
		;0x2349		00100011 01001001	I

;---------------------------;0x01FF		00000001 11111111	intensity-------------------------------------------------------------

		bic.b	#0x04,P1OUT
		nop
		bic.b	#0x02,P1OUT
		nop
		bis.b	#0x00,P1OUT
		nop
		bis.b	#0x04,P1OUT
		nop
		bic.b	#0x01,P1OUT
		nop
		bic.b	#0x04,P1OUT

		bic.b	#0x04,P1OUT
		nop
		bis.b	#0x00,P1OUT
		nop
		bis.b	#0x04,P1OUT
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0000,P1OUT			;set 13th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 12th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 11th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 10th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 9th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 8th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 7th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 6th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 5th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 4th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 3th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 2th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 1th bit
		nop
		bis.b	#0x004,P1OUT		;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 0th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bis.b	#0x02,P1OUT			;set the cs bit high to latch the shift register in the max6952
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

;---------------------------;0x02FF		00000010 11111111	intensity-------------------------------------------------------------

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bic.b	#0x02,P1OUT			;clear the 'cs' bit before begin to feed the data
		nop
		bis.b	#0x00,P1OUT			;set 15th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 14th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0000,P1OUT			;set 13th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 12th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 11th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 10th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 9th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 8th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 7th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 6th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 5th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 4th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 3th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 2th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 1th bit
		nop
		bis.b	#0x004,P1OUT		;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 0th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bis.b	#0x02,P1OUT			;set the cs bit high to latch the shift register in the max6952
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

;---------------------------;0x0301		00000011 00000001	scan limit-------------------------------------------------------------

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bic.b	#0x02,P1OUT			;clear the 'cs' bit before begin to feed the data
		nop
		bis.b	#0x00,P1OUT			;set 15th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 14th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0000,P1OUT			;set 13th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 12th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 11th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 10th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 9th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 8th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 7th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 6th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 5th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 4th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 3th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 2th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 1th bit
		nop
		bis.b	#0x004,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 0th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bis.b	#0x02,P1OUT			;set the cs bit high to latch the shift register in the max6952
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

;---------------------------0x0401		00000100 00000001	configuration-------------------------------------------------------------

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bic.b	#0x02,P1OUT			;clear the 'cs' bit before begin to feed the data
		nop
		bis.b	#0x00,P1OUT			;set 15th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 14th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0000,P1OUT			;set 13th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 12th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 11th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 10th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 9th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 8th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 7th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 6th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 5th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 4th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 3th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 2th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 1th bit
		nop
		bis.b	#0x004,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 0th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bis.b	#0x02,P1OUT			;set the cs bit high to latch the shift register in the max6952
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
;----------------------------------------;0x2053		00100000 01010011	S----------------------------------------------------

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bic.b	#0x02,P1OUT			;clear the 'cs' bit before begin to feed the data
		nop
		bis.b	#0x00,P1OUT			;set 15th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 14th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0001,P1OUT			;set 13th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 12th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 11th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 10th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 9th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 8th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 7th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 6th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 5th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 4th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 3th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 2th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 1th bit
		nop
		bis.b	#0x004,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 0th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bis.b	#0x02,P1OUT			;set the cs bit high to latch the shift register in the max6952
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
;--------------------------------------------------------0x214C		00100001 01001100--------------------------------------------------------------------------------------

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bic.b	#0x02,P1OUT			;clear the 'cs' bit before begin to feed the data
		nop
		bis.b	#0x00,P1OUT			;set 15th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 14th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0001,P1OUT			;set 13th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 12th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 11th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 10th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 9th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 8th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 7th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 6th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 5th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 4th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 3th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 2th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 1th bit
		nop
		bis.b	#0x004,P1OUT		;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 0th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bis.b	#0x02,P1OUT			;set the cs bit high to latch the shift register in the max6952
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
;-----------------------------------------------------------0x2249		00100010 01001001-----------------------------------------------------------------------------------

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bic.b	#0x02,P1OUT			;clear the 'cs' bit before begin to feed the data
		nop
		bis.b	#0x00,P1OUT			;set 15th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 14th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0001,P1OUT			;set 13th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 12th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 11th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 10th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 9th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 8th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 7th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 6th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 5th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 4th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 3th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 2th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 1th bit
		nop
		bis.b	#0x004,P1OUT		;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 0th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bis.b	#0x02,P1OUT			;set the cs bit high to latch the shift register in the max6952
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
;--------------------------------------------------------0x2349		00100011 01001001--------------------------------------------------------------------------------------

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bic.b	#0x02,P1OUT			;clear the 'cs' bit before begin to feed the data
		nop
		bis.b	#0x00,P1OUT			;set 15th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 14th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0001,P1OUT			;set 13th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 12th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 11th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 10th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 9th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 8th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 7th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 6th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 5th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 4th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 3th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 2th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x00,P1OUT			;set 1th bit
		nop
		bis.b	#0x004,P1OUT		;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

		bic.b	#0x04,P1OUT			;set the CLK to low
		nop
		bis.b	#0x01,P1OUT			;set 0th bit
		nop
		bis.b	#0x04,P1OUT			;set the CLK to high so that the data bit in p1.0 feed into the shift register of the max6952
		nop
		bic.b	#0x01,P1OUT			;clear p1.0 to get ready for the next bit
		nop
		bis.b	#0x02,P1OUT			;set the cs bit high to latch the shift register in the max6952
		nop
		bic.b	#0x04,P1OUT			;set the CLK to low

;----------------------------------------------------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
; Stack Pointer definition
;-------------------------------------------------------------------------------
            .global __STACK_END
            .sect   .stack
            
;-------------------------------------------------------------------------------
; Interrupt Vectors
;-------------------------------------------------------------------------------
            .sect   ".reset"                ; MSP430 RESET Vector
            .short  RESET
            
