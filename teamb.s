#You are going to write two functions here:
# function_one
# function_two

.global function_one
function_one:
    PUSH {LR}
    PUSH {R4-R12}		 @This preserves R4 through R12 


quit:
	MOV R0,#42			 @Return value of 0
    POP {R4-R12}         @Restore R4 through R12 for the calling function
	POP {PC}             @Return from a function

.global function_two
function_two:
    PUSH {LR}
    PUSH {R4-R12}        @This preserves R4 through R12 
	//r0 is array
	//r1 is size
	//r2 is stride
	mov r8,#0//I
	mov r7,#0//J
	top:
	cmp r7,r1
	bge quit2
	ldr r3, [r0, r8]
	add r9,r3
	//add r3,r2
	str r3, [r0,r8]
	add r8, #4
	add r7, #1
	b top


quit2:
	MOV R0,r9		 @Return value of 0
    POP {R4-R12}         @Restore R4 through R12 for the calling function
	POP {PC}             @Return from a function
