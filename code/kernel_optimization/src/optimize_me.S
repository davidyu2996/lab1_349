	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"optimize_me.c"
	.text
	.align	2
	.global	optimize_me
	.type	optimize_me, %function
optimize_me:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #28
	mov r1, r0
    mov r9, #500
	b	.L7
	sub	sp, fp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, fp, lr}

.L7:
    mov r8, #500  
    rsb r0, r9, #500
    add r10, r1, r0, asl #2
    ldr r6, [r10]
    mov r7, #16
    mov r12, #17

	b	.L6
    subs r9, r9, #1
	bgt	.L7
	sub	sp, fp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, fp, lr}

.L6:

	rsb r2, r8, #500
	add	r4, r1, r2, asl #2
	ldr	r3, [r4]
    mla r5, r3, r12, r7
	add	r3, r2, r2, asl #2
	add	r2, r3, r3, asl #2
	add	r3, r2, r0
	mla	r3, r6, r3, r5
	subs r3, r3, #-3
    addlt   r3, #15
	mov	r3, r3, asr #4
	str	r3, [r4]
    cmp r4, r10
    ldreq r6, [r10]
    sub r8, r8, #1

	rsb r2, r8, #500
	add	r4, r1, r2, asl #2
	ldr	r3, [r4]
    mla r5, r3, r12, r7
	add	r3, r2, r2, asl #2
	add	r2, r3, r3, asl #2
	add	r3, r2, r0
	mla	r3, r6, r3, r5
	subs r3, r3, #-3
    addlt   r3, #15
	mov	r3, r3, asr #4
	str	r3, [r4]
    cmp r4, r10
    ldreq r6, [r10]
    sub r8, r8, #1

	rsb r2, r8, #500
	add	r4, r1, r2, asl #2
	ldr	r3, [r4]
    mla r5, r3, r12, r7
	add	r3, r2, r2, asl #2
	add	r2, r3, r3, asl #2
	add	r3, r2, r0
	mla	r3, r6, r3, r5
	subs r3, r3, #-3
    addlt   r3, #15
	mov	r3, r3, asr #4
	str	r3, [r4]
    cmp r4, r10
    ldreq r6, [r10]
    sub r8, r8, #1

	rsb r2, r8, #500
	add	r4, r1, r2, asl #2
	ldr	r3, [r4]
    mla r5, r3, r12, r7
	add	r3, r2, r2, asl #2
	add	r2, r3, r3, asl #2
	add	r3, r2, r0
	mla	r3, r6, r3, r5
	subs r3, r3, #-3
    addlt   r3, #15
	mov	r3, r3, asr #4
	str	r3, [r4]
    cmp r4, r10
    ldreq r6, [r10]
    sub r8, r8, #1

	rsb r2, r8, #500
	add	r4, r1, r2, asl #2
	ldr	r3, [r4]
    mla r5, r3, r12, r7
	add	r3, r2, r2, asl #2
	add	r2, r3, r3, asl #2
	add	r3, r2, r0
	mla	r3, r6, r3, r5
	subs r3, r3, #-3
    addlt   r3, #15
	mov	r3, r3, asr #4
	str	r3, [r4]
    cmp r4, r10
    ldreq r6, [r10]
    sub r8, r8, #1

	rsb r2, r8, #500
	add	r4, r1, r2, asl #2
	ldr	r3, [r4]
    mla r5, r3, r12, r7
	add	r3, r2, r2, asl #2
	add	r2, r3, r3, asl #2
	add	r3, r2, r0
	mla	r3, r6, r3, r5
	subs r3, r3, #-3
    addlt   r3, #15
	mov	r3, r3, asr #4
	str	r3, [r4]
    cmp r4, r10
    ldreq r6, [r10]
    sub r8, r8, #1

	rsb r2, r8, #500
	add	r4, r1, r2, asl #2
	ldr	r3, [r4]
    mla r5, r3, r12, r7
	add	r3, r2, r2, asl #2
	add	r2, r3, r3, asl #2
	add	r3, r2, r0
	mla	r3, r6, r3, r5
	subs r3, r3, #-3
    addlt   r3, #15
	mov	r3, r3, asr #4
	str	r3, [r4]
    cmp r4, r10
    ldreq r6, [r10]
    sub r8, r8, #1

	rsb r2, r8, #500
	add	r4, r1, r2, asl #2
	ldr	r3, [r4]
    mla r5, r3, r12, r7
	add	r3, r2, r2, asl #2
	add	r2, r3, r3, asl #2
	add	r3, r2, r0
	mla	r3, r6, r3, r5
	subs r3, r3, #-3
    addlt   r3, #15
	mov	r3, r3, asr #4
	str	r3, [r4]
    cmp r4, r10
    ldreq r6, [r10]
    sub r8, r8, #1

	rsb r2, r8, #500
	add	r4, r1, r2, asl #2
	ldr	r3, [r4]
    mla r5, r3, r12, r7
	add	r3, r2, r2, asl #2
	add	r2, r3, r3, asl #2
	add	r3, r2, r0
	mla	r3, r6, r3, r5
	subs r3, r3, #-3
    addlt   r3, #15
	mov	r3, r3, asr #4
	str	r3, [r4]
    cmp r4, r10
    ldreq r6, [r10]
    sub r8, r8, #1

	rsb r2, r8, #500
	add	r4, r1, r2, asl #2
	ldr	r3, [r4]
    mla r5, r3, r12, r7
	add	r3, r2, r2, asl #2
	add	r2, r3, r3, asl #2
	add	r3, r2, r0
	mla	r3, r6, r3, r5
	subs r3, r3, #-3
    addlt   r3, #15
	mov	r3, r3, asr #4
	str	r3, [r4]
    cmp r4, r10
    ldreq r6, [r10]
    sub r8, r8, #1

	rsb r2, r8, #500
	add	r4, r1, r2, asl #2
	ldr	r3, [r4]
    mla r5, r3, r12, r7
	add	r3, r2, r2, asl #2
	add	r2, r3, r3, asl #2
	add	r3, r2, r0
	mla	r3, r6, r3, r5
	subs r3, r3, #-3
    addlt   r3, #15
	mov	r3, r3, asr #4
	str	r3, [r4]
    cmp r4, r10
    ldreq r6, [r10]
    sub r8, r8, #1

	rsb r2, r8, #500
	add	r4, r1, r2, asl #2
	ldr	r3, [r4]
    mla r5, r3, r12, r7
	add	r3, r2, r2, asl #2
	add	r2, r3, r3, asl #2
	add	r3, r2, r0
	mla	r3, r6, r3, r5
	subs r3, r3, #-3
    addlt   r3, #15
	mov	r3, r3, asr #4
	str	r3, [r4]
    cmp r4, r10
    ldreq r6, [r10]
    subs r8, r8, #1
 
.L5:
	bgt	.L6
	subs r9, r9, #1
.L4:
	bgt	.L7
	sub	sp, fp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, fp, lr}
	bx	lr
	.size	optimize_me, .-optimize_me
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20150529 (release) [ARM/embedded-4_9-branch revision 224288]"
