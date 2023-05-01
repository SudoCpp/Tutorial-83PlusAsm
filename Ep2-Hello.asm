#include "ti83plus.inc"

    .org userMem - 2
    .db t2ByteTok, tasmCmp
    b_call(_ClrScrnFull)
    ld a,0           ; load the value 0 to register a, the ''accumulator''
    ld (curCol),a    ; assign the contents of register a to memory address (CURCOL) in the RAM
    ld (curRow),a    ; assign the contents of register a to memory address (CURROW) in the RAM
    ld hl,helloString       ; load the data in label "text" to register hl
    b_call(_PutS)    ; calls a function in ti83plus.inc to print text
    b_call(_NewLine) ; calls a function in ti83plus.inc to insert a lnbreak (for legibility)
    ret              ; returns from the program to the calc's OS
helloString:
    .db "Hello, World",0
