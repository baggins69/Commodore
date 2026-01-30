// Title:   VIC 20 Hello World
// Author:  Scott Julian
// Created: 1985, 2024


    *= $1001                    // BASIC Start address

    .word $100A                 // Memory location for first line
    .word 2024                  // BASIC Line number
    .byte $9e                   // SYS command
    .byte $34, $31, $30, $39    // 4109 (memory address to start)
    .byte 0, 0, 0

     // Start of code $100A

    lda #10                     // Change Screen to BLACK and Border to RED
    sta $900f                   // Update Screen/Border register

    lda #147                    // Load A with character code 147 
    jsr $ffd2                   // Print character in A (147, clears screen)

    ldx #0                      // Initialise X with 0
loop:
    lda HelloWorld,x            // Read characters in text starting with position X
    cmp #$ff                    // Check last byte is $FF (255)
    beq exit                    // If TRUE then jump to exit (return to BASIC)
    sta $1e00,x                 // Display A in screen location X
    inx                         // Increment X
    jmp loop                    // Loop and grab next character

exit:
    jsr Newline
    rts                         // Return to BASIC

Newline:
    lda #13                     // Load A with character code 13
    jsr $ffd2                   // Print character in A (13, C/R)
    rts

HelloWorld:
    .text "hello world"         // Text to display
    .byte $ff                   // Last BYTE

