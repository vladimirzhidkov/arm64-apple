.text
.align 2
.global _start   
_start:
	// Print
	mov X0, #1	// stdout
	adr X1, msg
//	ldr X1, =msg
	mov X2, #14	// length
	mov X16, #4	// write syscall
	svc #0x80	// kernel call
	
	// Exit
	mov     X0, #0	// return code
	mov     X16, #1	// exit syscall 
	svc     #0x80	// kernel call

msg:      .ascii  "Hello, World!\n"


