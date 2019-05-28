
kernel_clapdetector/kernel.elf:     file format elf32-littlearm


Disassembly of section .text:

00008000 <__start>:
    8000:	e10f0000 	mrs	r0, CPSR
    8004:	e321f0d2 	msr	CPSR_c, #210	; 0xd2
    8008:	e59fd034 	ldr	sp, [pc, #52]	; 8044 <hang+0x8>
    800c:	e121f000 	msr	CPSR_c, r0
    8010:	e59fd030 	ldr	sp, [pc, #48]	; 8048 <hang+0xc>
    8014:	e59f0030 	ldr	r0, [pc, #48]	; 804c <hang+0x10>
    8018:	e59f1030 	ldr	r1, [pc, #48]	; 8050 <hang+0x14>
    801c:	e3a02000 	mov	r2, #0
    8020:	e3a03000 	mov	r3, #0
    8024:	e3a04000 	mov	r4, #0
    8028:	e3a05000 	mov	r5, #0

0000802c <bss_loop>:
    802c:	e8a0003c 	stmia	r0!, {r2, r3, r4, r5}
    8030:	e1500001 	cmp	r0, r1
    8034:	3afffffc 	bcc	802c <bss_loop>
    8038:	eb0000cd 	bl	8374 <kernel_main>

0000803c <hang>:
    803c:	e320f003 	wfi
    8040:	eafffffd 	b	803c <hang>
    8044:	0012c000 	andseq	ip, r2, r0
    8048:	0011b000 	andseq	fp, r1, r0
    804c:	0000b000 	andeq	fp, r0, r0
    8050:	0000b000 	andeq	fp, r0, r0

00008054 <gpio_config>:
    8054:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8058:	e28db000 	add	fp, sp, #0
    805c:	e24dd01c 	sub	sp, sp, #28
    8060:	e1a03000 	mov	r3, r0
    8064:	e1a02001 	mov	r2, r1
    8068:	e54b3015 	strb	r3, [fp, #-21]
    806c:	e1a03002 	mov	r3, r2
    8070:	e54b3016 	strb	r3, [fp, #-22]
    8074:	e55b3015 	ldrb	r3, [fp, #-21]
    8078:	e3530035 	cmp	r3, #53	; 0x35
    807c:	8a000002 	bhi	808c <gpio_config+0x38>
    8080:	e55b3016 	ldrb	r3, [fp, #-22]
    8084:	e3530007 	cmp	r3, #7
    8088:	9a000000 	bls	8090 <gpio_config+0x3c>
    808c:	ea000035 	b	8168 <gpio_config+0x114>
    8090:	e55b2015 	ldrb	r2, [fp, #-21]
    8094:	e30c3ccd 	movw	r3, #52429	; 0xcccd
    8098:	e34c3ccc 	movt	r3, #52428	; 0xcccc
    809c:	e0832392 	umull	r2, r3, r2, r3
    80a0:	e1a031a3 	lsr	r3, r3, #3
    80a4:	e6ef3073 	uxtb	r3, r3
    80a8:	e50b3008 	str	r3, [fp, #-8]
    80ac:	e30a3000 	movw	r3, #40960	; 0xa000
    80b0:	e3403000 	movt	r3, #0
    80b4:	e5932000 	ldr	r2, [r3]
    80b8:	e51b3008 	ldr	r3, [fp, #-8]
    80bc:	e1a03103 	lsl	r3, r3, #2
    80c0:	e0823003 	add	r3, r2, r3
    80c4:	e5933000 	ldr	r3, [r3]
    80c8:	e50b300c 	str	r3, [fp, #-12]
    80cc:	e55b1015 	ldrb	r1, [fp, #-21]
    80d0:	e30c3ccd 	movw	r3, #52429	; 0xcccd
    80d4:	e34c3ccc 	movt	r3, #52428	; 0xcccc
    80d8:	e0832391 	umull	r2, r3, r1, r3
    80dc:	e1a021a3 	lsr	r2, r3, #3
    80e0:	e1a03002 	mov	r3, r2
    80e4:	e1a03103 	lsl	r3, r3, #2
    80e8:	e0833002 	add	r3, r3, r2
    80ec:	e1a03083 	lsl	r3, r3, #1
    80f0:	e0633001 	rsb	r3, r3, r1
    80f4:	e6ef3073 	uxtb	r3, r3
    80f8:	e1a02003 	mov	r2, r3
    80fc:	e1a03002 	mov	r3, r2
    8100:	e1a03083 	lsl	r3, r3, #1
    8104:	e0833002 	add	r3, r3, r2
    8108:	e50b3010 	str	r3, [fp, #-16]
    810c:	e51b3010 	ldr	r3, [fp, #-16]
    8110:	e3a02007 	mov	r2, #7
    8114:	e1a03312 	lsl	r3, r2, r3
    8118:	e1e03003 	mvn	r3, r3
    811c:	e1a02003 	mov	r2, r3
    8120:	e51b300c 	ldr	r3, [fp, #-12]
    8124:	e0033002 	and	r3, r3, r2
    8128:	e50b300c 	str	r3, [fp, #-12]
    812c:	e55b2016 	ldrb	r2, [fp, #-22]
    8130:	e51b3010 	ldr	r3, [fp, #-16]
    8134:	e1a03312 	lsl	r3, r2, r3
    8138:	e1a02003 	mov	r2, r3
    813c:	e51b300c 	ldr	r3, [fp, #-12]
    8140:	e1833002 	orr	r3, r3, r2
    8144:	e50b300c 	str	r3, [fp, #-12]
    8148:	e30a3000 	movw	r3, #40960	; 0xa000
    814c:	e3403000 	movt	r3, #0
    8150:	e5932000 	ldr	r2, [r3]
    8154:	e51b3008 	ldr	r3, [fp, #-8]
    8158:	e1a03103 	lsl	r3, r3, #2
    815c:	e0823003 	add	r3, r2, r3
    8160:	e51b200c 	ldr	r2, [fp, #-12]
    8164:	e5832000 	str	r2, [r3]
    8168:	e24bd000 	sub	sp, fp, #0
    816c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8170:	e12fff1e 	bx	lr

00008174 <gpio_set>:
    8174:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8178:	e28db000 	add	fp, sp, #0
    817c:	e24dd00c 	sub	sp, sp, #12
    8180:	e1a03000 	mov	r3, r0
    8184:	e54b3005 	strb	r3, [fp, #-5]
    8188:	e55b3005 	ldrb	r3, [fp, #-5]
    818c:	e3530035 	cmp	r3, #53	; 0x35
    8190:	9a000000 	bls	8198 <gpio_set+0x24>
    8194:	ea000014 	b	81ec <gpio_set+0x78>
    8198:	e55b3005 	ldrb	r3, [fp, #-5]
    819c:	e353001f 	cmp	r3, #31
    81a0:	9a000009 	bls	81cc <gpio_set+0x58>
    81a4:	e30a3000 	movw	r3, #40960	; 0xa000
    81a8:	e3403000 	movt	r3, #0
    81ac:	e5933000 	ldr	r3, [r3]
    81b0:	e2833020 	add	r3, r3, #32
    81b4:	e55b2005 	ldrb	r2, [fp, #-5]
    81b8:	e2422020 	sub	r2, r2, #32
    81bc:	e3a01001 	mov	r1, #1
    81c0:	e1a02211 	lsl	r2, r1, r2
    81c4:	e5832000 	str	r2, [r3]
    81c8:	ea000007 	b	81ec <gpio_set+0x78>
    81cc:	e30a3000 	movw	r3, #40960	; 0xa000
    81d0:	e3403000 	movt	r3, #0
    81d4:	e5933000 	ldr	r3, [r3]
    81d8:	e283301c 	add	r3, r3, #28
    81dc:	e55b2005 	ldrb	r2, [fp, #-5]
    81e0:	e3a01001 	mov	r1, #1
    81e4:	e1a02211 	lsl	r2, r1, r2
    81e8:	e5832000 	str	r2, [r3]
    81ec:	e24bd000 	sub	sp, fp, #0
    81f0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    81f4:	e12fff1e 	bx	lr

000081f8 <gpio_clr>:
    81f8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    81fc:	e28db000 	add	fp, sp, #0
    8200:	e24dd00c 	sub	sp, sp, #12
    8204:	e1a03000 	mov	r3, r0
    8208:	e54b3005 	strb	r3, [fp, #-5]
    820c:	e55b3005 	ldrb	r3, [fp, #-5]
    8210:	e3530035 	cmp	r3, #53	; 0x35
    8214:	9a000000 	bls	821c <gpio_clr+0x24>
    8218:	ea000014 	b	8270 <gpio_clr+0x78>
    821c:	e55b3005 	ldrb	r3, [fp, #-5]
    8220:	e353001f 	cmp	r3, #31
    8224:	9a000009 	bls	8250 <gpio_clr+0x58>
    8228:	e30a3000 	movw	r3, #40960	; 0xa000
    822c:	e3403000 	movt	r3, #0
    8230:	e5933000 	ldr	r3, [r3]
    8234:	e283302c 	add	r3, r3, #44	; 0x2c
    8238:	e55b2005 	ldrb	r2, [fp, #-5]
    823c:	e2422020 	sub	r2, r2, #32
    8240:	e3a01001 	mov	r1, #1
    8244:	e1a02211 	lsl	r2, r1, r2
    8248:	e5832000 	str	r2, [r3]
    824c:	ea000007 	b	8270 <gpio_clr+0x78>
    8250:	e30a3000 	movw	r3, #40960	; 0xa000
    8254:	e3403000 	movt	r3, #0
    8258:	e5933000 	ldr	r3, [r3]
    825c:	e2833028 	add	r3, r3, #40	; 0x28
    8260:	e55b2005 	ldrb	r2, [fp, #-5]
    8264:	e3a01001 	mov	r1, #1
    8268:	e1a02211 	lsl	r2, r1, r2
    826c:	e5832000 	str	r2, [r3]
    8270:	e24bd000 	sub	sp, fp, #0
    8274:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8278:	e12fff1e 	bx	lr

0000827c <gpio_set_pull>:
    827c:	e92d4800 	push	{fp, lr}
    8280:	e28db004 	add	fp, sp, #4
    8284:	e24dd008 	sub	sp, sp, #8
    8288:	e1a03000 	mov	r3, r0
    828c:	e1a02001 	mov	r2, r1
    8290:	e54b3005 	strb	r3, [fp, #-5]
    8294:	e1a03002 	mov	r3, r2
    8298:	e54b3006 	strb	r3, [fp, #-6]
    829c:	e55b3005 	ldrb	r3, [fp, #-5]
    82a0:	e3530035 	cmp	r3, #53	; 0x35
    82a4:	8a000002 	bhi	82b4 <gpio_set_pull+0x38>
    82a8:	e55b3006 	ldrb	r3, [fp, #-6]
    82ac:	e3530002 	cmp	r3, #2
    82b0:	9a000000 	bls	82b8 <gpio_set_pull+0x3c>
    82b4:	ea00002c 	b	836c <gpio_set_pull+0xf0>
    82b8:	e30a3000 	movw	r3, #40960	; 0xa000
    82bc:	e3403000 	movt	r3, #0
    82c0:	e5933000 	ldr	r3, [r3]
    82c4:	e2833094 	add	r3, r3, #148	; 0x94
    82c8:	e55b2006 	ldrb	r2, [fp, #-6]
    82cc:	e5832000 	str	r2, [r3]
    82d0:	e3a00096 	mov	r0, #150	; 0x96
    82d4:	eb0001c9 	bl	8a00 <delay_cycles>
    82d8:	e55b3005 	ldrb	r3, [fp, #-5]
    82dc:	e353001f 	cmp	r3, #31
    82e0:	9a000011 	bls	832c <gpio_set_pull+0xb0>
    82e4:	e30a3000 	movw	r3, #40960	; 0xa000
    82e8:	e3403000 	movt	r3, #0
    82ec:	e5933000 	ldr	r3, [r3]
    82f0:	e283309c 	add	r3, r3, #156	; 0x9c
    82f4:	e55b2005 	ldrb	r2, [fp, #-5]
    82f8:	e2422020 	sub	r2, r2, #32
    82fc:	e3a01001 	mov	r1, #1
    8300:	e1a02211 	lsl	r2, r1, r2
    8304:	e5832000 	str	r2, [r3]
    8308:	e3a00096 	mov	r0, #150	; 0x96
    830c:	eb0001bb 	bl	8a00 <delay_cycles>
    8310:	e30a3000 	movw	r3, #40960	; 0xa000
    8314:	e3403000 	movt	r3, #0
    8318:	e5933000 	ldr	r3, [r3]
    831c:	e283309c 	add	r3, r3, #156	; 0x9c
    8320:	e3a02000 	mov	r2, #0
    8324:	e5832000 	str	r2, [r3]
    8328:	ea00000f 	b	836c <gpio_set_pull+0xf0>
    832c:	e30a3000 	movw	r3, #40960	; 0xa000
    8330:	e3403000 	movt	r3, #0
    8334:	e5933000 	ldr	r3, [r3]
    8338:	e2833098 	add	r3, r3, #152	; 0x98
    833c:	e55b2005 	ldrb	r2, [fp, #-5]
    8340:	e3a01001 	mov	r1, #1
    8344:	e1a02211 	lsl	r2, r1, r2
    8348:	e5832000 	str	r2, [r3]
    834c:	e3a00096 	mov	r0, #150	; 0x96
    8350:	eb0001aa 	bl	8a00 <delay_cycles>
    8354:	e30a3000 	movw	r3, #40960	; 0xa000
    8358:	e3403000 	movt	r3, #0
    835c:	e5933000 	ldr	r3, [r3]
    8360:	e2833098 	add	r3, r3, #152	; 0x98
    8364:	e3a02000 	mov	r2, #0
    8368:	e5832000 	str	r2, [r3]
    836c:	e24bd004 	sub	sp, fp, #4
    8370:	e8bd8800 	pop	{fp, pc}

00008374 <kernel_main>:
    8374:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8378:	eb0000d4 	bl	86d0 <uart_init>
    837c:	eb00016e 	bl	893c <adc_init>
    8380:	e309b01c 	movw	fp, #36892	; 0x901c
    8384:	e340b000 	movt	fp, #0
    8388:	e3098044 	movw	r8, #36932	; 0x9044
    838c:	e3408000 	movt	r8, #0
    8390:	e1a0000b 	mov	r0, fp
    8394:	eb00005f 	bl	8518 <printk>
    8398:	eb0000f7 	bl	877c <uart_get_byte>
    839c:	e3500030 	cmp	r0, #48	; 0x30
    83a0:	1a000006 	bne	83c0 <kernel_main+0x4c>
    83a4:	e3a00000 	mov	r0, #0
    83a8:	eb000167 	bl	894c <adc_read>
    83ac:	e1a01000 	mov	r1, r0
    83b0:	e3090038 	movw	r0, #36920	; 0x9038
    83b4:	e3400000 	movt	r0, #0
    83b8:	eb000056 	bl	8518 <printk>
    83bc:	eafffff3 	b	8390 <kernel_main+0x1c>
    83c0:	e3500031 	cmp	r0, #49	; 0x31
    83c4:	1afffff1 	bne	8390 <kernel_main+0x1c>
    83c8:	e3a0a0c8 	mov	sl, #200	; 0xc8
    83cc:	e3a09000 	mov	r9, #0
    83d0:	e1a0400a 	mov	r4, sl
    83d4:	e1a05009 	mov	r5, r9
    83d8:	e3a06ffa 	mov	r6, #1000	; 0x3e8
    83dc:	e3a07001 	mov	r7, #1
    83e0:	e1a00007 	mov	r0, r7
    83e4:	eb000158 	bl	894c <adc_read>
    83e8:	e1500006 	cmp	r0, r6
    83ec:	31a06000 	movcc	r6, r0
    83f0:	3a000003 	bcc	8404 <kernel_main+0x90>
    83f4:	e1500005 	cmp	r0, r5
    83f8:	31a00005 	movcc	r0, r5
    83fc:	e6ff5070 	uxth	r5, r0
    8400:	eaffffff 	b	8404 <kernel_main+0x90>
    8404:	e2544001 	subs	r4, r4, #1
    8408:	1afffff4 	bne	83e0 <kernel_main+0x6c>
    840c:	e0664005 	rsb	r4, r6, r5
    8410:	e6ff4074 	uxth	r4, r4
    8414:	e1a00008 	mov	r0, r8
    8418:	e1a01004 	mov	r1, r4
    841c:	eb00003d 	bl	8518 <printk>
    8420:	e3540ffa 	cmp	r4, #1000	; 0x3e8
    8424:	3affffe9 	bcc	83d0 <kernel_main+0x5c>
    8428:	e3090050 	movw	r0, #36944	; 0x9050
    842c:	e3400000 	movt	r0, #0
    8430:	eb000038 	bl	8518 <printk>
    8434:	eaffffd5 	b	8390 <kernel_main+0x1c>

00008438 <printnumk>:
    8438:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    843c:	e24dd008 	sub	sp, sp, #8
    8440:	e1a06002 	mov	r6, r2
    8444:	e1a07003 	mov	r7, r3
    8448:	e3500008 	cmp	r0, #8
    844c:	0a000004 	beq	8464 <printnumk+0x2c>
    8450:	e3098064 	movw	r8, #36964	; 0x9064
    8454:	e3408000 	movt	r8, #0
    8458:	e3500010 	cmp	r0, #16
    845c:	13a08000 	movne	r8, #0
    8460:	ea000001 	b	846c <printnumk+0x34>
    8464:	e3098060 	movw	r8, #36960	; 0x9060
    8468:	e3408000 	movt	r8, #0
    846c:	e28d4007 	add	r4, sp, #7
    8470:	e1a05000 	mov	r5, r0
    8474:	e3a09000 	mov	r9, #0
    8478:	e309a000 	movw	sl, #36864	; 0x9000
    847c:	e340a000 	movt	sl, #0
    8480:	e1a00006 	mov	r0, r6
    8484:	e1a01007 	mov	r1, r7
    8488:	e1a02005 	mov	r2, r5
    848c:	e1a03009 	mov	r3, r9
    8490:	eb00016b 	bl	8a44 <__aeabi_uldivmod>
    8494:	e7da3002 	ldrb	r3, [sl, r2]
    8498:	e4443001 	strb	r3, [r4], #-1
    849c:	e1a00006 	mov	r0, r6
    84a0:	e1a01007 	mov	r1, r7
    84a4:	e1a02005 	mov	r2, r5
    84a8:	e1a03009 	mov	r3, r9
    84ac:	eb000164 	bl	8a44 <__aeabi_uldivmod>
    84b0:	e1a06000 	mov	r6, r0
    84b4:	e1a07001 	mov	r7, r1
    84b8:	e1963007 	orrs	r3, r6, r7
    84bc:	1affffef 	bne	8480 <printnumk+0x48>
    84c0:	e3580000 	cmp	r8, #0
    84c4:	0a000002 	beq	84d4 <printnumk+0x9c>
    84c8:	e5d80000 	ldrb	r0, [r8]
    84cc:	e3500000 	cmp	r0, #0
    84d0:	1a000004 	bne	84e8 <printnumk+0xb0>
    84d4:	e2844001 	add	r4, r4, #1
    84d8:	e28d3008 	add	r3, sp, #8
    84dc:	e1540003 	cmp	r4, r3
    84e0:	1a000005 	bne	84fc <printnumk+0xc4>
    84e4:	ea000009 	b	8510 <printnumk+0xd8>
    84e8:	eb000099 	bl	8754 <uart_put_byte>
    84ec:	e5f80001 	ldrb	r0, [r8, #1]!
    84f0:	e3500000 	cmp	r0, #0
    84f4:	1afffffb 	bne	84e8 <printnumk+0xb0>
    84f8:	eafffff5 	b	84d4 <printnumk+0x9c>
    84fc:	e4d40001 	ldrb	r0, [r4], #1
    8500:	eb000093 	bl	8754 <uart_put_byte>
    8504:	e28d3008 	add	r3, sp, #8
    8508:	e1540003 	cmp	r4, r3
    850c:	1afffffa 	bne	84fc <printnumk+0xc4>
    8510:	e28dd008 	add	sp, sp, #8
    8514:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

00008518 <printk>:
    8518:	e92d000f 	push	{r0, r1, r2, r3}
    851c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8520:	e24dd008 	sub	sp, sp, #8
    8524:	e59d4020 	ldr	r4, [sp, #32]
    8528:	e28d3024 	add	r3, sp, #36	; 0x24
    852c:	e58d3004 	str	r3, [sp, #4]
    8530:	e3a06000 	mov	r6, #0
    8534:	e3a08008 	mov	r8, #8
    8538:	e3a07010 	mov	r7, #16
    853c:	ea00005c 	b	86b4 <printk+0x19c>
    8540:	e3500025 	cmp	r0, #37	; 0x25
    8544:	0a000002 	beq	8554 <printk+0x3c>
    8548:	e2844001 	add	r4, r4, #1
    854c:	eb000080 	bl	8754 <uart_put_byte>
    8550:	ea000057 	b	86b4 <printk+0x19c>
    8554:	e5d43001 	ldrb	r3, [r4, #1]
    8558:	e353006f 	cmp	r3, #111	; 0x6f
    855c:	0a00002c 	beq	8614 <printk+0xfc>
    8560:	8a000006 	bhi	8580 <printk+0x68>
    8564:	e3530063 	cmp	r3, #99	; 0x63
    8568:	0a000045 	beq	8684 <printk+0x16c>
    856c:	e3530064 	cmp	r3, #100	; 0x64
    8570:	0a00000d 	beq	85ac <printk+0x94>
    8574:	e3530025 	cmp	r3, #37	; 0x25
    8578:	1a00004a 	bne	86a8 <printk+0x190>
    857c:	ea000046 	b	869c <printk+0x184>
    8580:	e3530073 	cmp	r3, #115	; 0x73
    8584:	0a000032 	beq	8654 <printk+0x13c>
    8588:	8a000002 	bhi	8598 <printk+0x80>
    858c:	e3530070 	cmp	r3, #112	; 0x70
    8590:	0a000027 	beq	8634 <printk+0x11c>
    8594:	ea000043 	b	86a8 <printk+0x190>
    8598:	e3530075 	cmp	r3, #117	; 0x75
    859c:	0a000014 	beq	85f4 <printk+0xdc>
    85a0:	e3530078 	cmp	r3, #120	; 0x78
    85a4:	0a000022 	beq	8634 <printk+0x11c>
    85a8:	ea00003e 	b	86a8 <printk+0x190>
    85ac:	e59d3004 	ldr	r3, [sp, #4]
    85b0:	e2832004 	add	r2, r3, #4
    85b4:	e58d2004 	str	r2, [sp, #4]
    85b8:	e5935000 	ldr	r5, [r3]
    85bc:	e3550000 	cmp	r5, #0
    85c0:	aa000006 	bge	85e0 <printk+0xc8>
    85c4:	e3a0002d 	mov	r0, #45	; 0x2d
    85c8:	eb000061 	bl	8754 <uart_put_byte>
    85cc:	e2652000 	rsb	r2, r5, #0
    85d0:	e3a0000a 	mov	r0, #10
    85d4:	e1a03fc2 	asr	r3, r2, #31
    85d8:	ebffff96 	bl	8438 <printnumk>
    85dc:	ea000033 	b	86b0 <printk+0x198>
    85e0:	e3a0000a 	mov	r0, #10
    85e4:	e1a02005 	mov	r2, r5
    85e8:	e1a03fc5 	asr	r3, r5, #31
    85ec:	ebffff91 	bl	8438 <printnumk>
    85f0:	ea00002e 	b	86b0 <printk+0x198>
    85f4:	e59d3004 	ldr	r3, [sp, #4]
    85f8:	e2832004 	add	r2, r3, #4
    85fc:	e58d2004 	str	r2, [sp, #4]
    8600:	e3a0000a 	mov	r0, #10
    8604:	e5932000 	ldr	r2, [r3]
    8608:	e1a03006 	mov	r3, r6
    860c:	ebffff89 	bl	8438 <printnumk>
    8610:	ea000026 	b	86b0 <printk+0x198>
    8614:	e59d3004 	ldr	r3, [sp, #4]
    8618:	e2832004 	add	r2, r3, #4
    861c:	e58d2004 	str	r2, [sp, #4]
    8620:	e1a00008 	mov	r0, r8
    8624:	e5932000 	ldr	r2, [r3]
    8628:	e1a03006 	mov	r3, r6
    862c:	ebffff81 	bl	8438 <printnumk>
    8630:	ea00001e 	b	86b0 <printk+0x198>
    8634:	e59d3004 	ldr	r3, [sp, #4]
    8638:	e2832004 	add	r2, r3, #4
    863c:	e58d2004 	str	r2, [sp, #4]
    8640:	e1a00007 	mov	r0, r7
    8644:	e5932000 	ldr	r2, [r3]
    8648:	e1a03006 	mov	r3, r6
    864c:	ebffff79 	bl	8438 <printnumk>
    8650:	ea000016 	b	86b0 <printk+0x198>
    8654:	e59d3004 	ldr	r3, [sp, #4]
    8658:	e2832004 	add	r2, r3, #4
    865c:	e58d2004 	str	r2, [sp, #4]
    8660:	e5935000 	ldr	r5, [r3]
    8664:	e5d50000 	ldrb	r0, [r5]
    8668:	e3500000 	cmp	r0, #0
    866c:	0a00000f 	beq	86b0 <printk+0x198>
    8670:	eb000037 	bl	8754 <uart_put_byte>
    8674:	e5f50001 	ldrb	r0, [r5, #1]!
    8678:	e3500000 	cmp	r0, #0
    867c:	1afffffb 	bne	8670 <printk+0x158>
    8680:	ea00000a 	b	86b0 <printk+0x198>
    8684:	e59d3004 	ldr	r3, [sp, #4]
    8688:	e2832004 	add	r2, r3, #4
    868c:	e58d2004 	str	r2, [sp, #4]
    8690:	e5d30000 	ldrb	r0, [r3]
    8694:	eb00002e 	bl	8754 <uart_put_byte>
    8698:	ea000004 	b	86b0 <printk+0x198>
    869c:	e3a00025 	mov	r0, #37	; 0x25
    86a0:	eb00002b 	bl	8754 <uart_put_byte>
    86a4:	ea000001 	b	86b0 <printk+0x198>
    86a8:	e3e00000 	mvn	r0, #0
    86ac:	ea000003 	b	86c0 <printk+0x1a8>
    86b0:	e2844002 	add	r4, r4, #2
    86b4:	e5d40000 	ldrb	r0, [r4]
    86b8:	e3500000 	cmp	r0, #0
    86bc:	1affff9f 	bne	8540 <printk+0x28>
    86c0:	e28dd008 	add	sp, sp, #8
    86c4:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    86c8:	e28dd010 	add	sp, sp, #16
    86cc:	e12fff1e 	bx	lr

000086d0 <uart_init>:
    86d0:	e92d4008 	push	{r3, lr}
    86d4:	e3a0000f 	mov	r0, #15
    86d8:	e3a01000 	mov	r1, #0
    86dc:	ebfffee6 	bl	827c <gpio_set_pull>
    86e0:	e3a0000e 	mov	r0, #14
    86e4:	e3a01000 	mov	r1, #0
    86e8:	ebfffee3 	bl	827c <gpio_set_pull>
    86ec:	e3a0000f 	mov	r0, #15
    86f0:	e3a01002 	mov	r1, #2
    86f4:	ebfffe56 	bl	8054 <gpio_config>
    86f8:	e3a0000e 	mov	r0, #14
    86fc:	e3a01002 	mov	r1, #2
    8700:	ebfffe53 	bl	8054 <gpio_config>
    8704:	e3a03a05 	mov	r3, #20480	; 0x5000
    8708:	e3433f21 	movt	r3, #16161	; 0x3f21
    870c:	e3a02001 	mov	r2, #1
    8710:	e5832004 	str	r2, [r3, #4]
    8714:	e3a02000 	mov	r2, #0
    8718:	e5832044 	str	r2, [r3, #68]	; 0x44
    871c:	e5932048 	ldr	r2, [r3, #72]	; 0x48
    8720:	e3822006 	orr	r2, r2, #6
    8724:	e5832048 	str	r2, [r3, #72]	; 0x48
    8728:	e3a02003 	mov	r2, #3
    872c:	e583204c 	str	r2, [r3, #76]	; 0x4c
    8730:	e5832060 	str	r2, [r3, #96]	; 0x60
    8734:	e300210e 	movw	r2, #270	; 0x10e
    8738:	e5832068 	str	r2, [r3, #104]	; 0x68
    873c:	e8bd8008 	pop	{r3, pc}

00008740 <uart_close>:
    8740:	e3a03a05 	mov	r3, #20480	; 0x5000
    8744:	e3433f21 	movt	r3, #16161	; 0x3f21
    8748:	e3a02000 	mov	r2, #0
    874c:	e5832004 	str	r2, [r3, #4]
    8750:	e12fff1e 	bx	lr

00008754 <uart_put_byte>:
    8754:	e3a02a05 	mov	r2, #20480	; 0x5000
    8758:	e3432f21 	movt	r2, #16161	; 0x3f21
    875c:	e5923048 	ldr	r3, [r2, #72]	; 0x48
    8760:	e2033006 	and	r3, r3, #6
    8764:	e3530002 	cmp	r3, #2
    8768:	1afffffb 	bne	875c <uart_put_byte+0x8>
    876c:	e3a03a05 	mov	r3, #20480	; 0x5000
    8770:	e3433f21 	movt	r3, #16161	; 0x3f21
    8774:	e5830040 	str	r0, [r3, #64]	; 0x40
    8778:	e12fff1e 	bx	lr

0000877c <uart_get_byte>:
    877c:	e3a02a05 	mov	r2, #20480	; 0x5000
    8780:	e3432f21 	movt	r2, #16161	; 0x3f21
    8784:	e5923048 	ldr	r3, [r2, #72]	; 0x48
    8788:	e2033006 	and	r3, r3, #6
    878c:	e3530004 	cmp	r3, #4
    8790:	1afffffb 	bne	8784 <uart_get_byte+0x8>
    8794:	e3a03a05 	mov	r3, #20480	; 0x5000
    8798:	e3433f21 	movt	r3, #16161	; 0x3f21
    879c:	e5930040 	ldr	r0, [r3, #64]	; 0x40
    87a0:	e6ef0070 	uxtb	r0, r0
    87a4:	e12fff1e 	bx	lr

000087a8 <i2c_master_init>:
    87a8:	e92d4008 	push	{r3, lr}
    87ac:	e3a00002 	mov	r0, #2
    87b0:	e3a01000 	mov	r1, #0
    87b4:	ebfffeb0 	bl	827c <gpio_set_pull>
    87b8:	e3a00003 	mov	r0, #3
    87bc:	e3a01000 	mov	r1, #0
    87c0:	ebfffead 	bl	827c <gpio_set_pull>
    87c4:	e3a00002 	mov	r0, #2
    87c8:	e3a01004 	mov	r1, #4
    87cc:	ebfffe20 	bl	8054 <gpio_config>
    87d0:	e3a00003 	mov	r0, #3
    87d4:	e3a01004 	mov	r1, #4
    87d8:	ebfffe1d 	bl	8054 <gpio_config>
    87dc:	e3a03901 	mov	r3, #16384	; 0x4000
    87e0:	e3433f80 	movt	r3, #16256	; 0x3f80
    87e4:	e3a02902 	mov	r2, #32768	; 0x8000
    87e8:	e5832000 	str	r2, [r3]
    87ec:	e5932000 	ldr	r2, [r3]
    87f0:	e3822030 	orr	r2, r2, #48	; 0x30
    87f4:	e5832000 	str	r2, [r3]
    87f8:	e8bd8008 	pop	{r3, pc}

000087fc <i2c_master_write>:
    87fc:	e3510010 	cmp	r1, #16
    8800:	8a000022 	bhi	8890 <i2c_master_write+0x94>
    8804:	e3120080 	tst	r2, #128	; 0x80
    8808:	1a000022 	bne	8898 <i2c_master_write+0x9c>
    880c:	e3a03901 	mov	r3, #16384	; 0x4000
    8810:	e3433f80 	movt	r3, #16256	; 0x3f80
    8814:	e5831008 	str	r1, [r3, #8]
    8818:	e583200c 	str	r2, [r3, #12]
    881c:	e5932000 	ldr	r2, [r3]
    8820:	e3822030 	orr	r2, r2, #48	; 0x30
    8824:	e5832000 	str	r2, [r3]
    8828:	e3510000 	cmp	r1, #0
    882c:	da000007 	ble	8850 <i2c_master_write+0x54>
    8830:	e1a03000 	mov	r3, r0
    8834:	e0800001 	add	r0, r0, r1
    8838:	e3a01901 	mov	r1, #16384	; 0x4000
    883c:	e3431f80 	movt	r1, #16256	; 0x3f80
    8840:	e4d32001 	ldrb	r2, [r3], #1
    8844:	e5812010 	str	r2, [r1, #16]
    8848:	e1530000 	cmp	r3, r0
    884c:	1afffffb 	bne	8840 <i2c_master_write+0x44>
    8850:	e3a03901 	mov	r3, #16384	; 0x4000
    8854:	e3433f80 	movt	r3, #16256	; 0x3f80
    8858:	e3082080 	movw	r2, #32896	; 0x8080
    885c:	e5832000 	str	r2, [r3]
    8860:	e3a02901 	mov	r2, #16384	; 0x4000
    8864:	e3432f80 	movt	r2, #16256	; 0x3f80
    8868:	e5923004 	ldr	r3, [r2, #4]
    886c:	e3130002 	tst	r3, #2
    8870:	0afffffc 	beq	8868 <i2c_master_write+0x6c>
    8874:	e3a03901 	mov	r3, #16384	; 0x4000
    8878:	e3433f80 	movt	r3, #16256	; 0x3f80
    887c:	e5932004 	ldr	r2, [r3, #4]
    8880:	e3822002 	orr	r2, r2, #2
    8884:	e5832004 	str	r2, [r3, #4]
    8888:	e3a00000 	mov	r0, #0
    888c:	e12fff1e 	bx	lr
    8890:	e3a000ff 	mov	r0, #255	; 0xff
    8894:	e12fff1e 	bx	lr
    8898:	e3a000ff 	mov	r0, #255	; 0xff
    889c:	e12fff1e 	bx	lr

000088a0 <i2c_master_read>:
    88a0:	e3510010 	cmp	r1, #16
    88a4:	8a000020 	bhi	892c <i2c_master_read+0x8c>
    88a8:	e3120080 	tst	r2, #128	; 0x80
    88ac:	1a000020 	bne	8934 <i2c_master_read+0x94>
    88b0:	e3a03901 	mov	r3, #16384	; 0x4000
    88b4:	e3433f80 	movt	r3, #16256	; 0x3f80
    88b8:	e5831008 	str	r1, [r3, #8]
    88bc:	e583200c 	str	r2, [r3, #12]
    88c0:	e5932000 	ldr	r2, [r3]
    88c4:	e3822030 	orr	r2, r2, #48	; 0x30
    88c8:	e5832000 	str	r2, [r3]
    88cc:	e3082081 	movw	r2, #32897	; 0x8081
    88d0:	e5832000 	str	r2, [r3]
    88d4:	e3a02901 	mov	r2, #16384	; 0x4000
    88d8:	e3432f80 	movt	r2, #16256	; 0x3f80
    88dc:	e5923004 	ldr	r3, [r2, #4]
    88e0:	e3130002 	tst	r3, #2
    88e4:	0afffffc 	beq	88dc <i2c_master_read+0x3c>
    88e8:	e3510000 	cmp	r1, #0
    88ec:	da000007 	ble	8910 <i2c_master_read+0x70>
    88f0:	e1a03000 	mov	r3, r0
    88f4:	e0800001 	add	r0, r0, r1
    88f8:	e3a0c901 	mov	ip, #16384	; 0x4000
    88fc:	e343cf80 	movt	ip, #16256	; 0x3f80
    8900:	e59c2010 	ldr	r2, [ip, #16]
    8904:	e4c32001 	strb	r2, [r3], #1
    8908:	e1530000 	cmp	r3, r0
    890c:	1afffffb 	bne	8900 <i2c_master_read+0x60>
    8910:	e3a03901 	mov	r3, #16384	; 0x4000
    8914:	e3433f80 	movt	r3, #16256	; 0x3f80
    8918:	e5932004 	ldr	r2, [r3, #4]
    891c:	e3822002 	orr	r2, r2, #2
    8920:	e5832004 	str	r2, [r3, #4]
    8924:	e6ef0071 	uxtb	r0, r1
    8928:	e12fff1e 	bx	lr
    892c:	e3a000ff 	mov	r0, #255	; 0xff
    8930:	e12fff1e 	bx	lr
    8934:	e3a000ff 	mov	r0, #255	; 0xff
    8938:	e12fff1e 	bx	lr

0000893c <adc_init>:
    893c:	e92d4008 	push	{r3, lr}
    8940:	e30005dc 	movw	r0, #1500	; 0x5dc
    8944:	ebffff97 	bl	87a8 <i2c_master_init>
    8948:	e8bd8008 	pop	{r3, pc}

0000894c <adc_read>:
    894c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8950:	e24dd014 	sub	sp, sp, #20
    8954:	e3500000 	cmp	r0, #0
    8958:	1a00000a 	bne	8988 <adc_read+0x3c>
    895c:	e3093014 	movw	r3, #36884	; 0x9014
    8960:	e3403000 	movt	r3, #0
    8964:	e1d320b0 	ldrh	r2, [r3]
    8968:	e5d33002 	ldrb	r3, [r3, #2]
    896c:	e1cd20b4 	strh	r2, [sp, #4]
    8970:	e5cd3006 	strb	r3, [sp, #6]
    8974:	e28d0004 	add	r0, sp, #4
    8978:	e3a01003 	mov	r1, #3
    897c:	e3a02049 	mov	r2, #73	; 0x49
    8980:	ebffff9d 	bl	87fc <i2c_master_write>
    8984:	ea00000c 	b	89bc <adc_read+0x70>
    8988:	e3500001 	cmp	r0, #1
    898c:	130f0fff 	movwne	r0, #65535	; 0xffff
    8990:	1a000018 	bne	89f8 <adc_read+0xac>
    8994:	e3093014 	movw	r3, #36884	; 0x9014
    8998:	e3403000 	movt	r3, #0
    899c:	e1f320b4 	ldrh	r2, [r3, #4]!
    89a0:	e5d33002 	ldrb	r3, [r3, #2]
    89a4:	e1cd20b4 	strh	r2, [sp, #4]
    89a8:	e5cd3006 	strb	r3, [sp, #6]
    89ac:	e28d0004 	add	r0, sp, #4
    89b0:	e3a01003 	mov	r1, #3
    89b4:	e3a02049 	mov	r2, #73	; 0x49
    89b8:	ebffff8f 	bl	87fc <i2c_master_write>
    89bc:	e28d0010 	add	r0, sp, #16
    89c0:	e3a03000 	mov	r3, #0
    89c4:	e5603004 	strb	r3, [r0, #-4]!
    89c8:	e3a01001 	mov	r1, #1
    89cc:	e3a02049 	mov	r2, #73	; 0x49
    89d0:	ebffff89 	bl	87fc <i2c_master_write>
    89d4:	e28d0008 	add	r0, sp, #8
    89d8:	e3a01002 	mov	r1, #2
    89dc:	e3a02049 	mov	r2, #73	; 0x49
    89e0:	ebffffae 	bl	88a0 <i2c_master_read>
    89e4:	e5dd0008 	ldrb	r0, [sp, #8]
    89e8:	e5dd3009 	ldrb	r3, [sp, #9]
    89ec:	e1a03223 	lsr	r3, r3, #4
    89f0:	e0830200 	add	r0, r3, r0, lsl #4
    89f4:	eaffffff 	b	89f8 <adc_read+0xac>
    89f8:	e28dd014 	add	sp, sp, #20
    89fc:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00008a00 <delay_cycles>:
    8a00:	e2500001 	subs	r0, r0, #1
    8a04:	1afffffd 	bne	8a00 <delay_cycles>
    8a08:	e1a0f00e 	mov	pc, lr

00008a0c <read_cpsr>:
    8a0c:	e10f0000 	mrs	r0, CPSR
    8a10:	e1a0f00e 	mov	pc, lr

00008a14 <write_cpsr>:
    8a14:	e129f000 	msr	CPSR_fc, r0
    8a18:	e1a0f00e 	mov	pc, lr

00008a1c <disable_interrupts>:
    8a1c:	e10f0000 	mrs	r0, CPSR
    8a20:	e3a01d07 	mov	r1, #448	; 0x1c0
    8a24:	e1800001 	orr	r0, r0, r1
    8a28:	e129f000 	msr	CPSR_fc, r0
    8a2c:	e1a0f00e 	mov	pc, lr

00008a30 <enable_interrupts>:
    8a30:	e10f0000 	mrs	r0, CPSR
    8a34:	e3a01d07 	mov	r1, #448	; 0x1c0
    8a38:	e1c00001 	bic	r0, r0, r1
    8a3c:	e129f000 	msr	CPSR_fc, r0
    8a40:	e1a0f00e 	mov	pc, lr

00008a44 <__aeabi_uldivmod>:
    8a44:	e3530000 	cmp	r3, #0
    8a48:	03520000 	cmpeq	r2, #0
    8a4c:	1a000004 	bne	8a64 <__aeabi_uldivmod+0x20>
    8a50:	e3510000 	cmp	r1, #0
    8a54:	03500000 	cmpeq	r0, #0
    8a58:	13e01000 	mvnne	r1, #0
    8a5c:	13e00000 	mvnne	r0, #0
    8a60:	ea000027 	b	8b04 <__aeabi_idiv0>
    8a64:	e24dd008 	sub	sp, sp, #8
    8a68:	e92d6000 	push	{sp, lr}
    8a6c:	eb000014 	bl	8ac4 <__gnu_uldivmod_helper>
    8a70:	e59de004 	ldr	lr, [sp, #4]
    8a74:	e28dd008 	add	sp, sp, #8
    8a78:	e8bd000c 	pop	{r2, r3}
    8a7c:	e12fff1e 	bx	lr

00008a80 <__gnu_ldivmod_helper>:
    8a80:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8a84:	e59d6020 	ldr	r6, [sp, #32]
    8a88:	e1a07002 	mov	r7, r2
    8a8c:	e1a0a003 	mov	sl, r3
    8a90:	e1a04000 	mov	r4, r0
    8a94:	e1a05001 	mov	r5, r1
    8a98:	eb00001a 	bl	8b08 <__divdi3>
    8a9c:	e1a03000 	mov	r3, r0
    8aa0:	e0020197 	mul	r2, r7, r1
    8aa4:	e0898097 	umull	r8, r9, r7, r0
    8aa8:	e023239a 	mla	r3, sl, r3, r2
    8aac:	e0544008 	subs	r4, r4, r8
    8ab0:	e0839009 	add	r9, r3, r9
    8ab4:	e0c55009 	sbc	r5, r5, r9
    8ab8:	e8860030 	stm	r6, {r4, r5}
    8abc:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    8ac0:	e12fff1e 	bx	lr

00008ac4 <__gnu_uldivmod_helper>:
    8ac4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8ac8:	e59d5018 	ldr	r5, [sp, #24]
    8acc:	e1a04002 	mov	r4, r2
    8ad0:	e1a08003 	mov	r8, r3
    8ad4:	e1a06000 	mov	r6, r0
    8ad8:	e1a07001 	mov	r7, r1
    8adc:	eb000067 	bl	8c80 <__udivdi3>
    8ae0:	e0080890 	mul	r8, r0, r8
    8ae4:	e0832490 	umull	r2, r3, r0, r4
    8ae8:	e0248491 	mla	r4, r1, r4, r8
    8aec:	e0566002 	subs	r6, r6, r2
    8af0:	e0843003 	add	r3, r4, r3
    8af4:	e0c77003 	sbc	r7, r7, r3
    8af8:	e88500c0 	stm	r5, {r6, r7}
    8afc:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    8b00:	e12fff1e 	bx	lr

00008b04 <__aeabi_idiv0>:
    8b04:	e12fff1e 	bx	lr

00008b08 <__divdi3>:
    8b08:	e3510000 	cmp	r1, #0
    8b0c:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8b10:	a1a04000 	movge	r4, r0
    8b14:	a1a05001 	movge	r5, r1
    8b18:	a3a0a000 	movge	sl, #0
    8b1c:	ba000053 	blt	8c70 <__divdi3+0x168>
    8b20:	e3530000 	cmp	r3, #0
    8b24:	a1a08002 	movge	r8, r2
    8b28:	a1a09003 	movge	r9, r3
    8b2c:	ba00004b 	blt	8c60 <__divdi3+0x158>
    8b30:	e1550009 	cmp	r5, r9
    8b34:	01540008 	cmpeq	r4, r8
    8b38:	33a02000 	movcc	r2, #0
    8b3c:	33a03000 	movcc	r3, #0
    8b40:	3a00003b 	bcc	8c34 <__divdi3+0x12c>
    8b44:	e1a01009 	mov	r1, r9
    8b48:	e1a00008 	mov	r0, r8
    8b4c:	eb000093 	bl	8da0 <__clzdi2>
    8b50:	e1a01005 	mov	r1, r5
    8b54:	e1a0b000 	mov	fp, r0
    8b58:	e1a00004 	mov	r0, r4
    8b5c:	eb00008f 	bl	8da0 <__clzdi2>
    8b60:	e060000b 	rsb	r0, r0, fp
    8b64:	e240e020 	sub	lr, r0, #32
    8b68:	e1a07019 	lsl	r7, r9, r0
    8b6c:	e1877e18 	orr	r7, r7, r8, lsl lr
    8b70:	e260c020 	rsb	ip, r0, #32
    8b74:	e1877c38 	orr	r7, r7, r8, lsr ip
    8b78:	e1550007 	cmp	r5, r7
    8b7c:	e1a06018 	lsl	r6, r8, r0
    8b80:	01540006 	cmpeq	r4, r6
    8b84:	e1a01000 	mov	r1, r0
    8b88:	33a02000 	movcc	r2, #0
    8b8c:	33a03000 	movcc	r3, #0
    8b90:	3a000005 	bcc	8bac <__divdi3+0xa4>
    8b94:	e3a08001 	mov	r8, #1
    8b98:	e0544006 	subs	r4, r4, r6
    8b9c:	e1a03e18 	lsl	r3, r8, lr
    8ba0:	e1833c38 	orr	r3, r3, r8, lsr ip
    8ba4:	e0c55007 	sbc	r5, r5, r7
    8ba8:	e1a02018 	lsl	r2, r8, r0
    8bac:	e3500000 	cmp	r0, #0
    8bb0:	0a00001f 	beq	8c34 <__divdi3+0x12c>
    8bb4:	e1b070a7 	lsrs	r7, r7, #1
    8bb8:	e1a06066 	rrx	r6, r6
    8bbc:	ea000007 	b	8be0 <__divdi3+0xd8>
    8bc0:	e0544006 	subs	r4, r4, r6
    8bc4:	e0c55007 	sbc	r5, r5, r7
    8bc8:	e0944004 	adds	r4, r4, r4
    8bcc:	e0a55005 	adc	r5, r5, r5
    8bd0:	e2944001 	adds	r4, r4, #1
    8bd4:	e2a55000 	adc	r5, r5, #0
    8bd8:	e2500001 	subs	r0, r0, #1
    8bdc:	0a000006 	beq	8bfc <__divdi3+0xf4>
    8be0:	e1570005 	cmp	r7, r5
    8be4:	01560004 	cmpeq	r6, r4
    8be8:	9afffff4 	bls	8bc0 <__divdi3+0xb8>
    8bec:	e0944004 	adds	r4, r4, r4
    8bf0:	e0a55005 	adc	r5, r5, r5
    8bf4:	e2500001 	subs	r0, r0, #1
    8bf8:	1afffff8 	bne	8be0 <__divdi3+0xd8>
    8bfc:	e261c020 	rsb	ip, r1, #32
    8c00:	e1a00134 	lsr	r0, r4, r1
    8c04:	e0922004 	adds	r2, r2, r4
    8c08:	e241e020 	sub	lr, r1, #32
    8c0c:	e1800c15 	orr	r0, r0, r5, lsl ip
    8c10:	e1a04135 	lsr	r4, r5, r1
    8c14:	e1800e35 	orr	r0, r0, r5, lsr lr
    8c18:	e1a07114 	lsl	r7, r4, r1
    8c1c:	e1877e10 	orr	r7, r7, r0, lsl lr
    8c20:	e1a06110 	lsl	r6, r0, r1
    8c24:	e0a33005 	adc	r3, r3, r5
    8c28:	e1877c30 	orr	r7, r7, r0, lsr ip
    8c2c:	e0522006 	subs	r2, r2, r6
    8c30:	e0c33007 	sbc	r3, r3, r7
    8c34:	e29a0000 	adds	r0, sl, #0
    8c38:	13a00001 	movne	r0, #1
    8c3c:	e3a01000 	mov	r1, #0
    8c40:	e2704000 	rsbs	r4, r0, #0
    8c44:	e2e15000 	rsc	r5, r1, #0
    8c48:	e0222004 	eor	r2, r2, r4
    8c4c:	e0233005 	eor	r3, r3, r5
    8c50:	e0900002 	adds	r0, r0, r2
    8c54:	e0a11003 	adc	r1, r1, r3
    8c58:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8c5c:	e12fff1e 	bx	lr
    8c60:	e2728000 	rsbs	r8, r2, #0
    8c64:	e1e0a00a 	mvn	sl, sl
    8c68:	e2e39000 	rsc	r9, r3, #0
    8c6c:	eaffffaf 	b	8b30 <__divdi3+0x28>
    8c70:	e2704000 	rsbs	r4, r0, #0
    8c74:	e2e15000 	rsc	r5, r1, #0
    8c78:	e3e0a000 	mvn	sl, #0
    8c7c:	eaffffa7 	b	8b20 <__divdi3+0x18>

00008c80 <__udivdi3>:
    8c80:	e1510003 	cmp	r1, r3
    8c84:	01500002 	cmpeq	r0, r2
    8c88:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8c8c:	e1a04000 	mov	r4, r0
    8c90:	e1a05001 	mov	r5, r1
    8c94:	e1a08002 	mov	r8, r2
    8c98:	e1a09003 	mov	r9, r3
    8c9c:	33a00000 	movcc	r0, #0
    8ca0:	33a01000 	movcc	r1, #0
    8ca4:	3a00003b 	bcc	8d98 <__udivdi3+0x118>
    8ca8:	e1a01003 	mov	r1, r3
    8cac:	e1a00002 	mov	r0, r2
    8cb0:	eb00003a 	bl	8da0 <__clzdi2>
    8cb4:	e1a01005 	mov	r1, r5
    8cb8:	e1a0a000 	mov	sl, r0
    8cbc:	e1a00004 	mov	r0, r4
    8cc0:	eb000036 	bl	8da0 <__clzdi2>
    8cc4:	e060300a 	rsb	r3, r0, sl
    8cc8:	e243e020 	sub	lr, r3, #32
    8ccc:	e1a07319 	lsl	r7, r9, r3
    8cd0:	e1877e18 	orr	r7, r7, r8, lsl lr
    8cd4:	e263c020 	rsb	ip, r3, #32
    8cd8:	e1877c38 	orr	r7, r7, r8, lsr ip
    8cdc:	e1550007 	cmp	r5, r7
    8ce0:	e1a06318 	lsl	r6, r8, r3
    8ce4:	01540006 	cmpeq	r4, r6
    8ce8:	e1a02003 	mov	r2, r3
    8cec:	33a00000 	movcc	r0, #0
    8cf0:	33a01000 	movcc	r1, #0
    8cf4:	3a000005 	bcc	8d10 <__udivdi3+0x90>
    8cf8:	e3a08001 	mov	r8, #1
    8cfc:	e0544006 	subs	r4, r4, r6
    8d00:	e1a01e18 	lsl	r1, r8, lr
    8d04:	e1811c38 	orr	r1, r1, r8, lsr ip
    8d08:	e0c55007 	sbc	r5, r5, r7
    8d0c:	e1a00318 	lsl	r0, r8, r3
    8d10:	e3530000 	cmp	r3, #0
    8d14:	0a00001f 	beq	8d98 <__udivdi3+0x118>
    8d18:	e1b070a7 	lsrs	r7, r7, #1
    8d1c:	e1a06066 	rrx	r6, r6
    8d20:	ea000007 	b	8d44 <__udivdi3+0xc4>
    8d24:	e0544006 	subs	r4, r4, r6
    8d28:	e0c55007 	sbc	r5, r5, r7
    8d2c:	e0944004 	adds	r4, r4, r4
    8d30:	e0a55005 	adc	r5, r5, r5
    8d34:	e2944001 	adds	r4, r4, #1
    8d38:	e2a55000 	adc	r5, r5, #0
    8d3c:	e2533001 	subs	r3, r3, #1
    8d40:	0a000006 	beq	8d60 <__udivdi3+0xe0>
    8d44:	e1570005 	cmp	r7, r5
    8d48:	01560004 	cmpeq	r6, r4
    8d4c:	9afffff4 	bls	8d24 <__udivdi3+0xa4>
    8d50:	e0944004 	adds	r4, r4, r4
    8d54:	e0a55005 	adc	r5, r5, r5
    8d58:	e2533001 	subs	r3, r3, #1
    8d5c:	1afffff8 	bne	8d44 <__udivdi3+0xc4>
    8d60:	e0948000 	adds	r8, r4, r0
    8d64:	e0a59001 	adc	r9, r5, r1
    8d68:	e1a03234 	lsr	r3, r4, r2
    8d6c:	e2621020 	rsb	r1, r2, #32
    8d70:	e2420020 	sub	r0, r2, #32
    8d74:	e1833115 	orr	r3, r3, r5, lsl r1
    8d78:	e1a0c235 	lsr	ip, r5, r2
    8d7c:	e1833035 	orr	r3, r3, r5, lsr r0
    8d80:	e1a0721c 	lsl	r7, ip, r2
    8d84:	e1877013 	orr	r7, r7, r3, lsl r0
    8d88:	e1a06213 	lsl	r6, r3, r2
    8d8c:	e1877133 	orr	r7, r7, r3, lsr r1
    8d90:	e0580006 	subs	r0, r8, r6
    8d94:	e0c91007 	sbc	r1, r9, r7
    8d98:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    8d9c:	e12fff1e 	bx	lr

00008da0 <__clzdi2>:
    8da0:	e92d4010 	push	{r4, lr}
    8da4:	e3510000 	cmp	r1, #0
    8da8:	1a000002 	bne	8db8 <__clzdi2+0x18>
    8dac:	eb000005 	bl	8dc8 <__clzsi2>
    8db0:	e2800020 	add	r0, r0, #32
    8db4:	ea000001 	b	8dc0 <__clzdi2+0x20>
    8db8:	e1a00001 	mov	r0, r1
    8dbc:	eb000001 	bl	8dc8 <__clzsi2>
    8dc0:	e8bd4010 	pop	{r4, lr}
    8dc4:	e12fff1e 	bx	lr

00008dc8 <__clzsi2>:
    8dc8:	e3a0101c 	mov	r1, #28
    8dcc:	e3500801 	cmp	r0, #65536	; 0x10000
    8dd0:	21a00820 	lsrcs	r0, r0, #16
    8dd4:	22411010 	subcs	r1, r1, #16
    8dd8:	e3500c01 	cmp	r0, #256	; 0x100
    8ddc:	21a00420 	lsrcs	r0, r0, #8
    8de0:	22411008 	subcs	r1, r1, #8
    8de4:	e3500010 	cmp	r0, #16
    8de8:	21a00220 	lsrcs	r0, r0, #4
    8dec:	22411004 	subcs	r1, r1, #4
    8df0:	e28f2008 	add	r2, pc, #8
    8df4:	e7d20000 	ldrb	r0, [r2, r0]
    8df8:	e0800001 	add	r0, r0, r1
    8dfc:	e12fff1e 	bx	lr
    8e00:	02020304 	andeq	r0, r2, #4, 6	; 0x10000000
    8e04:	01010101 	tsteq	r1, r1, lsl #2
	...

Disassembly of section .rodata:

00009000 <__rodata_start>:
    9000:	33323130 	teqcc	r2, #48, 2
    9004:	37363534 			; <UNDEFINED> instruction: 0x37363534
    9008:	62613938 	rsbvs	r3, r1, #56, 18	; 0xe0000
    900c:	66656463 	strbtvs	r6, [r5], -r3, ror #8
    9010:	00000000 	andeq	r0, r0, r0

00009014 <.LANCHOR0>:
    9014:	0083f001 	addeq	pc, r3, r1
    9018:	Address 0x00009018 is out of bounds.


Disassembly of section .rodata.str1.4:

0000901c <.rodata.str1.4>:
    901c:	65746e45 	ldrbvs	r6, [r4, #-3653]!	; 0xe45
    9020:	20612072 	rsbcs	r2, r1, r2, ror r0
    9024:	736e6573 	cmnvc	lr, #482344960	; 0x1cc00000
    9028:	7420726f 	strtvc	r7, [r0], #-623	; 0x26f
    902c:	6173206f 	cmnvs	r3, pc, rrx
    9030:	656c706d 	strbvs	r7, [ip, #-109]!	; 0x6d
    9034:	00000a3a 	andeq	r0, r0, sl, lsr sl
    9038:	6867694c 	stmdavs	r7!, {r2, r3, r6, r8, fp, sp, lr}^
    903c:	25203a74 	strcs	r3, [r0, #-2676]!	; 0xa74
    9040:	00000a64 	andeq	r0, r0, r4, ror #20
    9044:	69647541 	stmdbvs	r4!, {r0, r6, r8, sl, ip, sp, lr}^
    9048:	25203a6f 	strcs	r3, [r0, #-2671]!	; 0xa6f
    904c:	00000a64 	andeq	r0, r0, r4, ror #20
    9050:	70616c43 	rsbvc	r6, r1, r3, asr #24
    9054:	74656420 	strbtvc	r6, [r5], #-1056	; 0x420
    9058:	65746365 	ldrbvs	r6, [r4, #-869]!	; 0x365
    905c:	000a2164 	andeq	r2, sl, r4, ror #2
    9060:	00000030 	andeq	r0, r0, r0, lsr r0
    9064:	00007830 	andeq	r7, r0, r0, lsr r8

Disassembly of section .ARM.exidx:

00009068 <.ARM.exidx>:
    9068:	7ffffaa0 	svcvc	0x00fffaa0
    906c:	00000001 	andeq	r0, r0, r1

Disassembly of section .data:

0000a000 <__data_start>:
    a000:	3f200000 	svccc	0x00200000

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000162 	andeq	r0, r0, r2, ror #2
   4:	00000004 	andeq	r0, r0, r4
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000ae 	andeq	r0, r0, lr, lsr #1
  10:	00014d01 	andeq	r4, r1, r1, lsl #26
  14:	00008300 	andeq	r8, r0, r0, lsl #6
  18:	00805400 	addeq	r5, r0, r0, lsl #8
  1c:	00032000 	andeq	r2, r3, r0
  20:	00000000 	andeq	r0, r0, r0
  24:	08010200 	stmdaeq	r1, {r9}
  28:	00000062 	andeq	r0, r0, r2, rrx
  2c:	43050202 	movwmi	r0, #20994	; 0x5202
  30:	03000001 	movweq	r0, #1
  34:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
  38:	08020074 	stmdaeq	r2, {r2, r4, r5, r6}
  3c:	00000005 	andeq	r0, r0, r5
  40:	00510400 	subseq	r0, r1, r0, lsl #8
  44:	16020000 	strne	r0, [r2], -r0
  48:	0000004c 	andeq	r0, r0, ip, asr #32
  4c:	59080102 	stmdbpl	r8, {r1, r8}
  50:	02000000 	andeq	r0, r0, #0
  54:	00700702 	rsbseq	r0, r0, r2, lsl #14
  58:	67040000 	strvs	r0, [r4, -r0]
  5c:	02000000 	andeq	r0, r0, #0
  60:	0000651a 	andeq	r6, r0, sl, lsl r5
  64:	07040200 	streq	r0, [r4, -r0, lsl #4]
  68:	00000034 	andeq	r0, r0, r4, lsr r0
  6c:	2a070802 	bcs	1c207c <__end+0x9607c>
  70:	05000000 	streq	r0, [r0, #-0]
  74:	00000137 	andeq	r0, r0, r7, lsr r1
  78:	80545401 	subshi	r5, r4, r1, lsl #8
  7c:	01200000 	teqeq	r0, r0
  80:	9c010000 	stcls	0, cr0, [r1], {-0}
  84:	000000cf 	andeq	r0, r0, pc, asr #1
  88:	6e697006 	cdpvs	0, 6, cr7, cr9, cr6, {0}
  8c:	41540100 	cmpmi	r4, r0, lsl #2
  90:	02000000 	andeq	r0, r0, #0
  94:	66066791 			; <UNDEFINED> instruction: 0x66066791
  98:	01006e75 	tsteq	r0, r5, ror lr
  9c:	00004154 	andeq	r4, r0, r4, asr r1
  a0:	66910200 	ldrvs	r0, [r1], r0, lsl #4
  a4:	67657207 	strbvs	r7, [r5, -r7, lsl #4]!
  a8:	5a590100 	bpl	16404b0 <__user_program+0x13404b0>
  ac:	02000000 	andeq	r0, r0, #0
  b0:	3c087491 	cfstrscc	mvf7, [r8], {145}	; 0x91
  b4:	01000001 	tsteq	r0, r1
  b8:	00005a5b 	andeq	r5, r0, fp, asr sl
  bc:	70910200 	addsvc	r0, r1, r0, lsl #4
  c0:	00004a08 	andeq	r4, r0, r8, lsl #20
  c4:	5a5d0100 	bpl	17404cc <__user_program+0x14404cc>
  c8:	02000000 	andeq	r0, r0, #0
  cc:	05006c91 	streq	r6, [r0, #-3217]	; 0xc91
  d0:	00000021 	andeq	r0, r0, r1, lsr #32
  d4:	81746401 	cmnhi	r4, r1, lsl #8
  d8:	00840000 	addeq	r0, r4, r0
  dc:	9c010000 	stcls	0, cr0, [r1], {-0}
  e0:	000000f3 	strdeq	r0, [r0], -r3
  e4:	6e697006 	cdpvs	0, 6, cr7, cr9, cr6, {0}
  e8:	41640100 	cmnmi	r4, r0, lsl #2
  ec:	02000000 	andeq	r0, r0, #0
  f0:	05007791 	streq	r7, [r0, #-1937]	; 0x791
  f4:	00000041 	andeq	r0, r0, r1, asr #32
  f8:	81f87001 	mvnshi	r7, r1
  fc:	00840000 	addeq	r0, r4, r0
 100:	9c010000 	stcls	0, cr0, [r1], {-0}
 104:	00000117 	andeq	r0, r0, r7, lsl r1
 108:	6e697006 	cdpvs	0, 6, cr7, cr9, cr6, {0}
 10c:	41700100 	cmnmi	r0, r0, lsl #2
 110:	02000000 	andeq	r0, r0, #0
 114:	09007791 	stmdbeq	r0, {r0, r4, r7, r8, r9, sl, ip, sp, lr}
 118:	0000000e 	andeq	r0, r0, lr
 11c:	827c7c01 	rsbshi	r7, ip, #256	; 0x100
 120:	00f80000 	rscseq	r0, r8, r0
 124:	9c010000 	stcls	0, cr0, [r1], {-0}
 128:	00000149 	andeq	r0, r0, r9, asr #2
 12c:	6e697006 	cdpvs	0, 6, cr7, cr9, cr6, {0}
 130:	417c0100 	cmnmi	ip, r0, lsl #2
 134:	02000000 	andeq	r0, r0, #0
 138:	310a7791 			; <UNDEFINED> instruction: 0x310a7791
 13c:	01000001 	tsteq	r0, r1
 140:	0000417c 	andeq	r4, r0, ip, ror r1
 144:	76910200 	ldrvc	r0, [r1], r0, lsl #4
 148:	001c0800 	andseq	r0, ip, r0, lsl #16
 14c:	51010000 	mrspl	r0, (UNDEF: 1)
 150:	0000015a 	andeq	r0, r0, sl, asr r1
 154:	a0000305 	andge	r0, r0, r5, lsl #6
 158:	040b0000 	streq	r0, [fp], #-0
 15c:	00000160 	andeq	r0, r0, r0, ror #2
 160:	00005a0c 	andeq	r5, r0, ip, lsl #20
 164:	02040000 	andeq	r0, r4, #0
 168:	00040000 	andeq	r0, r4, r0
 16c:	000000b7 	strheq	r0, [r0], -r7
 170:	01880104 	orreq	r0, r8, r4, lsl #2
 174:	11010000 	mrsne	r0, (UNDEF: 1)
 178:	83000002 	movwhi	r0, #2
 17c:	74000000 	strvc	r0, [r0], #-0
 180:	c4000083 	strgt	r0, [r0], #-131	; 0x83
 184:	96000000 	strls	r0, [r0], -r0
 188:	02000000 	andeq	r0, r0, #0
 18c:	00620801 	rsbeq	r0, r2, r1, lsl #16
 190:	02020000 	andeq	r0, r2, #0
 194:	00014305 	andeq	r4, r1, r5, lsl #6
 198:	05040300 	streq	r0, [r4, #-768]	; 0x300
 19c:	00746e69 	rsbseq	r6, r4, r9, ror #28
 1a0:	00050802 	andeq	r0, r5, r2, lsl #16
 1a4:	04000000 	streq	r0, [r0], #-0
 1a8:	00000051 	andeq	r0, r0, r1, asr r0
 1ac:	004c1602 	subeq	r1, ip, r2, lsl #12
 1b0:	01020000 	mrseq	r0, (UNDEF: 2)
 1b4:	00005908 	andeq	r5, r0, r8, lsl #18
 1b8:	02500400 	subseq	r0, r0, #0, 8
 1bc:	18020000 	stmdane	r2, {}	; <UNPREDICTABLE>
 1c0:	0000005e 	andeq	r0, r0, lr, asr r0
 1c4:	70070202 	andvc	r0, r7, r2, lsl #4
 1c8:	02000000 	andeq	r0, r0, #0
 1cc:	00340704 	eorseq	r0, r4, r4, lsl #14
 1d0:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 1d4:	00002a07 	andeq	r2, r0, r7, lsl #20
 1d8:	02440500 	subeq	r0, r4, #0, 10
 1dc:	1a010000 	bne	401e4 <__bss_end+0x351e4>
 1e0:	00008374 	andeq	r8, r0, r4, ror r3
 1e4:	000000c4 	andeq	r0, r0, r4, asr #1
 1e8:	01b89c01 			; <UNDEFINED> instruction: 0x01b89c01
 1ec:	00060000 	andeq	r0, r6, r0
 1f0:	a5000000 	strge	r0, [r0, #-0]
 1f4:	07000001 	streq	r0, [r0, -r1]
 1f8:	0000023c 	andeq	r0, r0, ip, lsr r2
 1fc:	00412101 	subeq	r2, r1, r1, lsl #2
 200:	00000000 	andeq	r0, r0, r0
 204:	18060000 	stmdane	r6, {}	; <UNPREDICTABLE>
 208:	44000000 	strmi	r0, [r0], #-0
 20c:	07000001 	streq	r0, [r0, -r1]
 210:	0000016e 	andeq	r0, r0, lr, ror #2
 214:	00532701 	subseq	r2, r3, r1, lsl #14
 218:	001e0000 	andseq	r0, lr, r0
 21c:	30060000 	andcc	r0, r6, r0
 220:	30000000 	andcc	r0, r0, r0
 224:	08000001 	stmdaeq	r0, {r0}
 228:	006e696d 	rsbeq	r6, lr, sp, ror #18
 22c:	00532901 	subseq	r2, r3, r1, lsl #18
 230:	003d0000 	eorseq	r0, sp, r0
 234:	6d080000 	stcvs	0, cr0, [r8, #-0]
 238:	01007861 	tsteq	r0, r1, ror #16
 23c:	0000532a 	andeq	r5, r0, sl, lsr #6
 240:	00006900 	andeq	r6, r0, r0, lsl #18
 244:	00690800 	rsbeq	r0, r9, r0, lsl #16
 248:	00332b01 	eorseq	r2, r3, r1, lsl #22
 24c:	00930000 	addseq	r0, r3, r0
 250:	dc090000 	stcle	0, cr0, [r9], {-0}
 254:	28000083 	stmdacs	r0, {r0, r1, r7}
 258:	19000000 	stmdbne	r0, {}	; <UNPREDICTABLE>
 25c:	08000001 	stmdaeq	r0, {r0}
 260:	006c6176 	rsbeq	r6, ip, r6, ror r1
 264:	00532d01 	subseq	r2, r3, r1, lsl #26
 268:	00d70000 	sbcseq	r0, r7, r0
 26c:	e80a0000 	stmda	sl, {}	; <UNPREDICTABLE>
 270:	b8000083 	stmdalt	r0, {r0, r1, r7}
 274:	0b000001 	bleq	280 <__start-0x7d80>
 278:	77025001 	strvc	r5, [r2, -r1]
 27c:	0a000000 	beq	284 <__start-0x7d7c>
 280:	00008420 	andeq	r8, r0, r0, lsr #8
 284:	000001cd 	andeq	r0, r0, sp, asr #3
 288:	0251010b 	subseq	r0, r1, #-1073741822	; 0xc0000002
 28c:	010b0074 	tsteq	fp, r4, ror r0
 290:	00780250 	rsbseq	r0, r8, r0, asr r2
 294:	340a0000 	strcc	r0, [sl], #-0
 298:	cd000084 	stcgt	0, cr0, [r0, #-528]	; 0xfffffdf0
 29c:	0b000001 	bleq	2a8 <__start-0x7d58>
 2a0:	03055001 	movweq	r5, #20481	; 0x5001
 2a4:	00009050 	andeq	r9, r0, r0, asr r0
 2a8:	a4090000 	strge	r0, [r9], #-0
 2ac:	18000083 	stmdane	r0, {r0, r1, r7}
 2b0:	87000000 	strhi	r0, [r0, -r0]
 2b4:	07000001 	streq	r0, [r0, -r1]
 2b8:	00000207 	andeq	r0, r0, r7, lsl #4
 2bc:	00532301 	subseq	r2, r3, r1, lsl #6
 2c0:	00ea0000 	rsceq	r0, sl, r0
 2c4:	ac0c0000 	stcge	0, cr0, [ip], {-0}
 2c8:	b8000083 	stmdalt	r0, {r0, r1, r7}
 2cc:	73000001 	movwvc	r0, #1
 2d0:	0b000001 	bleq	2dc <__start-0x7d24>
 2d4:	30015001 	andcc	r5, r1, r1
 2d8:	83bc0a00 			; <UNDEFINED> instruction: 0x83bc0a00
 2dc:	01cd0000 	biceq	r0, sp, r0
 2e0:	010b0000 	mrseq	r0, (UNDEF: 11)
 2e4:	38030550 	stmdacc	r3, {r4, r6, r8, sl}
 2e8:	00000090 	muleq	r0, r0, r0
 2ec:	83980c00 	orrshi	r0, r8, #0, 24
 2f0:	01cd0000 	biceq	r0, sp, r0
 2f4:	019b0000 	orrseq	r0, fp, r0
 2f8:	010b0000 	mrseq	r0, (UNDEF: 11)
 2fc:	007b0250 	rsbseq	r0, fp, r0, asr r2
 300:	839c0d00 	orrshi	r0, ip, #0, 26
 304:	01ee0000 	mvneq	r0, r0
 308:	0d000000 	stceq	0, cr0, [r0, #-0]
 30c:	0000837c 	andeq	r8, r0, ip, ror r3
 310:	000001f9 	strdeq	r0, [r0], -r9
 314:	0083800d 	addeq	r8, r3, sp
 318:	00020000 	andeq	r0, r2, r0
 31c:	590e0000 	stmdbpl	lr, {}	; <UNPREDICTABLE>
 320:	03000002 	movweq	r0, #2
 324:	0000531a 	andeq	r5, r0, sl, lsl r3
 328:	0001cd00 	andeq	ip, r1, r0, lsl #26
 32c:	00410f00 	subeq	r0, r1, r0, lsl #30
 330:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
 334:	00000178 	andeq	r0, r0, r8, ror r1
 338:	00331304 	eorseq	r1, r3, r4, lsl #6
 33c:	01e30000 	mvneq	r0, r0
 340:	e30f0000 	movw	r0, #61440	; 0xf000
 344:	10000001 	andne	r0, r0, r1
 348:	e9041100 	stmdb	r4, {r8, ip}
 34c:	12000001 	andne	r0, r0, #1
 350:	00000025 	andeq	r0, r0, r5, lsr #32
 354:	00016013 	andeq	r6, r1, r3, lsl r0
 358:	412a0500 	teqmi	sl, r0, lsl #10
 35c:	14000000 	strne	r0, [r0], #-0
 360:	00000232 	andeq	r0, r0, r2, lsr r2
 364:	7f141705 	svcvc	0x00141705
 368:	03000001 	movweq	r0, #1
 36c:	02f00012 	rscseq	r0, r0, #18
 370:	00040000 	andeq	r0, r4, r0
 374:	000001be 			; <UNDEFINED> instruction: 0x000001be
 378:	01880104 	orreq	r0, r8, r4, lsl #2
 37c:	a9010000 	stmdbge	r1, {}	; <UNPREDICTABLE>
 380:	83000002 	movwhi	r0, #2
 384:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
 388:	98000084 	stmdals	r0, {r2, r7}
 38c:	68000002 	stmdavs	r0, {r1}
 390:	02000001 	andeq	r0, r0, #1
 394:	00000052 	andeq	r0, r0, r2, asr r0
 398:	00300e02 	eorseq	r0, r0, r2, lsl #28
 39c:	01030000 	mrseq	r0, (UNDEF: 3)
 3a0:	00006208 	andeq	r6, r0, r8, lsl #4
 3a4:	05020300 	streq	r0, [r2, #-768]	; 0x300
 3a8:	00000143 	andeq	r0, r0, r3, asr #2
 3ac:	00006802 	andeq	r6, r0, r2, lsl #16
 3b0:	49120200 	ldmdbmi	r2, {r9}
 3b4:	04000000 	streq	r0, [r0], #-0
 3b8:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 3bc:	08030074 	stmdaeq	r3, {r2, r4, r5, r6}
 3c0:	00000005 	andeq	r0, r0, r5
 3c4:	00510200 	subseq	r0, r1, r0, lsl #4
 3c8:	16020000 	strne	r0, [r2], -r0
 3cc:	00000062 	andeq	r0, r0, r2, rrx
 3d0:	59080103 	stmdbpl	r8, {r0, r1, r8}
 3d4:	03000000 	movweq	r0, #0
 3d8:	00700702 	rsbseq	r0, r0, r2, lsl #14
 3dc:	67020000 	strvs	r0, [r2, -r0]
 3e0:	02000000 	andeq	r0, r0, #0
 3e4:	00007b1a 	andeq	r7, r0, sl, lsl fp
 3e8:	07040300 	streq	r0, [r4, -r0, lsl #6]
 3ec:	00000034 	andeq	r0, r0, r4, lsr r0
 3f0:	00026b02 	andeq	r6, r2, r2, lsl #22
 3f4:	8d1c0200 	lfmhi	f0, 4, [ip, #-0]
 3f8:	03000000 	movweq	r0, #0
 3fc:	002a0708 	eoreq	r0, sl, r8, lsl #14
 400:	76020000 	strvc	r0, [r2], -r0
 404:	03000002 	movweq	r0, #2
 408:	00009f13 	andeq	r9, r0, r3, lsl pc
 40c:	02740500 	rsbseq	r0, r4, #0, 10
 410:	04040000 	streq	r0, [r4], #-0
 414:	0000b600 	andeq	fp, r0, r0, lsl #12
 418:	02d80600 	sbcseq	r0, r8, #0, 12
 41c:	00b60000 	adcseq	r0, r6, r0
 420:	00000000 	andeq	r0, r0, r0
 424:	93080407 	movwls	r0, #33799	; 0x8407
 428:	01000002 	tsteq	r0, r2
 42c:	00843821 	addeq	r3, r4, r1, lsr #16
 430:	0000e000 	andeq	lr, r0, r0
 434:	2a9c0100 	bcs	fe70083c <__user_program+0xfe40083c>
 438:	09000001 	stmdbeq	r0, {r0}
 43c:	000002a4 	andeq	r0, r0, r4, lsr #5
 440:	00572101 	subseq	r2, r7, r1, lsl #2
 444:	00fd0000 	rscseq	r0, sp, r0
 448:	6e0a0000 	cdpvs	0, 0, cr0, cr10, cr0, {0}
 44c:	01006d75 	tsteq	r0, r5, ror sp
 450:	00008221 	andeq	r8, r0, r1, lsr #4
 454:	00011e00 	andeq	r1, r1, r0, lsl #28
 458:	029d0b00 	addseq	r0, sp, #0, 22
 45c:	22010000 	andcs	r0, r1, #0
 460:	0000012a 	andeq	r0, r0, sl, lsr #2
 464:	00000156 	andeq	r0, r0, r6, asr r1
 468:	6675620c 	ldrbtvs	r6, [r5], -ip, lsl #4
 46c:	30230100 	eorcc	r0, r3, r0, lsl #2
 470:	02000001 	andeq	r0, r0, #1
 474:	700d5891 	mulvc	sp, r1, r8
 478:	01007274 	tsteq	r0, r4, ror r2
 47c:	00012a24 	andeq	r2, r1, r4, lsr #20
 480:	00018d00 	andeq	r8, r1, r0, lsl #26
 484:	84ec0e00 	strbthi	r0, [ip], #3584	; 0xe00
 488:	02e60000 	rsceq	r0, r6, #0
 48c:	040e0000 	streq	r0, [lr], #-0
 490:	e6000085 	str	r0, [r0], -r5, lsl #1
 494:	00000002 	andeq	r0, r0, r2
 498:	0025040f 	eoreq	r0, r5, pc, lsl #8
 49c:	25100000 	ldrcs	r0, [r0, #-0]
 4a0:	40000000 	andmi	r0, r0, r0
 4a4:	11000001 	tstne	r0, r1
 4a8:	00000140 	andeq	r0, r0, r0, asr #2
 4ac:	04030007 	streq	r0, [r3], #-7
 4b0:	0002cf07 	andeq	ip, r2, r7, lsl #30
 4b4:	01781200 	cmneq	r8, r0, lsl #4
 4b8:	3f010000 	svccc	0x00010000
 4bc:	00000049 	andeq	r0, r0, r9, asr #32
 4c0:	00008518 	andeq	r8, r0, r8, lsl r5
 4c4:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
 4c8:	02b59c01 	adcseq	r9, r5, #256	; 0x100
 4cc:	660a0000 	strvs	r0, [sl], -r0
 4d0:	0100746d 	tsteq	r0, sp, ror #8
 4d4:	0002b53f 	andeq	fp, r2, pc, lsr r5
 4d8:	0001f500 	andeq	pc, r1, r0, lsl #10
 4dc:	ca141300 	bgt	5050e4 <__user_program+0x2050e4>
 4e0:	01000002 	tsteq	r0, r2
 4e4:	00009440 	andeq	r9, r0, r0, asr #8
 4e8:	54910200 	ldrpl	r0, [r1], #512	; 0x200
 4ec:	00004815 	andeq	r4, r0, r5, lsl r8
 4f0:	0001a700 	andeq	sl, r1, r0, lsl #14
 4f4:	756e0d00 	strbvc	r0, [lr, #-3328]!	; 0xd00
 4f8:	6101006d 	tstvs	r1, sp, rrx
 4fc:	00000070 	andeq	r0, r0, r0, ror r0
 500:	0000022c 	andeq	r0, r0, ip, lsr #4
 504:	00863016 	addeq	r3, r6, r6, lsl r0
 508:	0000b800 	andeq	fp, r0, r0, lsl #16
 50c:	50011700 	andpl	r1, r1, r0, lsl #14
 510:	00007802 	andeq	r7, r0, r2, lsl #16
 514:	00601500 	rsbeq	r1, r0, r0, lsl #10
 518:	01d00000 	bicseq	r0, r0, r0
 51c:	6e0d0000 	cdpvs	0, 0, cr0, cr13, cr0, {0}
 520:	01006d75 	tsteq	r0, r5, ror sp
 524:	00007068 	andeq	r7, r0, r8, rrx
 528:	00024b00 	andeq	r4, r2, r0, lsl #22
 52c:	86501600 	ldrbhi	r1, [r0], -r0, lsl #12
 530:	00b80000 	adcseq	r0, r8, r0
 534:	01170000 	tsteq	r7, r0
 538:	00770250 	rsbseq	r0, r7, r0, asr r2
 53c:	ac180000 	ldcge	0, cr0, [r8], {-0}
 540:	48000085 	stmdami	r0, {r0, r2, r7}
 544:	23000000 	movwcs	r0, #0
 548:	0d000002 	stceq	0, cr0, [r0, #-8]
 54c:	006d756e 	rsbeq	r7, sp, lr, ror #10
 550:	003e5001 	eorseq	r5, lr, r1
 554:	026a0000 	rsbeq	r0, sl, #0
 558:	cc190000 	ldcgt	0, cr0, [r9], {-0}
 55c:	e6000085 	str	r0, [r0], -r5, lsl #1
 560:	00000002 	andeq	r0, r0, r2
 564:	17000002 	strne	r0, [r0, -r2]
 568:	08025001 	stmdaeq	r2, {r0, ip, lr}
 56c:	dc19002d 	ldcle	0, cr0, [r9], {45}	; 0x2d
 570:	b8000085 	stmdalt	r0, {r0, r2, r7}
 574:	13000000 	movwne	r0, #0
 578:	17000002 	strne	r0, [r0, -r2]
 57c:	3a015001 	bcc	54588 <__bss_end+0x49588>
 580:	85f01600 	ldrbhi	r1, [r0, #1536]!	; 0x600
 584:	00b80000 	adcseq	r0, r8, r0
 588:	01170000 	tsteq	r7, r0
 58c:	003a0150 	eorseq	r0, sl, r0, asr r1
 590:	85f41800 	ldrbhi	r1, [r4, #2048]!	; 0x800
 594:	00200000 	eoreq	r0, r0, r0
 598:	024f0000 	subeq	r0, pc, #0
 59c:	6e0d0000 	cdpvs	0, 0, cr0, cr13, cr0, {0}
 5a0:	01006d75 	tsteq	r0, r5, ror sp
 5a4:	0000705b 	andeq	r7, r0, fp, asr r0
 5a8:	00027d00 	andeq	r7, r2, r0, lsl #26
 5ac:	86101600 	ldrhi	r1, [r0], -r0, lsl #12
 5b0:	00b80000 	adcseq	r0, r8, r0
 5b4:	01170000 	tsteq	r7, r0
 5b8:	003a0150 	eorseq	r0, sl, r0, asr r1
 5bc:	86541800 	ldrbhi	r1, [r4], -r0, lsl #16
 5c0:	00300000 	eorseq	r0, r0, r0
 5c4:	02750000 	rsbseq	r0, r5, #0
 5c8:	620b0000 	andvs	r0, fp, #0
 5cc:	01000002 	tsteq	r0, r2
 5d0:	00012a6e 	andeq	r2, r1, lr, ror #20
 5d4:	00029c00 	andeq	r9, r2, r0, lsl #24
 5d8:	86740e00 	ldrbthi	r0, [r4], -r0, lsl #28
 5dc:	02e60000 	rsceq	r0, r6, #0
 5e0:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
 5e4:	00008684 	andeq	r8, r0, r4, lsl #13
 5e8:	00000018 	andeq	r0, r0, r8, lsl r0
 5ec:	0000029b 	muleq	r0, fp, r2
 5f0:	0001690b 	andeq	r6, r1, fp, lsl #18
 5f4:	3e770100 	rpwccs	f0, f7, f0
 5f8:	bc000000 	stclt	0, cr0, [r0], {-0}
 5fc:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
 600:	00008698 	muleq	r0, r8, r6
 604:	000002e6 	andeq	r0, r0, r6, ror #5
 608:	85500e00 	ldrbhi	r0, [r0, #-3584]	; 0xe00
 60c:	02e60000 	rsceq	r0, r6, #0
 610:	a4160000 	ldrge	r0, [r6], #-0
 614:	e6000086 	str	r0, [r0], -r6, lsl #1
 618:	17000002 	strne	r0, [r0, -r2]
 61c:	08025001 	stmdaeq	r2, {r0, ip, lr}
 620:	0f000025 	svceq	0x00000025
 624:	0002bb04 	andeq	fp, r2, r4, lsl #22
 628:	00301a00 	eorseq	r1, r0, r0, lsl #20
 62c:	30100000 	andscc	r0, r0, r0
 630:	d0000000 	andle	r0, r0, r0
 634:	11000002 	tstne	r0, r2
 638:	00000140 	andeq	r0, r0, r0, asr #2
 63c:	7e140010 	mrcvc	0, 0, r0, cr4, cr0, {0}
 640:	01000002 	tsteq	r0, r2
 644:	0002e118 	andeq	lr, r2, r8, lsl r1
 648:	00030500 	andeq	r0, r3, r0, lsl #10
 64c:	1a000090 	bne	894 <__start-0x776c>
 650:	000002c0 	andeq	r0, r0, r0, asr #5
 654:	0002851b 	andeq	r8, r2, fp, lsl r5
 658:	1c230500 	cfstr32ne	mvfx0, [r3], #-0
 65c:	00000057 	andeq	r0, r0, r7, asr r0
 660:	01530000 	cmpeq	r3, r0
 664:	00040000 	andeq	r0, r4, r0
 668:	00000328 	andeq	r0, r0, r8, lsr #6
 66c:	01880104 	orreq	r0, r8, r4, lsl #2
 670:	dd010000 	stcle	0, cr0, [r1, #-0]
 674:	83000002 	movwhi	r0, #2
 678:	d0000000 	andle	r0, r0, r0
 67c:	d8000086 	stmdale	r0, {r1, r2, r7}
 680:	66000000 	strvs	r0, [r0], -r0
 684:	02000002 	andeq	r0, r0, #2
 688:	00620801 	rsbeq	r0, r2, r1, lsl #16
 68c:	02020000 	andeq	r0, r2, #0
 690:	00014305 	andeq	r4, r1, r5, lsl #6
 694:	05040300 	streq	r0, [r4, #-768]	; 0x300
 698:	00746e69 	rsbseq	r6, r4, r9, ror #28
 69c:	00050802 	andeq	r0, r5, r2, lsl #16
 6a0:	04000000 	streq	r0, [r0], #-0
 6a4:	00000051 	andeq	r0, r0, r1, asr r0
 6a8:	004c1602 	subeq	r1, ip, r2, lsl #12
 6ac:	01020000 	mrseq	r0, (UNDEF: 2)
 6b0:	00005908 	andeq	r5, r0, r8, lsl #18
 6b4:	07020200 	streq	r0, [r2, -r0, lsl #4]
 6b8:	00000070 	andeq	r0, r0, r0, ror r0
 6bc:	00006704 	andeq	r6, r0, r4, lsl #14
 6c0:	651a0200 	ldrvs	r0, [sl, #-512]	; 0x200
 6c4:	02000000 	andeq	r0, r0, #0
 6c8:	00340704 	eorseq	r0, r4, r4, lsl #14
 6cc:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 6d0:	00002a07 	andeq	r2, r0, r7, lsl #20
 6d4:	02320500 	eorseq	r0, r2, #0, 10
 6d8:	25010000 	strcs	r0, [r1, #-0]
 6dc:	000086d0 	ldrdeq	r8, [r0], -r0
 6e0:	00000070 	andeq	r0, r0, r0, ror r0
 6e4:	00e59c01 	rsceq	r9, r5, r1, lsl #24
 6e8:	e0060000 	and	r0, r6, r0
 6ec:	2e000086 	cdpcs	0, 0, cr0, cr0, cr6, {4}
 6f0:	a0000001 	andge	r0, r0, r1
 6f4:	07000000 	streq	r0, [r0, -r0]
 6f8:	30015101 	andcc	r5, r1, r1, lsl #2
 6fc:	01500107 	cmpeq	r0, r7, lsl #2
 700:	ec06003f 	stc	0, cr0, [r6], {63}	; 0x3f
 704:	2e000086 	cdpcs	0, 0, cr0, cr0, cr6, {4}
 708:	b8000001 	stmdalt	r0, {r0}
 70c:	07000000 	streq	r0, [r0, -r0]
 710:	30015101 	andcc	r5, r1, r1, lsl #2
 714:	01500107 	cmpeq	r0, r7, lsl #2
 718:	f806003e 			; <UNDEFINED> instruction: 0xf806003e
 71c:	44000086 	strmi	r0, [r0], #-134	; 0x86
 720:	d0000001 	andle	r0, r0, r1
 724:	07000000 	streq	r0, [r0, -r0]
 728:	32015101 	andcc	r5, r1, #1073741824	; 0x40000000
 72c:	01500107 	cmpeq	r0, r7, lsl #2
 730:	0408003f 	streq	r0, [r8], #-63	; 0x3f
 734:	44000087 	strmi	r0, [r0], #-135	; 0x87
 738:	07000001 	streq	r0, [r0, -r1]
 73c:	32015101 	andcc	r5, r1, #1073741824	; 0x40000000
 740:	01500107 	cmpeq	r0, r7, lsl #2
 744:	0900003e 	stmdbeq	r0, {r1, r2, r3, r4, r5}
 748:	000002fc 	strdeq	r0, [r0], -ip
 74c:	87403701 	strbhi	r3, [r0, -r1, lsl #14]
 750:	00140000 	andseq	r0, r4, r0
 754:	9c010000 	stcls	0, cr0, [r1], {-0}
 758:	00028505 	andeq	r8, r2, r5, lsl #10
 75c:	543c0100 	ldrtpl	r0, [ip], #-256	; 0x100
 760:	28000087 	stmdacs	r0, {r0, r1, r2, r7}
 764:	01000000 	mrseq	r0, (UNDEF: 0)
 768:	0001199c 	muleq	r1, ip, r9
 76c:	01690a00 	cmneq	r9, r0, lsl #20
 770:	3c010000 	stccc	0, cr0, [r1], {-0}
 774:	00000041 	andeq	r0, r0, r1, asr #32
 778:	0b005001 	bleq	14784 <__bss_end+0x9784>
 77c:	00000160 	andeq	r0, r0, r0, ror #2
 780:	00414601 	subeq	r4, r1, r1, lsl #12
 784:	877c0000 	ldrbhi	r0, [ip, -r0]!
 788:	002c0000 	eoreq	r0, ip, r0
 78c:	9c010000 	stcls	0, cr0, [r1], {-0}
 790:	00000e0c 	andeq	r0, r0, ip, lsl #28
 794:	444b0300 	strbmi	r0, [fp], #-768	; 0x300
 798:	0d000001 	stceq	0, cr0, [r0, #-4]
 79c:	00000041 	andeq	r0, r0, r1, asr #32
 7a0:	0000410d 	andeq	r4, r0, sp, lsl #2
 7a4:	370e0000 	strcc	r0, [lr, -r0]
 7a8:	03000001 	movweq	r0, #1
 7ac:	00410d37 	subeq	r0, r1, r7, lsr sp
 7b0:	410d0000 	mrsmi	r0, (UNDEF: 13)
 7b4:	00000000 	andeq	r0, r0, r0
 7b8:	0001d000 	andeq	sp, r1, r0
 7bc:	09000400 	stmdbeq	r0, {sl}
 7c0:	04000004 	streq	r0, [r0], #-4
 7c4:	00018801 	andeq	r8, r1, r1, lsl #16
 7c8:	03170100 	tsteq	r7, #0, 2
 7cc:	00830000 	addeq	r0, r3, r0
 7d0:	87a80000 	strhi	r0, [r8, r0]!
 7d4:	01940000 	orrseq	r0, r4, r0
 7d8:	02ee0000 	rsceq	r0, lr, #0
 7dc:	01020000 	mrseq	r0, (UNDEF: 2)
 7e0:	00006208 	andeq	r6, r0, r8, lsl #4
 7e4:	05020200 	streq	r0, [r2, #-512]	; 0x200
 7e8:	00000143 	andeq	r0, r0, r3, asr #2
 7ec:	69050403 	stmdbvs	r5, {r0, r1, sl}
 7f0:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
 7f4:	00000508 	andeq	r0, r0, r8, lsl #10
 7f8:	51040000 	mrspl	r0, (UNDEF: 4)
 7fc:	02000000 	andeq	r0, r0, #0
 800:	00004c16 	andeq	r4, r0, r6, lsl ip
 804:	08010200 	stmdaeq	r1, {r9}
 808:	00000059 	andeq	r0, r0, r9, asr r0
 80c:	00025004 	andeq	r5, r2, r4
 810:	5e180200 	cdppl	2, 1, cr0, cr8, cr0, {0}
 814:	02000000 	andeq	r0, r0, #0
 818:	00700702 	rsbseq	r0, r0, r2, lsl #14
 81c:	67040000 	strvs	r0, [r4, -r0]
 820:	02000000 	andeq	r0, r0, #0
 824:	0000701a 	andeq	r7, r0, sl, lsl r0
 828:	07040200 	streq	r0, [r4, -r0, lsl #4]
 82c:	00000034 	andeq	r0, r0, r4, lsr r0
 830:	2a070802 	bcs	1c2840 <__end+0x96840>
 834:	05000000 	streq	r0, [r0, #-0]
 838:	00000307 	andeq	r0, r0, r7, lsl #6
 83c:	87a82101 	strhi	r2, [r8, r1, lsl #2]!
 840:	00540000 	subseq	r0, r4, r0
 844:	9c010000 	stcls	0, cr0, [r1], {-0}
 848:	000000ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
 84c:	6b6c6306 	blvs	1b1946c <__user_program+0x181946c>
 850:	53210100 	teqpl	r1, #0, 2
 854:	d0000000 	andle	r0, r0, r0
 858:	07000002 	streq	r0, [r0, -r2]
 85c:	000087b8 			; <UNDEFINED> instruction: 0x000087b8
 860:	000001ab 	andeq	r0, r0, fp, lsr #3
 864:	000000ba 	strheq	r0, [r0], -sl
 868:	01510108 	cmpeq	r1, r8, lsl #2
 86c:	50010830 	andpl	r0, r1, r0, lsr r8
 870:	07003201 	streq	r3, [r0, -r1, lsl #4]
 874:	000087c4 	andeq	r8, r0, r4, asr #15
 878:	000001ab 	andeq	r0, r0, fp, lsr #3
 87c:	000000d2 	ldrdeq	r0, [r0], -r2
 880:	01510108 	cmpeq	r1, r8, lsl #2
 884:	50010830 	andpl	r0, r1, r0, lsr r8
 888:	07003301 	streq	r3, [r0, -r1, lsl #6]
 88c:	000087d0 	ldrdeq	r8, [r0], -r0
 890:	000001c1 	andeq	r0, r0, r1, asr #3
 894:	000000ea 	andeq	r0, r0, sl, ror #1
 898:	01510108 	cmpeq	r1, r8, lsl #2
 89c:	50010834 	andpl	r0, r1, r4, lsr r8
 8a0:	09003201 	stmdbeq	r0, {r0, r9, ip, sp}
 8a4:	000087dc 	ldrdeq	r8, [r0], -ip
 8a8:	000001c1 	andeq	r0, r0, r1, asr #3
 8ac:	01510108 	cmpeq	r1, r8, lsl #2
 8b0:	50010834 	andpl	r0, r1, r4, lsr r8
 8b4:	00003301 	andeq	r3, r0, r1, lsl #6
 8b8:	00034a0a 	andeq	r4, r3, sl, lsl #20
 8bc:	412d0100 	teqmi	sp, r0, lsl #2
 8c0:	fc000000 	stc2	0, cr0, [r0], {-0}
 8c4:	a4000087 	strge	r0, [r0], #-135	; 0x87
 8c8:	01000000 	mrseq	r0, (UNDEF: 0)
 8cc:	0001539c 	muleq	r1, ip, r3
 8d0:	75620600 	strbvc	r0, [r2, #-1536]!	; 0x600
 8d4:	2d010066 	stccs	0, cr0, [r1, #-408]	; 0xfffffe68
 8d8:	00000153 	andeq	r0, r0, r3, asr r1
 8dc:	000002f1 	strdeq	r0, [r0], -r1
 8e0:	6e656c06 	cdpvs	12, 6, cr6, cr5, cr6, {0}
 8e4:	532d0100 	teqpl	sp, #0, 2
 8e8:	4f000000 	svcmi	0x00000000
 8ec:	0b000003 	bleq	900 <__start-0x7700>
 8f0:	00000335 	andeq	r0, r0, r5, lsr r3
 8f4:	00412d01 	subeq	r2, r1, r1, lsl #26
 8f8:	037b0000 	cmneq	fp, #0
 8fc:	690c0000 	stmdbvs	ip, {}	; <UNPREDICTABLE>
 900:	33380100 	teqcc	r8, #0, 2
 904:	a7000000 	strge	r0, [r0, -r0]
 908:	00000003 	andeq	r0, r0, r3
 90c:	0041040d 	subeq	r0, r1, sp, lsl #8
 910:	3a0a0000 	bcc	280918 <__end+0x154918>
 914:	01000003 	tsteq	r0, r3
 918:	00004145 	andeq	r4, r0, r5, asr #2
 91c:	0088a000 	addeq	sl, r8, r0
 920:	00009c00 	andeq	r9, r0, r0, lsl #24
 924:	ab9c0100 	blge	fe700d2c <__user_program+0xfe400d2c>
 928:	06000001 	streq	r0, [r0], -r1
 92c:	00667562 	rsbeq	r7, r6, r2, ror #10
 930:	01534501 	cmpeq	r3, r1, lsl #10
 934:	03ef0000 	mvneq	r0, #0
 938:	6c0e0000 	stcvs	0, cr0, [lr], {-0}
 93c:	01006e65 	tsteq	r0, r5, ror #28
 940:	00005345 	andeq	r5, r0, r5, asr #6
 944:	0b510100 	bleq	1440d4c <__user_program+0x1140d4c>
 948:	00000335 	andeq	r0, r0, r5, lsr r3
 94c:	00414501 	subeq	r4, r1, r1, lsl #10
 950:	044d0000 	strbeq	r0, [sp], #-0
 954:	690c0000 	stmdbvs	ip, {}	; <UNPREDICTABLE>
 958:	33570100 	cmpcc	r7, #0, 2
 95c:	79000000 	stmdbvc	r0, {}	; <UNPREDICTABLE>
 960:	00000004 	andeq	r0, r0, r4
 964:	00000e0f 	andeq	r0, r0, pc, lsl #28
 968:	c14b0300 	mrsgt	r0, (UNDEF: 123)
 96c:	10000001 	andne	r0, r0, r1
 970:	00000041 	andeq	r0, r0, r1, asr #32
 974:	00004110 	andeq	r4, r0, r0, lsl r1
 978:	37110000 	ldrcc	r0, [r1, -r0]
 97c:	03000001 	movweq	r0, #1
 980:	00411037 	subeq	r1, r1, r7, lsr r0
 984:	41100000 	tstmi	r0, r0
 988:	00000000 	andeq	r0, r0, r0
 98c:	00021700 	andeq	r1, r2, r0, lsl #14
 990:	0a000400 	beq	1998 <__start-0x6668>
 994:	04000005 	streq	r0, [r0], #-5
 998:	00018801 	andeq	r8, r1, r1, lsl #16
 99c:	035b0100 	cmpeq	fp, #0, 2
 9a0:	00830000 	addeq	r0, r3, r0
 9a4:	893c0000 	ldmdbhi	ip!, {}	; <UNPREDICTABLE>
 9a8:	00c40000 	sbceq	r0, r4, r0
 9ac:	03b80000 			; <UNDEFINED> instruction: 0x03b80000
 9b0:	01020000 	mrseq	r0, (UNDEF: 2)
 9b4:	00006208 	andeq	r6, r0, r8, lsl #4
 9b8:	05020200 	streq	r0, [r2, #-512]	; 0x200
 9bc:	00000143 	andeq	r0, r0, r3, asr #2
 9c0:	69050403 	stmdbvs	r5, {r0, r1, sl}
 9c4:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
 9c8:	00000508 	andeq	r0, r0, r8, lsl #10
 9cc:	51040000 	mrspl	r0, (UNDEF: 4)
 9d0:	02000000 	andeq	r0, r0, #0
 9d4:	00004c16 	andeq	r4, r0, r6, lsl ip
 9d8:	08010200 	stmdaeq	r1, {r9}
 9dc:	00000059 	andeq	r0, r0, r9, asr r0
 9e0:	00025004 	andeq	r5, r2, r4
 9e4:	5e180200 	cdppl	2, 1, cr0, cr8, cr0, {0}
 9e8:	02000000 	andeq	r0, r0, #0
 9ec:	00700702 	rsbseq	r0, r0, r2, lsl #14
 9f0:	04020000 	streq	r0, [r2], #-0
 9f4:	00003407 	andeq	r3, r0, r7, lsl #8
 9f8:	07080200 	streq	r0, [r8, -r0, lsl #4]
 9fc:	0000002a 	andeq	r0, r0, sl, lsr #32
 a00:	00017f05 	andeq	r7, r1, r5, lsl #30
 a04:	3c210100 	stfccs	f0, [r1], #-0
 a08:	10000089 	andne	r0, r0, r9, lsl #1
 a0c:	01000000 	mrseq	r0, (UNDEF: 0)
 a10:	00009a9c 	muleq	r0, ip, sl
 a14:	89480600 	stmdbhi	r8, {r9, sl}^
 a18:	01c90000 	biceq	r0, r9, r0
 a1c:	01070000 	mrseq	r0, (UNDEF: 7)
 a20:	dc0a0350 	stcle	3, cr0, [sl], {80}	; 0x50
 a24:	08000005 	stmdaeq	r0, {r0, r2}
 a28:	00000259 	andeq	r0, r0, r9, asr r2
 a2c:	00532501 	subseq	r2, r3, r1, lsl #10
 a30:	894c0000 	stmdbhi	ip, {}^	; <UNPREDICTABLE>
 a34:	00b40000 	adcseq	r0, r4, r0
 a38:	9c010000 	stcls	0, cr0, [r1], {-0}
 a3c:	00000192 	muleq	r0, r2, r1
 a40:	00023c09 	andeq	r3, r2, r9, lsl #24
 a44:	41250100 	teqmi	r5, r0, lsl #2
 a48:	9e000000 	cdpls	0, 0, cr0, cr0, cr0, {0}
 a4c:	0a000004 	beq	a64 <__start-0x759c>
 a50:	00000394 	muleq	r0, r4, r3
 a54:	01923401 	orrseq	r3, r2, r1, lsl #8
 a58:	91020000 	mrsls	r0, (UNDEF: 2)
 a5c:	03890a74 	orreq	r0, r9, #116, 20	; 0x74000
 a60:	38010000 	stmdacc	r1, {}	; <UNPREDICTABLE>
 a64:	000001a9 	andeq	r0, r0, r9, lsr #3
 a68:	0b709102 	bleq	1c24e78 <__user_program+0x1924e78>
 a6c:	0000038e 	andeq	r0, r0, lr, lsl #7
 a70:	00533d01 	subseq	r3, r3, r1, lsl #26
 a74:	5c0c0000 	stcpl	0, cr0, [ip], {-0}
 a78:	28000089 	stmdacs	r0, {r0, r3, r7}
 a7c:	20000000 	andcs	r0, r0, r0
 a80:	0a000001 	beq	a8c <__start-0x7574>
 a84:	0000037d 	andeq	r0, r0, sp, ror r3
 a88:	01b92801 			; <UNDEFINED> instruction: 0x01b92801
 a8c:	91020000 	mrsls	r0, (UNDEF: 2)
 a90:	8984066c 	stmibhi	r4, {r2, r3, r5, r6, r9, sl}
 a94:	01da0000 	bicseq	r0, sl, r0
 a98:	01070000 	mrseq	r0, (UNDEF: 7)
 a9c:	49080252 	stmdbmi	r8, {r1, r4, r6, r9}
 aa0:	01510107 	cmpeq	r1, r7, lsl #2
 aa4:	50010733 	andpl	r0, r1, r3, lsr r7
 aa8:	00649102 	rsbeq	r9, r4, r2, lsl #2
 aac:	89940c00 	ldmibhi	r4, {sl, fp}
 ab0:	00280000 	eoreq	r0, r8, r0
 ab4:	01570000 	cmpeq	r7, r0
 ab8:	7d0a0000 	stcvc	0, cr0, [sl, #-0]
 abc:	01000003 	tsteq	r0, r3
 ac0:	0001b92d 	andeq	fp, r1, sp, lsr #18
 ac4:	6c910200 	lfmvs	f0, 4, [r1], {0}
 ac8:	0089bc06 	addeq	fp, r9, r6, lsl #24
 acc:	0001da00 	andeq	sp, r1, r0, lsl #20
 ad0:	52010700 	andpl	r0, r1, #0, 14
 ad4:	07490802 	strbeq	r0, [r9, -r2, lsl #16]
 ad8:	33015101 	movwcc	r5, #4353	; 0x1101
 adc:	02500107 	subseq	r0, r0, #-1073741823	; 0xc0000001
 ae0:	00006491 	muleq	r0, r1, r4
 ae4:	0089d40d 	addeq	sp, r9, sp, lsl #8
 ae8:	0001da00 	andeq	sp, r1, r0, lsl #20
 aec:	00017600 	andeq	r7, r1, r0, lsl #12
 af0:	52010700 	andpl	r0, r1, #0, 14
 af4:	07490802 	strbeq	r0, [r9, -r2, lsl #16]
 af8:	31015101 	tstcc	r1, r1, lsl #2
 afc:	02500107 	subseq	r0, r0, #-1073741823	; 0xc0000001
 b00:	06006c91 			; <UNDEFINED> instruction: 0x06006c91
 b04:	000089e4 	andeq	r8, r0, r4, ror #19
 b08:	000001ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
 b0c:	02520107 	subseq	r0, r2, #-1073741823	; 0xc0000001
 b10:	01074908 	tsteq	r7, r8, lsl #18
 b14:	07320151 			; <UNDEFINED> instruction: 0x07320151
 b18:	91025001 	tstls	r2, r1
 b1c:	0e000068 	cdpeq	0, 0, cr0, cr0, cr8, {3}
 b20:	00000041 	andeq	r0, r0, r1, asr #32
 b24:	000001a2 	andeq	r0, r0, r2, lsr #3
 b28:	0001a20f 	andeq	sl, r1, pc, lsl #4
 b2c:	02000000 	andeq	r0, r0, #0
 b30:	02cf0704 	sbceq	r0, pc, #4, 14	; 0x100000
 b34:	410e0000 	mrsmi	r0, (UNDEF: 14)
 b38:	b9000000 	stmdblt	r0, {}	; <UNPREDICTABLE>
 b3c:	0f000001 	svceq	0x00000001
 b40:	000001a2 	andeq	r0, r0, r2, lsr #3
 b44:	410e0001 	tstmi	lr, r1
 b48:	c9000000 	stmdbgt	r0, {}	; <UNPREDICTABLE>
 b4c:	0f000001 	svceq	0x00000001
 b50:	000001a2 	andeq	r0, r0, r2, lsr #3
 b54:	07100002 	ldreq	r0, [r0, -r2]
 b58:	03000003 	movweq	r0, #3
 b5c:	0001da19 	andeq	sp, r1, r9, lsl sl
 b60:	00531100 	subseq	r1, r3, r0, lsl #2
 b64:	12000000 	andne	r0, r0, #0
 b68:	0000034a 	andeq	r0, r0, sl, asr #6
 b6c:	00412203 	subeq	r2, r1, r3, lsl #4
 b70:	01f90000 	mvnseq	r0, r0
 b74:	f9110000 			; <UNDEFINED> instruction: 0xf9110000
 b78:	11000001 	tstne	r0, r1
 b7c:	00000053 	andeq	r0, r0, r3, asr r0
 b80:	00004111 	andeq	r4, r0, r1, lsl r1
 b84:	04130000 	ldreq	r0, [r3], #-0
 b88:	00000041 	andeq	r0, r0, r1, asr #32
 b8c:	00033a14 	andeq	r3, r3, r4, lsl sl
 b90:	412b0300 	teqmi	fp, r0, lsl #6
 b94:	11000000 	mrsne	r0, (UNDEF: 0)
 b98:	000001f9 	strdeq	r0, [r0], -r9
 b9c:	00005311 	andeq	r5, r0, r1, lsl r3
 ba0:	00411100 	subeq	r1, r1, r0, lsl #2
 ba4:	00000000 	andeq	r0, r0, r0
 ba8:	00000062 	andeq	r0, r0, r2, rrx
 bac:	062e0002 	strteq	r0, [lr], -r2
 bb0:	01040000 	mrseq	r0, (UNDEF: 4)
 bb4:	0000045b 	andeq	r0, r0, fp, asr r4
 bb8:	00008000 	andeq	r8, r0, r0
 bbc:	00008054 	andeq	r8, r0, r4, asr r0
 bc0:	6c393433 	cfldrsvs	mvf3, [r9], #-204	; 0xffffff34
 bc4:	2f6b6269 	svccs	0x006b6269
 bc8:	2f637273 	svccs	0x00637273
 bcc:	746f6f62 	strbtvc	r6, [pc], #-3938	; bd4 <__start-0x742c>
 bd0:	2f00532e 	svccs	0x0000532e
 bd4:	656d6f68 	strbvs	r6, [sp, #-3944]!	; 0xf68
 bd8:	6563652f 	strbvs	r6, [r3, #-1327]!	; 0x52f
 bdc:	2f393433 	svccs	0x00393433
 be0:	2f393433 	svccs	0x00393433
 be4:	31662f31 	cmncc	r6, r1, lsr pc
 be8:	616c2d37 	cmnvs	ip, r7, lsr sp
 bec:	642d3162 	strtvs	r3, [sp], #-354	; 0x162
 bf0:	64697661 	strbtvs	r7, [r9], #-1633	; 0x661
 bf4:	39327579 	ldmdbcc	r2!, {r0, r3, r4, r5, r6, r8, sl, ip, sp, lr}
 bf8:	646f632f 	strbtvs	r6, [pc], #-815	; c00 <__start-0x7400>
 bfc:	4e470065 	cdpmi	0, 4, cr0, cr7, cr5, {3}
 c00:	53412055 	movtpl	r2, #4181	; 0x1055
 c04:	322e3220 	eorcc	r3, lr, #32, 4
 c08:	00302e34 	eorseq	r2, r0, r4, lsr lr
 c0c:	00618001 	rsbeq	r8, r1, r1
 c10:	00020000 	andeq	r0, r2, r0
 c14:	00000642 	andeq	r0, r0, r2, asr #12
 c18:	04b30104 	ldrteq	r0, [r3], #260	; 0x104
 c1c:	8a000000 	bhi	c24 <__start-0x73dc>
 c20:	8a440000 	bhi	1100c28 <__user_program+0xe00c28>
 c24:	34330000 	ldrtcc	r0, [r3], #-0
 c28:	62696c39 	rsbvs	r6, r9, #14592	; 0x3900
 c2c:	72732f6b 	rsbsvc	r2, r3, #428	; 0x1ac
 c30:	72612f63 	rsbvc	r2, r1, #396	; 0x18c
 c34:	00532e6d 	subseq	r2, r3, sp, ror #28
 c38:	6d6f682f 	stclvs	8, cr6, [pc, #-188]!	; b84 <__start-0x747c>
 c3c:	63652f65 	cmnvs	r5, #404	; 0x194
 c40:	39343365 	ldmdbcc	r4!, {r0, r2, r5, r6, r8, r9, ip, sp}
 c44:	3934332f 	ldmdbcc	r4!, {r0, r1, r2, r3, r5, r8, r9, ip, sp}
 c48:	662f312f 	strtvs	r3, [pc], -pc, lsr #2
 c4c:	6c2d3731 	stcvs	7, cr3, [sp], #-196	; 0xffffff3c
 c50:	2d316261 	lfmcs	f6, 4, [r1, #-388]!	; 0xfffffe7c
 c54:	69766164 	ldmdbvs	r6!, {r2, r5, r6, r8, sp, lr}^
 c58:	32757964 	rsbscc	r7, r5, #100, 18	; 0x190000
 c5c:	6f632f39 	svcvs	0x00632f39
 c60:	47006564 	strmi	r6, [r0, -r4, ror #10]
 c64:	4120554e 	teqmi	r0, lr, asr #10
 c68:	2e322053 	mrccs	0, 1, r2, cr2, cr3, {2}
 c6c:	302e3432 	eorcc	r3, lr, r2, lsr r4
 c70:	Address 0x00000c70 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0x101
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10061201 	andne	r1, r6, r1, lsl #4
  10:	02000017 	andeq	r0, r0, #23
  14:	0b0b0024 	bleq	2c00ac <__end+0x1940ac>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	24030000 	strcs	r0, [r3], #-0
  20:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  24:	0008030b 	andeq	r0, r8, fp, lsl #6
  28:	00160400 	andseq	r0, r6, r0, lsl #8
  2c:	0b3a0e03 	bleq	e83840 <__user_program+0xb83840>
  30:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  34:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
  38:	03193f01 	tsteq	r9, #1, 30
  3c:	3b0b3a0e 	blcc	2ce87c <__end+0x1a287c>
  40:	1119270b 	tstne	r9, fp, lsl #14
  44:	40061201 	andmi	r1, r6, r1, lsl #4
  48:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
  4c:	00001301 	andeq	r1, r0, r1, lsl #6
  50:	03000506 	movweq	r0, #1286	; 0x506
  54:	3b0b3a08 	blcc	2ce87c <__end+0x1a287c>
  58:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  5c:	07000018 	smladeq	r0, r8, r0, r0
  60:	08030034 	stmdaeq	r3, {r2, r4, r5}
  64:	0b3b0b3a 	bleq	ec2d54 <__user_program+0xbc2d54>
  68:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  6c:	34080000 	strcc	r0, [r8], #-0
  70:	3a0e0300 	bcc	380c78 <__user_program+0x80c78>
  74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  78:	00180213 	andseq	r0, r8, r3, lsl r2
  7c:	012e0900 	teqeq	lr, r0, lsl #18
  80:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
  84:	0b3b0b3a 	bleq	ec2d74 <__user_program+0xbc2d74>
  88:	01111927 	tsteq	r1, r7, lsr #18
  8c:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
  90:	01194296 			; <UNDEFINED> instruction: 0x01194296
  94:	0a000013 	beq	e8 <__start-0x7f18>
  98:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
  9c:	0b3b0b3a 	bleq	ec2d8c <__user_program+0xbc2d8c>
  a0:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  a4:	0f0b0000 	svceq	0x000b0000
  a8:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
  ac:	0c000013 	stceq	0, cr0, [r0], {19}
  b0:	13490035 	movtne	r0, #36917	; 0x9035
  b4:	01000000 	mrseq	r0, (UNDEF: 0)
  b8:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
  bc:	0e030b13 	vmoveq.32	d3[0], r0
  c0:	01110e1b 	tsteq	r1, fp, lsl lr
  c4:	17100612 			; <UNDEFINED> instruction: 0x17100612
  c8:	24020000 	strcs	r0, [r2], #-0
  cc:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  d0:	000e030b 	andeq	r0, lr, fp, lsl #6
  d4:	00240300 	eoreq	r0, r4, r0, lsl #6
  d8:	0b3e0b0b 	bleq	f82d0c <__user_program+0xc82d0c>
  dc:	00000803 	andeq	r0, r0, r3, lsl #16
  e0:	03001604 	movweq	r1, #1540	; 0x604
  e4:	3b0b3a0e 	blcc	2ce924 <__end+0x1a2924>
  e8:	0013490b 	andseq	r4, r3, fp, lsl #18
  ec:	012e0500 	teqeq	lr, r0, lsl #10
  f0:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
  f4:	0b3b0b3a 	bleq	ec2de4 <__user_program+0xbc2de4>
  f8:	01111927 	tsteq	r1, r7, lsr #18
  fc:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 100:	01194297 			; <UNDEFINED> instruction: 0x01194297
 104:	06000013 			; <UNDEFINED> instruction: 0x06000013
 108:	1755010b 	ldrbne	r0, [r5, -fp, lsl #2]
 10c:	00001301 	andeq	r1, r0, r1, lsl #6
 110:	03003407 	movweq	r3, #1031	; 0x407
 114:	3b0b3a0e 	blcc	2ce954 <__end+0x1a2954>
 118:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 11c:	08000017 	stmdaeq	r0, {r0, r1, r2, r4}
 120:	08030034 	stmdaeq	r3, {r2, r4, r5}
 124:	0b3b0b3a 	bleq	ec2e14 <__user_program+0xbc2e14>
 128:	17021349 	strne	r1, [r2, -r9, asr #6]
 12c:	0b090000 	bleq	240134 <__end+0x114134>
 130:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 134:	00130106 	andseq	r0, r3, r6, lsl #2
 138:	82890a00 	addhi	r0, r9, #0, 20
 13c:	01110101 	tsteq	r1, r1, lsl #2
 140:	00001331 	andeq	r1, r0, r1, lsr r3
 144:	01828a0b 	orreq	r8, r2, fp, lsl #20
 148:	91180200 	tstls	r8, r0, lsl #4
 14c:	00001842 	andeq	r1, r0, r2, asr #16
 150:	0182890c 	orreq	r8, r2, ip, lsl #18
 154:	31011101 	tstcc	r1, r1, lsl #2
 158:	00130113 	andseq	r0, r3, r3, lsl r1
 15c:	82890d00 	addhi	r0, r9, #0, 26
 160:	01110001 	tsteq	r1, r1
 164:	00001331 	andeq	r1, r0, r1, lsr r3
 168:	3f012e0e 	svccc	0x00012e0e
 16c:	3a0e0319 	bcc	380dd8 <__user_program+0x80dd8>
 170:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 174:	3c134919 	ldccc	9, cr4, [r3], {25}
 178:	00130119 	andseq	r0, r3, r9, lsl r1
 17c:	00050f00 	andeq	r0, r5, r0, lsl #30
 180:	00001349 	andeq	r1, r0, r9, asr #6
 184:	00001810 	andeq	r1, r0, r0, lsl r8
 188:	000f1100 	andeq	r1, pc, r0, lsl #2
 18c:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 190:	26120000 	ldrcs	r0, [r2], -r0
 194:	00134900 	andseq	r4, r3, r0, lsl #18
 198:	002e1300 	eoreq	r1, lr, r0, lsl #6
 19c:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 1a0:	0b3b0b3a 	bleq	ec2e90 <__user_program+0xbc2e90>
 1a4:	13491927 	movtne	r1, #39207	; 0x9927
 1a8:	0000193c 	andeq	r1, r0, ip, lsr r9
 1ac:	3f002e14 	svccc	0x00002e14
 1b0:	3a0e0319 	bcc	380e1c <__user_program+0x80e1c>
 1b4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 1b8:	00193c19 	andseq	r3, r9, r9, lsl ip
 1bc:	11010000 	mrsne	r0, (UNDEF: 1)
 1c0:	130e2501 	movwne	r2, #58625	; 0xe501
 1c4:	1b0e030b 	blne	380df8 <__user_program+0x80df8>
 1c8:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 1cc:	00171006 	andseq	r1, r7, r6
 1d0:	00160200 	andseq	r0, r6, r0, lsl #4
 1d4:	0b3a0e03 	bleq	e839e8 <__user_program+0xb839e8>
 1d8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 1dc:	24030000 	strcs	r0, [r3], #-0
 1e0:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 1e4:	000e030b 	andeq	r0, lr, fp, lsl #6
 1e8:	00240400 	eoreq	r0, r4, r0, lsl #8
 1ec:	0b3e0b0b 	bleq	f82e20 <__user_program+0xc82e20>
 1f0:	00000803 	andeq	r0, r0, r3, lsl #16
 1f4:	03011305 	movweq	r1, #4869	; 0x1305
 1f8:	3a0b0b0e 	bcc	2c2e38 <__end+0x196e38>
 1fc:	010b3b0b 	tsteq	fp, fp, lsl #22
 200:	06000013 			; <UNDEFINED> instruction: 0x06000013
 204:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
 208:	0b381349 	bleq	e04f34 <__user_program+0xb04f34>
 20c:	00001934 	andeq	r1, r0, r4, lsr r9
 210:	0b000f07 	bleq	3e34 <__start-0x41cc>
 214:	0800000b 	stmdaeq	r0, {r0, r1, r3}
 218:	0e03012e 	adfeqsp	f0, f3, #0.5
 21c:	0b3b0b3a 	bleq	ec2f0c <__user_program+0xbc2f0c>
 220:	01111927 	tsteq	r1, r7, lsr #18
 224:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 228:	01194296 			; <UNDEFINED> instruction: 0x01194296
 22c:	09000013 	stmdbeq	r0, {r0, r1, r4}
 230:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 234:	0b3b0b3a 	bleq	ec2f24 <__user_program+0xbc2f24>
 238:	17021349 	strne	r1, [r2, -r9, asr #6]
 23c:	050a0000 	streq	r0, [sl, #-0]
 240:	3a080300 	bcc	200e48 <__end+0xd4e48>
 244:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 248:	00170213 	andseq	r0, r7, r3, lsl r2
 24c:	00340b00 	eorseq	r0, r4, r0, lsl #22
 250:	0b3a0e03 	bleq	e83a64 <__user_program+0xb83a64>
 254:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 258:	00001702 	andeq	r1, r0, r2, lsl #14
 25c:	0300340c 	movweq	r3, #1036	; 0x40c
 260:	3b0b3a08 	blcc	2cea88 <__end+0x1a2a88>
 264:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 268:	0d000018 	stceq	0, cr0, [r0, #-96]	; 0xffffffa0
 26c:	08030034 	stmdaeq	r3, {r2, r4, r5}
 270:	0b3b0b3a 	bleq	ec2f60 <__user_program+0xbc2f60>
 274:	17021349 	strne	r1, [r2, -r9, asr #6]
 278:	890e0000 	stmdbhi	lr, {}	; <UNPREDICTABLE>
 27c:	11000182 	smlabbne	r0, r2, r1, r0
 280:	00133101 	andseq	r3, r3, r1, lsl #2
 284:	000f0f00 	andeq	r0, pc, r0, lsl #30
 288:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 28c:	01100000 	tsteq	r0, r0
 290:	01134901 	tsteq	r3, r1, lsl #18
 294:	11000013 	tstne	r0, r3, lsl r0
 298:	13490021 	movtne	r0, #36897	; 0x9021
 29c:	00000b2f 	andeq	r0, r0, pc, lsr #22
 2a0:	3f012e12 	svccc	0x00012e12
 2a4:	3a0e0319 	bcc	380f10 <__user_program+0x80f10>
 2a8:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 2ac:	11134919 	tstne	r3, r9, lsl r9
 2b0:	40061201 	andmi	r1, r6, r1, lsl #4
 2b4:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 2b8:	00001301 	andeq	r1, r0, r1, lsl #6
 2bc:	00001813 	andeq	r1, r0, r3, lsl r8
 2c0:	00341400 	eorseq	r1, r4, r0, lsl #8
 2c4:	0b3a0e03 	bleq	e83ad8 <__user_program+0xb83ad8>
 2c8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 2cc:	00001802 	andeq	r1, r0, r2, lsl #16
 2d0:	55010b15 	strpl	r0, [r1, #-2837]	; 0xb15
 2d4:	00130117 	andseq	r0, r3, r7, lsl r1
 2d8:	82891600 	addhi	r1, r9, #0, 12
 2dc:	01110101 	tsteq	r1, r1, lsl #2
 2e0:	00001331 	andeq	r1, r0, r1, lsr r3
 2e4:	01828a17 	orreq	r8, r2, r7, lsl sl
 2e8:	91180200 	tstls	r8, r0, lsl #4
 2ec:	00001842 	andeq	r1, r0, r2, asr #16
 2f0:	11010b18 	tstne	r1, r8, lsl fp
 2f4:	01061201 	tsteq	r6, r1, lsl #4
 2f8:	19000013 	stmdbne	r0, {r0, r1, r4}
 2fc:	01018289 	smlabbeq	r1, r9, r2, r8
 300:	13310111 	teqne	r1, #1073741828	; 0x40000004
 304:	00001301 	andeq	r1, r0, r1, lsl #6
 308:	4900261a 	stmdbmi	r0, {r1, r3, r4, r9, sl, sp}
 30c:	1b000013 	blne	360 <__start-0x7ca0>
 310:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 314:	0b3a0e03 	bleq	e83b28 <__user_program+0xb83b28>
 318:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 31c:	0000193c 	andeq	r1, r0, ip, lsr r9
 320:	4900051c 	stmdbmi	r0, {r2, r3, r4, r8, sl}
 324:	00000013 	andeq	r0, r0, r3, lsl r0
 328:	25011101 	strcs	r1, [r1, #-257]	; 0x101
 32c:	030b130e 	movweq	r1, #45838	; 0xb30e
 330:	110e1b0e 	tstne	lr, lr, lsl #22
 334:	10061201 	andne	r1, r6, r1, lsl #4
 338:	02000017 	andeq	r0, r0, #23
 33c:	0b0b0024 	bleq	2c03d4 <__end+0x1943d4>
 340:	0e030b3e 	vmoveq.16	d3[0], r0
 344:	24030000 	strcs	r0, [r3], #-0
 348:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 34c:	0008030b 	andeq	r0, r8, fp, lsl #6
 350:	00160400 	andseq	r0, r6, r0, lsl #8
 354:	0b3a0e03 	bleq	e83b68 <__user_program+0xb83b68>
 358:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 35c:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
 360:	03193f01 	tsteq	r9, #1, 30
 364:	3b0b3a0e 	blcc	2ceba4 <__end+0x1a2ba4>
 368:	1119270b 	tstne	r9, fp, lsl #14
 36c:	40061201 	andmi	r1, r6, r1, lsl #4
 370:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 374:	00001301 	andeq	r1, r0, r1, lsl #6
 378:	01828906 	orreq	r8, r2, r6, lsl #18
 37c:	31011101 	tstcc	r1, r1, lsl #2
 380:	00130113 	andseq	r0, r3, r3, lsl r1
 384:	828a0700 	addhi	r0, sl, #0, 14
 388:	18020001 	stmdane	r2, {r0}
 38c:	00184291 	mulseq	r8, r1, r2
 390:	82890800 	addhi	r0, r9, #0, 16
 394:	01110101 	tsteq	r1, r1, lsl #2
 398:	00001331 	andeq	r1, r0, r1, lsr r3
 39c:	3f002e09 	svccc	0x00002e09
 3a0:	3a0e0319 	bcc	38100c <__user_program+0x8100c>
 3a4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 3a8:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 3ac:	97184006 	ldrls	r4, [r8, -r6]
 3b0:	00001942 	andeq	r1, r0, r2, asr #18
 3b4:	0300050a 	movweq	r0, #1290	; 0x50a
 3b8:	3b0b3a0e 	blcc	2cebf8 <__end+0x1a2bf8>
 3bc:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 3c0:	0b000018 	bleq	428 <__start-0x7bd8>
 3c4:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
 3c8:	0b3a0e03 	bleq	e83bdc <__user_program+0xb83bdc>
 3cc:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 3d0:	01111349 	tsteq	r1, r9, asr #6
 3d4:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 3d8:	00194297 	mulseq	r9, r7, r2
 3dc:	012e0c00 	teqeq	lr, r0, lsl #24
 3e0:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 3e4:	0b3b0b3a 	bleq	ec30d4 <__user_program+0xbc30d4>
 3e8:	193c1927 	ldmdbne	ip!, {r0, r1, r2, r5, r8, fp, ip}
 3ec:	00001301 	andeq	r1, r0, r1, lsl #6
 3f0:	4900050d 	stmdbmi	r0, {r0, r2, r3, r8, sl}
 3f4:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
 3f8:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 3fc:	0b3a0e03 	bleq	e83c10 <__user_program+0xb83c10>
 400:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 404:	0000193c 	andeq	r1, r0, ip, lsr r9
 408:	01110100 	tsteq	r1, r0, lsl #2
 40c:	0b130e25 	bleq	4c3ca8 <__user_program+0x1c3ca8>
 410:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 414:	06120111 			; <UNDEFINED> instruction: 0x06120111
 418:	00001710 	andeq	r1, r0, r0, lsl r7
 41c:	0b002402 	bleq	942c <.LANCHOR0+0x418>
 420:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 424:	0300000e 	movweq	r0, #14
 428:	0b0b0024 	bleq	2c04c0 <__end+0x1944c0>
 42c:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 430:	16040000 	strne	r0, [r4], -r0
 434:	3a0e0300 	bcc	38103c <__user_program+0x8103c>
 438:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 43c:	05000013 	streq	r0, [r0, #-19]
 440:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 444:	0b3a0e03 	bleq	e83c58 <__user_program+0xb83c58>
 448:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 44c:	06120111 			; <UNDEFINED> instruction: 0x06120111
 450:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 454:	00130119 	andseq	r0, r3, r9, lsl r1
 458:	00050600 	andeq	r0, r5, r0, lsl #12
 45c:	0b3a0803 	bleq	e82470 <__user_program+0xb82470>
 460:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 464:	00001702 	andeq	r1, r0, r2, lsl #14
 468:	01828907 	orreq	r8, r2, r7, lsl #18
 46c:	31011101 	tstcc	r1, r1, lsl #2
 470:	00130113 	andseq	r0, r3, r3, lsl r1
 474:	828a0800 	addhi	r0, sl, #0, 16
 478:	18020001 	stmdane	r2, {r0}
 47c:	00184291 	mulseq	r8, r1, r2
 480:	82890900 	addhi	r0, r9, #0, 18
 484:	01110101 	tsteq	r1, r1, lsl #2
 488:	00001331 	andeq	r1, r0, r1, lsr r3
 48c:	3f012e0a 	svccc	0x00012e0a
 490:	3a0e0319 	bcc	3810fc <__user_program+0x810fc>
 494:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 498:	11134919 	tstne	r3, r9, lsl r9
 49c:	40061201 	andmi	r1, r6, r1, lsl #4
 4a0:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 4a4:	00001301 	andeq	r1, r0, r1, lsl #6
 4a8:	0300050b 	movweq	r0, #1291	; 0x50b
 4ac:	3b0b3a0e 	blcc	2cecec <__end+0x1a2cec>
 4b0:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 4b4:	0c000017 	stceq	0, cr0, [r0], {23}
 4b8:	08030034 	stmdaeq	r3, {r2, r4, r5}
 4bc:	0b3b0b3a 	bleq	ec31ac <__user_program+0xbc31ac>
 4c0:	17021349 	strne	r1, [r2, -r9, asr #6]
 4c4:	0f0d0000 	svceq	0x000d0000
 4c8:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 4cc:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
 4d0:	08030005 	stmdaeq	r3, {r0, r2}
 4d4:	0b3b0b3a 	bleq	ec31c4 <__user_program+0xbc31c4>
 4d8:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 4dc:	2e0f0000 	cdpcs	0, 0, cr0, cr15, cr0, {0}
 4e0:	03193f01 	tsteq	r9, #1, 30
 4e4:	3b0b3a0e 	blcc	2ced24 <__end+0x1a2d24>
 4e8:	3c19270b 	ldccc	7, cr2, [r9], {11}
 4ec:	00130119 	andseq	r0, r3, r9, lsl r1
 4f0:	00051000 	andeq	r1, r5, r0
 4f4:	00001349 	andeq	r1, r0, r9, asr #6
 4f8:	3f012e11 	svccc	0x00012e11
 4fc:	3a0e0319 	bcc	381168 <__user_program+0x81168>
 500:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 504:	00193c19 	andseq	r3, r9, r9, lsl ip
 508:	11010000 	mrsne	r0, (UNDEF: 1)
 50c:	130e2501 	movwne	r2, #58625	; 0xe501
 510:	1b0e030b 	blne	381144 <__user_program+0x81144>
 514:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 518:	00171006 	andseq	r1, r7, r6
 51c:	00240200 	eoreq	r0, r4, r0, lsl #4
 520:	0b3e0b0b 	bleq	f83154 <__user_program+0xc83154>
 524:	00000e03 	andeq	r0, r0, r3, lsl #28
 528:	0b002403 	bleq	953c <.LANCHOR0+0x528>
 52c:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 530:	04000008 	streq	r0, [r0], #-8
 534:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 538:	0b3b0b3a 	bleq	ec3228 <__user_program+0xbc3228>
 53c:	00001349 	andeq	r1, r0, r9, asr #6
 540:	3f012e05 	svccc	0x00012e05
 544:	3a0e0319 	bcc	3811b0 <__user_program+0x811b0>
 548:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 54c:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 550:	97184006 	ldrls	r4, [r8, -r6]
 554:	13011942 	movwne	r1, #6466	; 0x1942
 558:	89060000 	stmdbhi	r6, {}	; <UNPREDICTABLE>
 55c:	11010182 	smlabbne	r1, r2, r1, r0
 560:	00133101 	andseq	r3, r3, r1, lsl #2
 564:	828a0700 	addhi	r0, sl, #0, 14
 568:	18020001 	stmdane	r2, {r0}
 56c:	00184291 	mulseq	r8, r1, r2
 570:	012e0800 	teqeq	lr, r0, lsl #16
 574:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 578:	0b3b0b3a 	bleq	ec3268 <__user_program+0xbc3268>
 57c:	13491927 	movtne	r1, #39207	; 0x9927
 580:	06120111 			; <UNDEFINED> instruction: 0x06120111
 584:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 588:	00130119 	andseq	r0, r3, r9, lsl r1
 58c:	00050900 	andeq	r0, r5, r0, lsl #18
 590:	0b3a0e03 	bleq	e83da4 <__user_program+0xb83da4>
 594:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 598:	00001702 	andeq	r1, r0, r2, lsl #14
 59c:	0300340a 	movweq	r3, #1034	; 0x40a
 5a0:	3b0b3a0e 	blcc	2cede0 <__end+0x1a2de0>
 5a4:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 5a8:	0b000018 	bleq	610 <__start-0x79f0>
 5ac:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 5b0:	0b3b0b3a 	bleq	ec32a0 <__user_program+0xbc32a0>
 5b4:	00001349 	andeq	r1, r0, r9, asr #6
 5b8:	11010b0c 	tstne	r1, ip, lsl #22
 5bc:	01061201 	tsteq	r6, r1, lsl #4
 5c0:	0d000013 	stceq	0, cr0, [r0, #-76]	; 0xffffffb4
 5c4:	01018289 	smlabbeq	r1, r9, r2, r8
 5c8:	13310111 	teqne	r1, #1073741828	; 0x40000004
 5cc:	00001301 	andeq	r1, r0, r1, lsl #6
 5d0:	4901010e 	stmdbmi	r1, {r1, r2, r3, r8}
 5d4:	00130113 	andseq	r0, r3, r3, lsl r1
 5d8:	00210f00 	eoreq	r0, r1, r0, lsl #30
 5dc:	0b2f1349 	bleq	bc5308 <__user_program+0x8c5308>
 5e0:	2e100000 	cdpcs	0, 1, cr0, cr0, cr0, {0}
 5e4:	03193f01 	tsteq	r9, #1, 30
 5e8:	3b0b3a0e 	blcc	2cee28 <__end+0x1a2e28>
 5ec:	3c19270b 	ldccc	7, cr2, [r9], {11}
 5f0:	00130119 	andseq	r0, r3, r9, lsl r1
 5f4:	00051100 	andeq	r1, r5, r0, lsl #2
 5f8:	00001349 	andeq	r1, r0, r9, asr #6
 5fc:	3f012e12 	svccc	0x00012e12
 600:	3a0e0319 	bcc	38126c <__user_program+0x8126c>
 604:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 608:	3c134919 	ldccc	9, cr4, [r3], {25}
 60c:	00130119 	andseq	r0, r3, r9, lsl r1
 610:	000f1300 	andeq	r1, pc, r0, lsl #6
 614:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 618:	2e140000 	cdpcs	0, 1, cr0, cr4, cr0, {0}
 61c:	03193f01 	tsteq	r9, #1, 30
 620:	3b0b3a0e 	blcc	2cee60 <__end+0x1a2e60>
 624:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 628:	00193c13 	andseq	r3, r9, r3, lsl ip
 62c:	11010000 	mrsne	r0, (UNDEF: 1)
 630:	11061000 	mrsne	r1, (UNDEF: 6)
 634:	03011201 	movweq	r1, #4609	; 0x1201
 638:	25081b08 	strcs	r1, [r8, #-2824]	; 0xb08
 63c:	00051308 	andeq	r1, r5, r8, lsl #6
 640:	11010000 	mrsne	r0, (UNDEF: 1)
 644:	11061000 	mrsne	r1, (UNDEF: 6)
 648:	03011201 	movweq	r1, #4609	; 0x1201
 64c:	25081b08 	strcs	r1, [r8, #-2824]	; 0xb08
 650:	00051308 	andeq	r1, r5, r8, lsl #6
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	00008054 	andeq	r8, r0, r4, asr r0
  14:	00000320 	andeq	r0, r0, r0, lsr #6
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	01660002 	cmneq	r6, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	00008374 	andeq	r8, r0, r4, ror r3
  34:	000000c4 	andeq	r0, r0, r4, asr #1
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	036e0002 	cmneq	lr, #2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	00008438 	andeq	r8, r0, r8, lsr r4
  54:	00000298 	muleq	r0, r8, r2
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	06620002 	strbteq	r0, [r2], -r2
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	000086d0 	ldrdeq	r8, [r0], -r0
  74:	000000d8 	ldrdeq	r0, [r0], -r8
	...
  80:	0000001c 	andeq	r0, r0, ip, lsl r0
  84:	07b90002 	ldreq	r0, [r9, r2]!
  88:	00040000 	andeq	r0, r4, r0
  8c:	00000000 	andeq	r0, r0, r0
  90:	000087a8 	andeq	r8, r0, r8, lsr #15
  94:	00000194 	muleq	r0, r4, r1
	...
  a0:	0000001c 	andeq	r0, r0, ip, lsl r0
  a4:	098d0002 	stmibeq	sp, {r1}
  a8:	00040000 	andeq	r0, r4, r0
  ac:	00000000 	andeq	r0, r0, r0
  b0:	0000893c 	andeq	r8, r0, ip, lsr r9
  b4:	000000c4 	andeq	r0, r0, r4, asr #1
	...
  c0:	0000001c 	andeq	r0, r0, ip, lsl r0
  c4:	0ba80002 	bleq	fea000d4 <__user_program+0xfe7000d4>
  c8:	00040000 	andeq	r0, r4, r0
  cc:	00000000 	andeq	r0, r0, r0
  d0:	00008000 	andeq	r8, r0, r0
  d4:	00000054 	andeq	r0, r0, r4, asr r0
	...
  e0:	0000001c 	andeq	r0, r0, ip, lsl r0
  e4:	0c0e0002 	stceq	0, cr0, [lr], {2}
  e8:	00040000 	andeq	r0, r4, r0
  ec:	00000000 	andeq	r0, r0, r0
  f0:	00008a00 	andeq	r8, r0, r0, lsl #20
  f4:	00000044 	andeq	r0, r0, r4, asr #32
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000092 	muleq	r0, r2, r0
   4:	00460002 	subeq	r0, r6, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	33010000 	movwcc	r0, #4096	; 0x1000
  1c:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
  20:	732f6b62 	teqvc	pc, #100352	; 0x18800
  24:	33006372 	movwcc	r6, #882	; 0x372
  28:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
  2c:	692f6b62 	stmdbvs	pc!, {r1, r5, r6, r8, r9, fp, sp, lr}	; <UNPREDICTABLE>
  30:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
  34:	00006564 	andeq	r6, r0, r4, ror #10
  38:	6f697067 	svcvs	0x00697067
  3c:	0100632e 	tsteq	r0, lr, lsr #6
  40:	736b0000 	cmnvc	fp, #0
  44:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
  48:	00682e74 	rsbeq	r2, r8, r4, ror lr
  4c:	00000002 	andeq	r0, r0, r2
  50:	54020500 	strpl	r0, [r2], #-1280	; 0x500
  54:	03000080 	movweq	r0, #128	; 0x80
  58:	f30100d3 	vqadd.u8	q0, <illegal reg q8.5>, <illegal reg q1.5>
  5c:	01040200 	mrseq	r0, R12_usr
  60:	67066606 	strvs	r6, [r6, -r6, lsl #12]
  64:	08f4d831 	ldmeq	r4!, {r0, r4, r5, fp, ip, lr, pc}^
  68:	f3d7f3e5 			; <UNDEFINED> instruction: 0xf3d7f3e5
  6c:	30679f69 	rsbcc	r9, r7, r9, ror #30
  70:	f43e0867 			; <UNDEFINED> instruction: 0xf43e0867
  74:	30679f69 	rsbcc	r9, r7, r9, ror #30
  78:	f43e0867 			; <UNDEFINED> instruction: 0xf43e0867
  7c:	0200f369 	andeq	pc, r0, #-1543503871	; 0xa4000001
  80:	66060104 	strvs	r0, [r6], -r4, lsl #2
  84:	bb316706 	bllt	c59ca4 <__user_program+0x959ca4>
  88:	2108674b 	tstcs	r8, fp, asr #14
  8c:	4bf3d84b 	blmi	ffcf61c0 <__user_program+0xff9f61c0>
  90:	000402bc 			; <UNDEFINED> instruction: 0x000402bc
  94:	00ce0101 	sbceq	r0, lr, r1, lsl #2
  98:	00020000 	andeq	r0, r2, r0
  9c:	00000093 	muleq	r0, r3, r0
  a0:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
  a4:	0101000d 	tsteq	r1, sp
  a8:	00000101 	andeq	r0, r0, r1, lsl #2
  ac:	00000100 	andeq	r0, r0, r0, lsl #2
  b0:	72656b01 	rsbvc	r6, r5, #1024	; 0x400
  b4:	5f6c656e 	svcpl	0x006c656e
  b8:	70616c63 	rsbvc	r6, r1, r3, ror #24
  bc:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0x564
  c0:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
  c4:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
  c8:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
  cc:	6b62696c 	blvs	189a684 <__user_program+0x159a684>
  d0:	636e692f 	cmnvs	lr, #770048	; 0xbc000
  d4:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
  d8:	72656b00 	rsbvc	r6, r5, #0, 22
  dc:	5f6c656e 	svcpl	0x006c656e
  e0:	70616c63 	rsbvc	r6, r1, r3, ror #24
  e4:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0x564
  e8:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
  ec:	636e692f 	cmnvs	lr, #770048	; 0xbc000
  f0:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
  f4:	656b0000 	strbvs	r0, [fp, #-0]!
  f8:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
  fc:	0100632e 	tsteq	r0, lr, lsr #6
 100:	736b0000 	cmnvc	fp, #0
 104:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 108:	00682e74 	rsbeq	r2, r8, r4, ror lr
 10c:	61000002 	tstvs	r0, r2
 110:	30317364 	eorscc	r7, r1, r4, ror #6
 114:	682e3531 	stmdavs	lr!, {r0, r4, r5, r8, sl, ip, sp}
 118:	00000300 	andeq	r0, r0, r0, lsl #6
 11c:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
 120:	682e6b74 	stmdavs	lr!, {r2, r4, r5, r6, r8, r9, fp, sp, lr}
 124:	00000300 	andeq	r0, r0, r0, lsl #6
 128:	74726175 	ldrbtvc	r6, [r2], #-373	; 0x175
 12c:	0300682e 	movweq	r6, #2094	; 0x82e
 130:	00000000 	andeq	r0, r0, r0
 134:	83740205 	cmnhi	r4, #1342177280	; 0x50000000
 138:	19030000 	stmdbne	r3, {}	; <UNPREDICTABLE>
 13c:	312f3001 	teqcc	pc, r1
 140:	034a1603 	movteq	r1, #42499	; 0xa603
 144:	2f4b4a6a 	svccs	0x004b4a6a
 148:	0384674b 	orreq	r6, r4, #19660800	; 0x12c0000
 14c:	13034a74 	movwne	r4, #14964	; 0x3a74
 150:	2d2f679e 	stccs	7, cr6, [pc, #-632]!	; fffffee0 <__user_program+0xffcffee0>
 154:	02040200 	andeq	r0, r4, #0, 4
 158:	4a09039c 	bmi	240fd0 <__end+0x114fd0>
 15c:	6672034b 	ldrbtvs	r0, [r2], -fp, asr #6
 160:	024a1003 	subeq	r1, sl, #3
 164:	01010008 	tsteq	r1, r8
 168:	000000fa 	strdeq	r0, [r0], -sl
 16c:	00950002 	addseq	r0, r5, r2
 170:	01020000 	mrseq	r0, (UNDEF: 2)
 174:	000d0efb 	strdeq	r0, [sp], -fp
 178:	01010101 	tsteq	r1, r1, lsl #2
 17c:	01000000 	mrseq	r0, (UNDEF: 0)
 180:	6b010000 	blvs	40188 <__bss_end+0x35188>
 184:	656e7265 	strbvs	r7, [lr, #-613]!	; 0x265
 188:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 18c:	65647061 	strbvs	r7, [r4, #-97]!	; 0x61
 190:	74636574 	strbtvc	r6, [r3], #-1396	; 0x574
 194:	732f726f 	teqvc	pc, #-268435450	; 0xf0000006
 198:	33006372 	movwcc	r6, #882	; 0x372
 19c:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
 1a0:	692f6b62 	stmdbvs	pc!, {r1, r5, r6, r8, r9, fp, sp, lr}	; <UNPREDICTABLE>
 1a4:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
 1a8:	6b006564 	blvs	19740 <__bss_end+0xe740>
 1ac:	656e7265 	strbvs	r7, [lr, #-613]!	; 0x265
 1b0:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 1b4:	65647061 	strbvs	r7, [r4, #-97]!	; 0x61
 1b8:	74636574 	strbtvc	r6, [r3], #-1396	; 0x574
 1bc:	692f726f 	stmdbvs	pc!, {r0, r1, r2, r3, r5, r6, r9, ip, sp, lr}	; <UNPREDICTABLE>
 1c0:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
 1c4:	00006564 	andeq	r6, r0, r4, ror #10
 1c8:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
 1cc:	632e6b74 	teqvs	lr, #116, 22	; 0x1d000
 1d0:	00000100 	andeq	r0, r0, r0, lsl #2
 1d4:	6474736b 	ldrbtvs	r7, [r4], #-875	; 0x36b
 1d8:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 1dc:	00020068 	andeq	r0, r2, r8, rrx
 1e0:	74736b00 	ldrbtvc	r6, [r3], #-2816	; 0xb00
 1e4:	67726164 	ldrbvs	r6, [r2, -r4, ror #2]!
 1e8:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 1ec:	623c0000 	eorsvs	r0, ip, #0
 1f0:	746c6975 	strbtvc	r6, [ip], #-2421	; 0x975
 1f4:	3e6e692d 	cdpcc	9, 6, cr6, cr14, cr13, {1}
 1f8:	00000000 	andeq	r0, r0, r0
 1fc:	74726175 	ldrbtvc	r6, [r2], #-373	; 0x175
 200:	0300682e 	movweq	r6, #2094	; 0x82e
 204:	00000000 	andeq	r0, r0, r0
 208:	84380205 	ldrthi	r0, [r8], #-517	; 0x205
 20c:	20030000 	andcs	r0, r3, r0
 210:	9c4d8801 	mcrrls	8, 0, r8, sp, cr1
 214:	01040200 	mrseq	r0, R12_usr
 218:	0402004c 	streq	r0, [r2], #-76	; 0x4c
 21c:	02003301 	andeq	r3, r0, #67108864	; 0x4000000
 220:	59080104 	stmdbpl	r8, {r2, r8}
 224:	01040200 	mrseq	r0, R12_usr
 228:	6a4b4dd7 	bvs	12d398c <__user_program+0xfd398c>
 22c:	49872d9b 	stmibmi	r7, {r0, r1, r3, r4, r7, r8, sl, fp, sp}
 230:	03854d69 	orreq	r4, r5, #6720	; 0x1a40
 234:	03514a20 	cmpeq	r1, #32, 20	; 0x20000
 238:	4b302e5c 	blmi	c0bbb0 <__user_program+0x90bbb0>
 23c:	2c02324b 	sfmcs	f3, 4, [r2], {75}	; 0x4b
 240:	4b4b8315 	blmi	12e0e9c <__user_program+0xfe0e9c>
 244:	8367a4a0 	cmnhi	r7, #160, 8	; 0xa0000000
 248:	33836732 	orrcc	r6, r3, #13107200	; 0xc80000
 24c:	83328367 	teqhi	r2, #-1677721599	; 0x9c000001
 250:	678a2d67 	strvs	r2, [sl, r7, ror #26]
 254:	334b324b 	movtcc	r3, #45643	; 0xb24b
 258:	7fbf034d 	svcvc	0x00bf034d
 25c:	00c6032e 	sbceq	r0, r6, lr, lsr #6
 260:	00080266 	andeq	r0, r8, r6, ror #4
 264:	00840101 	addeq	r0, r4, r1, lsl #2
 268:	00020000 	andeq	r0, r2, r0
 26c:	0000005c 	andeq	r0, r0, ip, asr r0
 270:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 274:	0101000d 	tsteq	r1, sp
 278:	00000101 	andeq	r0, r0, r1, lsl #2
 27c:	00000100 	andeq	r0, r0, r0, lsl #2
 280:	72656b01 	rsbvc	r6, r5, #1024	; 0x400
 284:	5f6c656e 	svcpl	0x006c656e
 288:	70616c63 	rsbvc	r6, r1, r3, ror #24
 28c:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0x564
 290:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 294:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 298:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
 29c:	6b62696c 	blvs	189a854 <__user_program+0x159a854>
 2a0:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 2a4:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
 2a8:	61750000 	cmnvs	r5, r0
 2ac:	632e7472 	teqvs	lr, #1912602624	; 0x72000000
 2b0:	00000100 	andeq	r0, r0, r0, lsl #2
 2b4:	6474736b 	ldrbtvs	r7, [r4], #-875	; 0x36b
 2b8:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 2bc:	00020068 	andeq	r0, r2, r8, rrx
 2c0:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
 2c4:	00682e6f 	rsbeq	r2, r8, pc, ror #28
 2c8:	00000002 	andeq	r0, r0, r2
 2cc:	d0020500 	andle	r0, r2, r0, lsl #10
 2d0:	03000086 	movweq	r0, #134	; 0x86
 2d4:	67300124 	ldrvs	r0, [r0, -r4, lsr #2]!
 2d8:	83686768 	cmnhi	r8, #104, 14	; 0x1a00000
 2dc:	2f4b674b 	svccs	0x004b674b
 2e0:	14a2136b 	strtne	r1, [r2], #875	; 0x36b
 2e4:	be1486be 	mrclt	6, 0, r8, cr4, cr14, {5}
 2e8:	00040267 	andeq	r0, r4, r7, ror #4
 2ec:	00c60101 	sbceq	r0, r6, r1, lsl #2
 2f0:	00020000 	andeq	r0, r2, r0
 2f4:	0000005b 	andeq	r0, r0, fp, asr r0
 2f8:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 2fc:	0101000d 	tsteq	r1, sp
 300:	00000101 	andeq	r0, r0, r1, lsl #2
 304:	00000100 	andeq	r0, r0, r0, lsl #2
 308:	72656b01 	rsbvc	r6, r5, #1024	; 0x400
 30c:	5f6c656e 	svcpl	0x006c656e
 310:	70616c63 	rsbvc	r6, r1, r3, ror #24
 314:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0x564
 318:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 31c:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 320:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
 324:	6b62696c 	blvs	189a8dc <__user_program+0x159a8dc>
 328:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 32c:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
 330:	32690000 	rsbcc	r0, r9, #0
 334:	00632e63 	rsbeq	r2, r3, r3, ror #28
 338:	6b000001 	blvs	344 <__start-0x7cbc>
 33c:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 340:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 344:	00000200 	andeq	r0, r0, r0, lsl #4
 348:	6f697067 	svcvs	0x00697067
 34c:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 350:	00000000 	andeq	r0, r0, r0
 354:	87a80205 	strhi	r0, [r8, r5, lsl #4]!
 358:	20030000 	andcs	r0, r3, r0
 35c:	67673001 	strbvs	r3, [r7, -r1]!
 360:	85836967 	strhi	r6, [r3, #2407]	; 0x967
 364:	674d4d13 	smlaldvs	r4, sp, r3, sp
 368:	00836830 	addeq	r6, r3, r0, lsr r8
 36c:	06030402 	streq	r0, [r3], -r2, lsl #8
 370:	0402004a 	streq	r0, [r2], #-74	; 0x4a
 374:	4d490603 	stclmi	6, cr0, [r9, #-12]
 378:	04020084 	streq	r0, [r2], #-132	; 0x84
 37c:	064a0601 	strbeq	r0, [sl], -r1, lsl #12
 380:	6d039f69 	stcvs	15, cr9, [r3, #-420]	; 0xfffffe5c
 384:	11034d4a 	tstne	r3, sl, asr #26
 388:	4d13302e 	ldcmi	0, cr3, [r3, #-184]	; 0xffffff48
 38c:	6830674e 	ldmdavs	r0!, {r1, r2, r3, r6, r8, r9, sl, sp, lr}
 390:	0402004c 	streq	r0, [r2], #-76	; 0x4c
 394:	004a0601 	subeq	r0, sl, r1, lsl #12
 398:	06010402 	streq	r0, [r1], -r2, lsl #8
 39c:	0200836a 	andeq	r8, r0, #-1476395007	; 0xa8000001
 3a0:	4a060304 	bmi	180fb8 <__end+0x54fb8>
 3a4:	03040200 	movweq	r0, #16896	; 0x4200
 3a8:	a04e4906 	subge	r4, lr, r6, lsl #18
 3ac:	4d4a6903 	stclmi	9, cr6, [sl, #-12]
 3b0:	022e1503 	eoreq	r1, lr, #12582912	; 0xc00000
 3b4:	01010002 	tsteq	r1, r2
 3b8:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 3bc:	007a0002 	rsbseq	r0, sl, r2
 3c0:	01020000 	mrseq	r0, (UNDEF: 2)
 3c4:	000d0efb 	strdeq	r0, [sp], -fp
 3c8:	01010101 	tsteq	r1, r1, lsl #2
 3cc:	01000000 	mrseq	r0, (UNDEF: 0)
 3d0:	6b010000 	blvs	403d8 <__bss_end+0x353d8>
 3d4:	656e7265 	strbvs	r7, [lr, #-613]!	; 0x265
 3d8:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 3dc:	65647061 	strbvs	r7, [r4, #-97]!	; 0x61
 3e0:	74636574 	strbtvc	r6, [r3], #-1396	; 0x574
 3e4:	732f726f 	teqvc	pc, #-268435450	; 0xf0000006
 3e8:	33006372 	movwcc	r6, #882	; 0x372
 3ec:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
 3f0:	692f6b62 	stmdbvs	pc!, {r1, r5, r6, r8, r9, fp, sp, lr}	; <UNPREDICTABLE>
 3f4:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
 3f8:	6b006564 	blvs	19990 <__bss_end+0xe990>
 3fc:	656e7265 	strbvs	r7, [lr, #-613]!	; 0x265
 400:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 404:	65647061 	strbvs	r7, [r4, #-97]!	; 0x61
 408:	74636574 	strbtvc	r6, [r3], #-1396	; 0x574
 40c:	692f726f 	stmdbvs	pc!, {r0, r1, r2, r3, r5, r6, r9, ip, sp, lr}	; <UNPREDICTABLE>
 410:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
 414:	00006564 	andeq	r6, r0, r4, ror #10
 418:	31736461 	cmncc	r3, r1, ror #8
 41c:	2e353130 	mrccs	1, 1, r3, cr5, cr0, {1}
 420:	00010063 	andeq	r0, r1, r3, rrx
 424:	74736b00 	ldrbtvc	r6, [r3], #-2816	; 0xb00
 428:	746e6964 	strbtvc	r6, [lr], #-2404	; 0x964
 42c:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 430:	32690000 	rsbcc	r0, r9, #0
 434:	00682e63 	rsbeq	r2, r8, r3, ror #28
 438:	00000003 	andeq	r0, r0, r3
 43c:	3c020500 	cfstr32cc	mvfx0, [r2], {-0}
 440:	03000089 	movweq	r0, #137	; 0x89
 444:	692f0120 	stmdbvs	pc!, {r5, r8}	; <UNPREDICTABLE>
 448:	a1bb4b4c 			; <UNDEFINED> instruction: 0xa1bb4b4c
 44c:	bb2f2933 	bllt	bca920 <__user_program+0x8ca920>
 450:	856a6888 	strbhi	r6, [sl, #-2184]!	; 0x888
 454:	04022f84 	streq	r2, [r2], #-3972	; 0xf84
 458:	54010100 	strpl	r0, [r1], #-256	; 0x100
 45c:	02000000 	andeq	r0, r0, #0
 460:	00002900 	andeq	r2, r0, r0, lsl #18
 464:	fb010200 	blx	40c6e <__bss_end+0x35c6e>
 468:	01000d0e 	tsteq	r0, lr, lsl #26
 46c:	00010101 	andeq	r0, r1, r1, lsl #2
 470:	00010000 	andeq	r0, r1, r0
 474:	34330100 	ldrtcc	r0, [r3], #-256	; 0x100
 478:	62696c39 	rsbvs	r6, r9, #14592	; 0x3900
 47c:	72732f6b 	rsbsvc	r2, r3, #428	; 0x1ac
 480:	62000063 	andvs	r0, r0, #99	; 0x63
 484:	2e746f6f 	cdpcs	15, 7, cr6, cr4, cr15, {3}
 488:	00010053 	andeq	r0, r1, r3, asr r0
 48c:	05000000 	streq	r0, [r0, #-0]
 490:	00800002 	addeq	r0, r0, r2
 494:	011b0300 	tsteq	fp, r0, lsl #6
 498:	302f2f2f 	eorcc	r2, pc, pc, lsr #30
 49c:	2f2f2f2f 	svccs	0x002f2f2f
 4a0:	2f312f2f 	svccs	0x00312f2f
 4a4:	2f33312f 	svccs	0x0033312f
 4a8:	312e6903 	teqcc	lr, r3, lsl #18
 4ac:	02022f2f 	andeq	r2, r2, #47, 30	; 0xbc
 4b0:	4d010100 	stfmis	f0, [r1, #-0]
 4b4:	02000000 	andeq	r0, r0, #0
 4b8:	00002800 	andeq	r2, r0, r0, lsl #16
 4bc:	fb010200 	blx	40cc6 <__bss_end+0x35cc6>
 4c0:	01000d0e 	tsteq	r0, lr, lsl #26
 4c4:	00010101 	andeq	r0, r1, r1, lsl #2
 4c8:	00010000 	andeq	r0, r1, r0
 4cc:	34330100 	ldrtcc	r0, [r3], #-256	; 0x100
 4d0:	62696c39 	rsbvs	r6, r9, #14592	; 0x3900
 4d4:	72732f6b 	rsbsvc	r2, r3, #428	; 0x1ac
 4d8:	61000063 	tstvs	r0, r3, rrx
 4dc:	532e6d72 	teqpl	lr, #7296	; 0x1c80
 4e0:	00000100 	andeq	r0, r0, r0, lsl #2
 4e4:	02050000 	andeq	r0, r5, #0
 4e8:	00008a00 	andeq	r8, r0, r0, lsl #20
 4ec:	2f011003 	svccs	0x00011003
 4f0:	332f332f 	teqcc	pc, #-1140850688	; 0xbc000000
 4f4:	2f2f332f 	svccs	0x002f332f
 4f8:	2f332f2f 	svccs	0x00332f2f
 4fc:	022f2f2f 	eoreq	r2, pc, #47, 30	; 0xbc
 500:	01010002 	tsteq	r1, r2

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	70670074 	rsbvc	r0, r7, r4, ror r0
  10:	735f6f69 	cmpvc	pc, #420	; 0x1a4
  14:	705f7465 	subsvc	r7, pc, r5, ror #8
  18:	006c6c75 	rsbeq	r6, ip, r5, ror ip
  1c:	6f697067 	svcvs	0x00697067
  20:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
  24:	65735f6f 	ldrbvs	r5, [r3, #-3951]!	; 0xf6f
  28:	6f6c0074 	svcvs	0x006c0074
  2c:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
  30:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  34:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  38:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xe67
  3c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0x920
  40:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
  44:	6c635f6f 	stclvs	15, cr5, [r3], #-444	; 0xfffffe44
  48:	666f0072 			; <UNDEFINED> instruction: 0x666f0072
  4c:	74657366 	strbtvc	r7, [r5], #-870	; 0x366
  50:	6e697500 	cdpvs	5, 6, cr7, cr9, cr0, {0}
  54:	745f3874 	ldrbvc	r3, [pc], #-2164	; 5c <__start-0x7fa4>
  58:	736e7500 	cmnvc	lr, #0, 10
  5c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0x769
  60:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
  64:	75007261 	strvc	r7, [r0, #-609]	; 0x261
  68:	33746e69 	cmncc	r4, #1680	; 0x690
  6c:	00745f32 	rsbseq	r5, r4, r2, lsr pc
  70:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
  74:	6e752074 	mrcvs	0, 3, r2, cr5, cr4, {3}
  78:	6e676973 	mcrvs	9, 3, r6, cr7, cr3, {3}
  7c:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  80:	2f00746e 	svccs	0x0000746e
  84:	656d6f68 	strbvs	r6, [sp, #-3944]!	; 0xf68
  88:	6563652f 	strbvs	r6, [r3, #-1327]!	; 0x52f
  8c:	2f393433 	svccs	0x00393433
  90:	2f393433 	svccs	0x00393433
  94:	31662f31 	cmncc	r6, r1, lsr pc
  98:	616c2d37 	cmnvs	ip, r7, lsr sp
  9c:	642d3162 	strtvs	r3, [sp], #-354	; 0x162
  a0:	64697661 	strbtvs	r7, [r9], #-1633	; 0x661
  a4:	39327579 	ldmdbcc	r2!, {r0, r3, r4, r5, r6, r8, sl, ip, sp, lr}
  a8:	646f632f 	strbtvs	r6, [pc], #-815	; b0 <__start-0x7f50>
  ac:	4e470065 	cdpmi	0, 4, cr0, cr7, cr5, {3}
  b0:	20432055 	subcs	r2, r3, r5, asr r0
  b4:	2e392e34 	mrccs	14, 1, r2, cr9, cr4, {1}
  b8:	30322033 	eorscc	r2, r2, r3, lsr r0
  bc:	35303531 	ldrcc	r3, [r0, #-1329]!	; 0x531
  c0:	28203932 	stmdacs	r0!, {r1, r4, r5, r8, fp, ip, sp}
  c4:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0x572
  c8:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  cc:	52415b20 	subpl	r5, r1, #32, 22	; 0x8000
  d0:	6d652f4d 	stclvs	15, cr2, [r5, #-308]!	; 0xfffffecc
  d4:	64646562 	strbtvs	r6, [r4], #-1378	; 0x562
  d8:	342d6465 	strtcc	r6, [sp], #-1125	; 0x465
  dc:	622d395f 	eorvs	r3, sp, #1556480	; 0x17c000
  e0:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
  e4:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0x68
  e8:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
  ec:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
  f0:	38323432 	ldmdacc	r2!, {r1, r4, r5, sl, ip, sp}
  f4:	2d205d38 	stccs	13, cr5, [r0, #-224]!	; 0xffffff20
  f8:	6f6c666d 	svcvs	0x006c666d
  fc:	612d7461 	teqvs	sp, r1, ror #8
 100:	733d6962 	teqvc	sp, #1605632	; 0x188000
 104:	2074666f 	rsbscs	r6, r4, pc, ror #12
 108:	72616d2d 	rsbvc	r6, r1, #2880	; 0xb40
 10c:	613d6863 	teqvs	sp, r3, ror #16
 110:	37766d72 			; <UNDEFINED> instruction: 0x37766d72
 114:	2d20612d 	stfcss	f6, [r0, #-180]!	; 0xffffff4c
 118:	4f2d2067 	svcmi	0x002d2067
 11c:	4f2d2031 	svcmi	0x002d2031
 120:	662d2030 			; <UNDEFINED> instruction: 0x662d2030
 124:	65657266 	strbvs	r7, [r5, #-614]!	; 0x266
 128:	6e617473 	mcrvs	4, 3, r7, cr1, cr3, {3}
 12c:	676e6964 	strbvs	r6, [lr, -r4, ror #18]!
 130:	61747300 	cmnvs	r4, r0, lsl #6
 134:	67006574 	smlsdxvs	r0, r4, r5, r6
 138:	5f6f6970 	svcpl	0x006f6970
 13c:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 140:	73006769 	movwvc	r6, #1897	; 0x769
 144:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xf68
 148:	746e6920 	strbtvc	r6, [lr], #-2336	; 0x920
 14c:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
 150:	6b62696c 	blvs	189a708 <__user_program+0x159a708>
 154:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 158:	6970672f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r8, r9, sl, sp, lr}^
 15c:	00632e6f 	rsbeq	r2, r3, pc, ror #28
 160:	74726175 	ldrbtvc	r6, [r2], #-373	; 0x175
 164:	7465675f 	strbtvc	r6, [r5], #-1887	; 0x75f
 168:	7479625f 	ldrbtvc	r6, [r9], #-607	; 0x25f
 16c:	6f730065 	svcvs	0x00730065
 170:	5f646e75 	svcpl	0x00646e75
 174:	006c6176 	rsbeq	r6, ip, r6, ror r1
 178:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
 17c:	61006b74 	tstvs	r0, r4, ror fp
 180:	695f6364 	ldmdbvs	pc, {r2, r5, r6, r8, r9, sp, lr}^	; <UNPREDICTABLE>
 184:	0074696e 	rsbseq	r6, r4, lr, ror #18
 188:	20554e47 	subscs	r4, r5, r7, asr #28
 18c:	2e342043 	cdpcs	0, 3, cr2, cr4, cr3, {2}
 190:	20332e39 	eorscs	r2, r3, r9, lsr lr
 194:	35313032 	ldrcc	r3, [r1, #-50]!	; 0x32
 198:	39323530 	ldmdbcc	r2!, {r4, r5, r8, sl, ip, sp}
 19c:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0x820
 1a0:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
 1a4:	5b202965 	blpl	80a740 <__user_program+0x50a740>
 1a8:	2f4d5241 	svccs	0x004d5241
 1ac:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xd65
 1b0:	64656464 	strbtvs	r6, [r5], #-1124	; 0x464
 1b4:	395f342d 	ldmdbcc	pc, {r0, r2, r3, r5, sl, ip, sp}^	; <UNPREDICTABLE>
 1b8:	6172622d 	cmnvs	r2, sp, lsr #4
 1bc:	2068636e 	rsbcs	r6, r8, lr, ror #6
 1c0:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
 1c4:	6e6f6973 	mcrvs	9, 3, r6, cr15, cr3, {3}
 1c8:	34323220 	ldrtcc	r3, [r2], #-544	; 0x220
 1cc:	5d383832 	ldcpl	8, cr3, [r8, #-200]!	; 0xffffff38
 1d0:	666d2d20 	strbtvs	r2, [sp], -r0, lsr #26
 1d4:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xf6c
 1d8:	6962612d 	stmdbvs	r2!, {r0, r2, r3, r5, r8, sp, lr}^
 1dc:	666f733d 			; <UNDEFINED> instruction: 0x666f733d
 1e0:	6d2d2074 	stcvs	0, cr2, [sp, #-464]!	; 0xfffffe30
 1e4:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
 1e8:	6d72613d 	ldfvse	f6, [r2, #-244]!	; 0xffffff0c
 1ec:	612d3776 	teqvs	sp, r6, ror r7
 1f0:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 1f4:	20314f2d 	eorscs	r4, r1, sp, lsr #30
 1f8:	7266662d 	rsbvc	r6, r6, #47185920	; 0x2d00000
 1fc:	74736565 	ldrbtvc	r6, [r3], #-1381	; 0x565
 200:	69646e61 	stmdbvs	r4!, {r0, r5, r6, r9, sl, fp, sp, lr}^
 204:	6c00676e 	stcvs	7, cr6, [r0], {110}	; 0x6e
 208:	74686769 	strbtvc	r6, [r8], #-1897	; 0x769
 20c:	6c61765f 	stclvs	6, cr7, [r1], #-380	; 0xfffffe84
 210:	72656b00 	rsbvc	r6, r5, #0, 22
 214:	5f6c656e 	svcpl	0x006c656e
 218:	70616c63 	rsbvc	r6, r1, r3, ror #24
 21c:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0x564
 220:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 224:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 228:	72656b2f 	rsbvc	r6, r5, #48128	; 0xbc00
 22c:	2e6c656e 	cdpcs	5, 6, cr6, cr12, cr14, {3}
 230:	61750063 	cmnvs	r5, r3, rrx
 234:	695f7472 	ldmdbvs	pc, {r1, r4, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
 238:	0074696e 	rsbseq	r6, r4, lr, ror #18
 23c:	6e616863 	cdpvs	8, 6, cr6, cr1, cr3, {3}
 240:	006c656e 	rsbeq	r6, ip, lr, ror #10
 244:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 248:	6d5f6c65 	ldclvs	12, cr6, [pc, #-404]	; bc <__start-0x7f44>
 24c:	006e6961 	rsbeq	r6, lr, r1, ror #18
 250:	746e6975 	strbtvc	r6, [lr], #-2421	; 0x975
 254:	745f3631 	ldrbvc	r3, [pc], #-1585	; 25c <__start-0x7da4>
 258:	63646100 	cmnvs	r4, #0, 2
 25c:	6165725f 	cmnvs	r5, pc, asr r2
 260:	79620064 	stmdbvc	r2!, {r2, r5, r6}^
 264:	705f6574 	subsvc	r6, pc, r4, ror r5	; <UNPREDICTABLE>
 268:	75007274 	strvc	r7, [r0, #-628]	; 0x274
 26c:	36746e69 	ldrbtcc	r6, [r4], -r9, ror #28
 270:	00745f34 	rsbseq	r5, r4, r4, lsr pc
 274:	61765f5f 	cmnvs	r6, pc, asr pc
 278:	73696c5f 	cmnvc	r9, #24320	; 0x5f00
 27c:	69640074 	stmdbvs	r4!, {r2, r4, r5, r6}^
 280:	73746967 	cmnvc	r4, #1687552	; 0x19c000
 284:	72617500 	rsbvc	r7, r1, #0, 10
 288:	75705f74 	ldrbvc	r5, [r0, #-3956]!	; 0xf74
 28c:	79625f74 	stmdbvc	r2!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
 290:	70006574 	andvc	r6, r0, r4, ror r5
 294:	746e6972 	strbtvc	r6, [lr], #-2418	; 0x972
 298:	6b6d756e 	blvs	1b5d858 <__user_program+0x185d858>
 29c:	65727000 	ldrbvs	r7, [r2, #-0]!
 2a0:	00786966 	rsbseq	r6, r8, r6, ror #18
 2a4:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0x162
 2a8:	72656b00 	rsbvc	r6, r5, #0, 22
 2ac:	5f6c656e 	svcpl	0x006c656e
 2b0:	70616c63 	rsbvc	r6, r1, r3, ror #24
 2b4:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0x564
 2b8:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 2bc:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 2c0:	6972702f 	ldmdbvs	r2!, {r0, r1, r2, r3, r5, ip, sp, lr}^
 2c4:	2e6b746e 	cdpcs	4, 6, cr7, cr11, cr14, {3}
 2c8:	72610063 	rsbvc	r0, r1, #99	; 0x63
 2cc:	73007367 	movwvc	r7, #871	; 0x367
 2d0:	74657a69 	strbtvc	r7, [r5], #-2665	; 0xa69
 2d4:	00657079 	rsbeq	r7, r5, r9, ror r0
 2d8:	70615f5f 	rsbvc	r5, r1, pc, asr pc
 2dc:	72656b00 	rsbvc	r6, r5, #0, 22
 2e0:	5f6c656e 	svcpl	0x006c656e
 2e4:	70616c63 	rsbvc	r6, r1, r3, ror #24
 2e8:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0x564
 2ec:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 2f0:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 2f4:	7261752f 	rsbvc	r7, r1, #197132288	; 0xbc00000
 2f8:	00632e74 	rsbeq	r2, r3, r4, ror lr
 2fc:	74726175 	ldrbtvc	r6, [r2], #-373	; 0x175
 300:	6f6c635f 	svcvs	0x006c635f
 304:	69006573 	stmdbvs	r0, {r0, r1, r4, r5, r6, r8, sl, sp, lr}
 308:	6d5f6332 	ldclvs	3, cr6, [pc, #-200]	; 248 <__start-0x7db8>
 30c:	65747361 	ldrbvs	r7, [r4, #-865]!	; 0x361
 310:	6e695f72 	mcrvs	15, 3, r5, cr9, cr2, {3}
 314:	6b007469 	blvs	1d4c0 <__bss_end+0x124c0>
 318:	656e7265 	strbvs	r7, [lr, #-613]!	; 0x265
 31c:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 320:	65647061 	strbvs	r7, [r4, #-97]!	; 0x61
 324:	74636574 	strbtvc	r6, [r3], #-1396	; 0x574
 328:	732f726f 	teqvc	pc, #-268435450	; 0xf0000006
 32c:	692f6372 	stmdbvs	pc!, {r1, r4, r5, r6, r8, r9, sp, lr}	; <UNPREDICTABLE>
 330:	632e6332 	teqvs	lr, #-939524096	; 0xc8000000
 334:	64646100 	strbtvs	r6, [r4], #-256	; 0x100
 338:	32690072 	rsbcc	r0, r9, #114	; 0x72
 33c:	616d5f63 	cmnvs	sp, r3, ror #30
 340:	72657473 	rsbvc	r7, r5, #1929379840	; 0x73000000
 344:	6165725f 	cmnvs	r5, pc, asr r2
 348:	32690064 	rsbcc	r0, r9, #100	; 0x64
 34c:	616d5f63 	cmnvs	sp, r3, ror #30
 350:	72657473 	rsbvc	r7, r5, #1929379840	; 0x73000000
 354:	6972775f 	ldmdbvs	r2!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, sp, lr}^
 358:	6b006574 	blvs	19930 <__bss_end+0xe930>
 35c:	656e7265 	strbvs	r7, [lr, #-613]!	; 0x265
 360:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 364:	65647061 	strbvs	r7, [r4, #-97]!	; 0x61
 368:	74636574 	strbtvc	r6, [r3], #-1396	; 0x574
 36c:	732f726f 	teqvc	pc, #-268435450	; 0xf0000006
 370:	612f6372 	teqvs	pc, r2, ror r3	; <UNPREDICTABLE>
 374:	30317364 	eorscc	r7, r1, r4, ror #6
 378:	632e3531 	teqvs	lr, #205520896	; 0xc400000
 37c:	6e6f6300 	cdpvs	3, 6, cr6, cr15, cr0, {0}
 380:	5f676966 	svcpl	0x00676966
 384:	61746164 	cmnvs	r4, r4, ror #2
 388:	61657200 	cmnvs	r5, r0, lsl #4
 38c:	61765f64 	cmnvs	r6, r4, ror #30
 390:	0065756c 	rsbeq	r7, r5, ip, ror #10
 394:	766e6f63 	strbtvc	r6, [lr], -r3, ror #30
 398:	69737265 	ldmdbvs	r3!, {r0, r2, r5, r6, r9, ip, sp, lr}^
 39c:	645f6e6f 	ldrbvs	r6, [pc], #-3695	; 3a4 <__start-0x7c5c>
 3a0:	00617461 	rsbeq	r7, r1, r1, ror #8

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <__user_program+0xdd0d24>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	204d5241 	subcs	r5, sp, r1, asr #4
  18:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xd45
  1c:	64656464 	strbtvs	r6, [r5], #-1124	; 0x464
  20:	6f725020 	svcvs	0x00725020
  24:	73736563 	cmnvc	r3, #415236096	; 0x18c00000
  28:	2973726f 	ldmdbcs	r3!, {r0, r1, r2, r3, r5, r6, r9, ip, sp, lr}^
  2c:	392e3420 	stmdbcc	lr!, {r5, sl, ip, sp}
  30:	3220332e 	eorcc	r3, r0, #-1207959552	; 0xb8000000
  34:	30353130 	eorscc	r3, r5, r0, lsr r1
  38:	20393235 	eorscs	r3, r9, r5, lsr r2
  3c:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
  40:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0x165
  44:	415b2029 	cmpmi	fp, r9, lsr #32
  48:	652f4d52 	strvs	r4, [pc, #-3410]!	; fffff2fe <__user_program+0xffcff2fe>
  4c:	6465626d 	strbtvs	r6, [r5], #-621	; 0x26d
  50:	2d646564 	cfstr64cs	mvdx6, [r4, #-400]!	; 0xfffffe70
  54:	2d395f34 	ldccs	15, cr5, [r9, #-208]!	; 0xffffff30
  58:	6e617262 	cdpvs	2, 6, cr7, cr1, cr2, {3}
  5c:	72206863 	eorvc	r6, r0, #6488064	; 0x630000
  60:	73697665 	cmnvc	r9, #105906176	; 0x6500000
  64:	206e6f69 	rsbcs	r6, lr, r9, ror #30
  68:	32343232 	eorscc	r3, r4, #536870915	; 0x20000003
  6c:	005d3838 	subseq	r3, sp, r8, lsr r8

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002c41 	andeq	r2, r0, r1, asr #24
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000022 	andeq	r0, r0, r2, lsr #32
  10:	412d3705 	teqmi	sp, r5, lsl #14
  14:	070a0600 	streq	r0, [sl, -r0, lsl #12]
  18:	09010841 	stmdbeq	r1, {r0, r6, fp}
  1c:	14041202 	strne	r1, [r4], #-514	; 0x202
  20:	17011501 	strne	r1, [r1, -r1, lsl #10]
  24:	1a011803 	bne	46038 <__bss_end+0x3b038>
  28:	22061e01 	andcs	r1, r6, #1, 28
  2c:	Address 0x0000002c is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	0000001c 	andeq	r0, r0, ip, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	00008054 	andeq	r8, r0, r4, asr r0
  1c:	00000120 	andeq	r0, r0, r0, lsr #2
  20:	8b040e42 	blhi	103930 <__bss_end+0xf8930>
  24:	0b0d4201 	bleq	350830 <__user_program+0x50830>
  28:	0d0d8802 	stceq	8, cr8, [sp, #-8]
  2c:	000ecb42 	andeq	ip, lr, r2, asr #22
  30:	0000001c 	andeq	r0, r0, ip, lsl r0
  34:	00000000 	andeq	r0, r0, r0
  38:	00008174 	andeq	r8, r0, r4, ror r1
  3c:	00000084 	andeq	r0, r0, r4, lsl #1
  40:	8b040e42 	blhi	103950 <__bss_end+0xf8950>
  44:	0b0d4201 	bleq	350850 <__user_program+0x50850>
  48:	420d0d7a 	andmi	r0, sp, #7808	; 0x1e80
  4c:	00000ecb 	andeq	r0, r0, fp, asr #29
  50:	0000001c 	andeq	r0, r0, ip, lsl r0
  54:	00000000 	andeq	r0, r0, r0
  58:	000081f8 	strdeq	r8, [r0], -r8	; <UNPREDICTABLE>
  5c:	00000084 	andeq	r0, r0, r4, lsl #1
  60:	8b040e42 	blhi	103970 <__bss_end+0xf8970>
  64:	0b0d4201 	bleq	350870 <__user_program+0x50870>
  68:	420d0d7a 	andmi	r0, sp, #7808	; 0x1e80
  6c:	00000ecb 	andeq	r0, r0, fp, asr #29
  70:	0000001c 	andeq	r0, r0, ip, lsl r0
  74:	00000000 	andeq	r0, r0, r0
  78:	0000827c 	andeq	r8, r0, ip, ror r2
  7c:	000000f8 	strdeq	r0, [r0], -r8
  80:	8b080e42 	blhi	203990 <__end+0xd7990>
  84:	42018e02 	andmi	r8, r1, #2, 28
  88:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
  8c:	080d0c76 	stmdaeq	sp, {r1, r2, r4, r5, r6, sl, fp}
  90:	0000000c 	andeq	r0, r0, ip
  94:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  98:	7c020001 	stcvc	0, cr0, [r2], {1}
  9c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  a0:	00000024 	andeq	r0, r0, r4, lsr #32
  a4:	00000090 	muleq	r0, r0, r0
  a8:	00008374 	andeq	r8, r0, r4, ror r3
  ac:	000000c4 	andeq	r0, r0, r4, asr #1
  b0:	83280e42 	teqhi	r8, #1056	; 0x420
  b4:	8509840a 	strhi	r8, [r9, #-1034]	; 0x40a
  b8:	87078608 	strhi	r8, [r7, -r8, lsl #12]
  bc:	89058806 	stmdbhi	r5, {r1, r2, fp, pc}
  c0:	8b038a04 	blhi	e28d8 <__bss_end+0xd78d8>
  c4:	00018e02 	andeq	r8, r1, r2, lsl #28
  c8:	0000000c 	andeq	r0, r0, ip
  cc:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  d0:	7c020001 	stcvc	0, cr0, [r2], {1}
  d4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  d8:	00000028 	andeq	r0, r0, r8, lsr #32
  dc:	000000c8 	andeq	r0, r0, r8, asr #1
  e0:	00008438 	andeq	r8, r0, r8, lsr r4
  e4:	000000e0 	andeq	r0, r0, r0, ror #1
  e8:	84200e42 	strthi	r0, [r0], #-3650	; 0xe42
  ec:	86078508 	strhi	r8, [r7], -r8, lsl #10
  f0:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
  f4:	8a038904 	bhi	e250c <__bss_end+0xd750c>
  f8:	42018e02 	andmi	r8, r1, #2, 28
  fc:	6a02280e 	bvs	8a13c <__bss_end+0x7f13c>
 100:	0000200e 	andeq	r2, r0, lr
 104:	00000040 	andeq	r0, r0, r0, asr #32
 108:	000000c8 	andeq	r0, r0, r8, asr #1
 10c:	00008518 	andeq	r8, r0, r8, lsl r5
 110:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
 114:	80100e42 	andshi	r0, r0, r2, asr #28
 118:	82038104 	andhi	r8, r3, #4, 2
 11c:	42018302 	andmi	r8, r1, #134217728	; 0x8000000
 120:	0a84280e 	beq	fe10a160 <__user_program+0xfde0a160>
 124:	08860985 	stmeq	r6, {r0, r2, r7, r8, fp}
 128:	06880787 	streq	r0, [r8], r7, lsl #15
 12c:	0e42058e 	cdpeq	5, 4, cr0, cr2, cr14, {4}
 130:	0ed00230 	mrceq	2, 6, r0, cr0, cr0, {1}
 134:	c8ce4228 	stmiagt	lr, {r3, r5, r9, lr}^
 138:	c4c5c6c7 	strbgt	ip, [r5], #1735	; 0x6c7
 13c:	c342100e 	movtgt	r1, #8206	; 0x200e
 140:	0ec0c1c2 	acseqdm	f4, f2
 144:	00000000 	andeq	r0, r0, r0
 148:	0000000c 	andeq	r0, r0, ip
 14c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 150:	7c020001 	stcvc	0, cr0, [r2], {1}
 154:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 158:	00000014 	andeq	r0, r0, r4, lsl r0
 15c:	00000148 	andeq	r0, r0, r8, asr #2
 160:	000086d0 	ldrdeq	r8, [r0], -r0
 164:	00000070 	andeq	r0, r0, r0, ror r0
 168:	83080e42 	movwhi	r0, #36418	; 0x8e42
 16c:	00018e02 	andeq	r8, r1, r2, lsl #28
 170:	0000000c 	andeq	r0, r0, ip
 174:	00000148 	andeq	r0, r0, r8, asr #2
 178:	00008740 	andeq	r8, r0, r0, asr #14
 17c:	00000014 	andeq	r0, r0, r4, lsl r0
 180:	0000000c 	andeq	r0, r0, ip
 184:	00000148 	andeq	r0, r0, r8, asr #2
 188:	00008754 	andeq	r8, r0, r4, asr r7
 18c:	00000028 	andeq	r0, r0, r8, lsr #32
 190:	0000000c 	andeq	r0, r0, ip
 194:	00000148 	andeq	r0, r0, r8, asr #2
 198:	0000877c 	andeq	r8, r0, ip, ror r7
 19c:	0000002c 	andeq	r0, r0, ip, lsr #32
 1a0:	0000000c 	andeq	r0, r0, ip
 1a4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 1a8:	7c020001 	stcvc	0, cr0, [r2], {1}
 1ac:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 1b0:	00000014 	andeq	r0, r0, r4, lsl r0
 1b4:	000001a0 	andeq	r0, r0, r0, lsr #3
 1b8:	000087a8 	andeq	r8, r0, r8, lsr #15
 1bc:	00000054 	andeq	r0, r0, r4, asr r0
 1c0:	83080e42 	movwhi	r0, #36418	; 0x8e42
 1c4:	00018e02 	andeq	r8, r1, r2, lsl #28
 1c8:	0000000c 	andeq	r0, r0, ip
 1cc:	000001a0 	andeq	r0, r0, r0, lsr #3
 1d0:	000087fc 	strdeq	r8, [r0], -ip
 1d4:	000000a4 	andeq	r0, r0, r4, lsr #1
 1d8:	0000000c 	andeq	r0, r0, ip
 1dc:	000001a0 	andeq	r0, r0, r0, lsr #3
 1e0:	000088a0 	andeq	r8, r0, r0, lsr #17
 1e4:	0000009c 	muleq	r0, ip, r0
 1e8:	0000000c 	andeq	r0, r0, ip
 1ec:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 1f0:	7c020001 	stcvc	0, cr0, [r2], {1}
 1f4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 1f8:	00000014 	andeq	r0, r0, r4, lsl r0
 1fc:	000001e8 	andeq	r0, r0, r8, ror #3
 200:	0000893c 	andeq	r8, r0, ip, lsr r9
 204:	00000010 	andeq	r0, r0, r0, lsl r0
 208:	83080e42 	movwhi	r0, #36418	; 0x8e42
 20c:	00018e02 	andeq	r8, r1, r2, lsl #28
 210:	00000018 	andeq	r0, r0, r8, lsl r0
 214:	000001e8 	andeq	r0, r0, r8, ror #3
 218:	0000894c 	andeq	r8, r0, ip, asr #18
 21c:	000000b4 	strheq	r0, [r0], -r4
 220:	8e040e42 	cdphi	14, 0, cr0, cr4, cr2, {2}
 224:	180e4201 	stmdane	lr, {r0, r9, lr}
 228:	040e5402 	streq	r5, [lr], #-1026	; 0x402
 22c:	0000000c 	andeq	r0, r0, ip
 230:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 234:	7c010001 	stcvc	0, cr0, [r1], {1}
 238:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 23c:	00000014 	andeq	r0, r0, r4, lsl r0
 240:	0000022c 	andeq	r0, r0, ip, lsr #4
 244:	00008a44 	andeq	r8, r0, r4, asr #20
 248:	0000003c 	andeq	r0, r0, ip, lsr r0
 24c:	0e038e68 	cdpeq	14, 0, cr8, cr3, cr8, {3}
 250:	00000010 	andeq	r0, r0, r0, lsl r0
 254:	0000000c 	andeq	r0, r0, ip
 258:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 25c:	7c020001 	stcvc	0, cr0, [r2], {1}
 260:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 264:	0000002c 	andeq	r0, r0, ip, lsr #32
 268:	00000254 	andeq	r0, r0, r4, asr r2
 26c:	00008a80 	andeq	r8, r0, r0, lsl #21
 270:	00000044 	andeq	r0, r0, r4, asr #32
 274:	84200e42 	strthi	r0, [r0], #-3650	; 0xe42
 278:	86078508 	strhi	r8, [r7], -r8, lsl #10
 27c:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 280:	8a038904 	bhi	e2698 <__bss_end+0xd7698>
 284:	5e018e02 	cdppl	14, 0, cr8, cr1, cr2, {0}
 288:	c8c9cace 	stmiagt	r9, {r1, r2, r3, r6, r7, r9, fp, lr, pc}^
 28c:	c4c5c6c7 	strbgt	ip, [r5], #1735	; 0x6c7
 290:	0000000e 	andeq	r0, r0, lr
 294:	00000024 	andeq	r0, r0, r4, lsr #32
 298:	00000254 	andeq	r0, r0, r4, asr r2
 29c:	00008ac4 	andeq	r8, r0, r4, asr #21
 2a0:	00000040 	andeq	r0, r0, r0, asr #32
 2a4:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xe42
 2a8:	86058506 	strhi	r8, [r5], -r6, lsl #10
 2ac:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 2b0:	5c018e02 	stcpl	14, cr8, [r1], {2}
 2b4:	c6c7c8ce 	strbgt	ip, [r7], lr, asr #17
 2b8:	000ec4c5 	andeq	ip, lr, r5, asr #9
 2bc:	0000000c 	andeq	r0, r0, ip
 2c0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 2c4:	7c020001 	stcvc	0, cr0, [r2], {1}
 2c8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 2cc:	00000034 	andeq	r0, r0, r4, lsr r0
 2d0:	000002bc 			; <UNDEFINED> instruction: 0x000002bc
 2d4:	00008b08 	andeq	r8, r0, r8, lsl #22
 2d8:	00000178 	andeq	r0, r0, r8, ror r1
 2dc:	83280e44 	teqhi	r8, #68, 28	; 0x440
 2e0:	8509840a 	strhi	r8, [r9, #-1034]	; 0x40a
 2e4:	87078608 	strhi	r8, [r7, -r8, lsl #12]
 2e8:	89058806 	stmdbhi	r5, {r1, r2, fp, pc}
 2ec:	8b038a04 	blhi	e2b04 <__bss_end+0xd7b04>
 2f0:	02018e02 	andeq	r8, r1, #2, 28
 2f4:	cbce0aa6 	blgt	ff382d94 <__user_program+0xff082d94>
 2f8:	c7c8c9ca 	strbgt	ip, [r8, sl, asr #19]
 2fc:	c3c4c5c6 	bicgt	ip, r4, #830472192	; 0x31800000
 300:	0b42000e 	bleq	1080340 <__user_program+0xd80340>
 304:	0000000c 	andeq	r0, r0, ip
 308:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 30c:	7c020001 	stcvc	0, cr0, [r2], {1}
 310:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 314:	0000002c 	andeq	r0, r0, ip, lsr #32
 318:	00000304 	andeq	r0, r0, r4, lsl #6
 31c:	00008c80 	andeq	r8, r0, r0, lsl #25
 320:	00000120 	andeq	r0, r0, r0, lsr #2
 324:	84200e46 	strthi	r0, [r0], #-3654	; 0xe46
 328:	86078508 	strhi	r8, [r7], -r8, lsl #10
 32c:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 330:	8a038904 	bhi	e2748 <__bss_end+0xd7748>
 334:	02018e02 	andeq	r8, r1, #2, 28
 338:	c9cace88 	stmibgt	sl, {r3, r7, r9, sl, fp, lr, pc}^
 33c:	c5c6c7c8 	strbgt	ip, [r6, #1992]	; 0x7c8
 340:	00000ec4 	andeq	r0, r0, r4, asr #29

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000028 	andeq	r0, r0, r8, lsr #32
   4:	00000034 	andeq	r0, r0, r4, lsr r0
   8:	4c500001 	mrrcmi	0, 0, r0, r0, cr1	; <UNPREDICTABLE>
   c:	5c000000 	stcpl	0, cr0, [r0], {-0}
  10:	01000000 	mrseq	r0, (UNDEF: 0)
  14:	00005000 	andeq	r5, r0, r0
  18:	00000000 	andeq	r0, r0, r0
  1c:	005c0000 	subseq	r0, ip, r0
  20:	00a00000 	adceq	r0, r0, r0
  24:	00020000 	andeq	r0, r2, r0
  28:	00a09f30 	adceq	r9, r0, r0, lsr pc
  2c:	00c40000 	sbceq	r0, r4, r0
  30:	00010000 	andeq	r0, r1, r0
  34:	00000054 	andeq	r0, r0, r4, asr r0
  38:	00000000 	andeq	r0, r0, r0
  3c:	00005c00 	andeq	r5, r0, r0, lsl #24
  40:	00006c00 	andeq	r6, r0, r0, lsl #24
  44:	0a000400 	beq	104c <__start-0x6fb4>
  48:	6c9f03e8 	ldcvs	3, cr0, [pc], {232}	; 0xe8
  4c:	7c000000 	stcvc	0, cr0, [r0], {-0}
  50:	01000000 	mrseq	r0, (UNDEF: 0)
  54:	00905600 	addseq	r5, r0, r0, lsl #12
  58:	00c40000 	sbceq	r0, r4, r0
  5c:	00010000 	andeq	r0, r1, r0
  60:	00000056 	andeq	r0, r0, r6, asr r0
  64:	00000000 	andeq	r0, r0, r0
  68:	00005c00 	andeq	r5, r0, r0, lsl #24
  6c:	00006c00 	andeq	r6, r0, r0, lsl #24
  70:	30000200 	andcc	r0, r0, r0, lsl #4
  74:	00006c9f 	muleq	r0, pc, ip	; <UNPREDICTABLE>
  78:	00008c00 	andeq	r8, r0, r0, lsl #24
  7c:	55000100 	strpl	r0, [r0, #-256]	; 0x100
  80:	00000090 	muleq	r0, r0, r0
  84:	000000c4 	andeq	r0, r0, r4, asr #1
  88:	00550001 	subseq	r0, r5, r1
  8c:	00000000 	andeq	r0, r0, r0
  90:	5c000000 	stcpl	0, cr0, [r0], {-0}
  94:	6c000000 	stcvs	0, cr0, [r0], {-0}
  98:	02000000 	andeq	r0, r0, #0
  9c:	6c9f3000 	ldcvs	0, cr3, [pc], {0}
  a0:	90000000 	andls	r0, r0, r0
  a4:	06000000 	streq	r0, [r0], -r0
  a8:	74c80800 	strbvc	r0, [r8], #2048	; 0x800
  ac:	909f1c00 	addsls	r1, pc, r0, lsl #24
  b0:	94000000 	strls	r0, [r0], #-0
  b4:	06000000 	streq	r0, [r0], -r0
  b8:	74c90800 	strbvc	r0, [r9], #2048	; 0x800
  bc:	949f1c00 	ldrls	r1, [pc], #3072	; c4 <__start-0x7f3c>
  c0:	9c000000 	stcls	0, cr0, [r0], {-0}
  c4:	06000000 	streq	r0, [r0], -r0
  c8:	74c80800 	strbvc	r0, [r8], #2048	; 0x800
  cc:	009f1c00 	addseq	r1, pc, r0, lsl #24
  d0:	00000000 	andeq	r0, r0, r0
  d4:	74000000 	strvc	r0, [r0], #-0
  d8:	88000000 	stmdahi	r0, {}	; <UNPREDICTABLE>
  dc:	01000000 	mrseq	r0, (UNDEF: 0)
  e0:	00005000 	andeq	r5, r0, r0
  e4:	00000000 	andeq	r0, r0, r0
  e8:	003c0000 	eorseq	r0, ip, r0
  ec:	00470000 	subeq	r0, r7, r0
  f0:	00010000 	andeq	r0, r1, r0
  f4:	00000051 	andeq	r0, r0, r1, asr r0
	...
 100:	00004800 	andeq	r4, r0, r0, lsl #16
 104:	50000100 	andpl	r0, r0, r0, lsl #2
 108:	00000048 	andeq	r0, r0, r8, asr #32
 10c:	000000e0 	andeq	r0, r0, r0, ror #1
 110:	01f30004 	mvnseq	r0, r4
 114:	00009f50 	andeq	r9, r0, r0, asr pc
	...
 120:	00480000 	subeq	r0, r8, r0
 124:	00060000 	andeq	r0, r6, r0
 128:	53049352 	movwpl	r9, #17234	; 0x4352
 12c:	00480493 	umaaleq	r0, r8, r3, r4
 130:	007c0000 	rsbseq	r0, ip, r0
 134:	00060000 	andeq	r0, r6, r0
 138:	57049356 	smlsdpl	r4, r6, r3, r9
 13c:	00800493 	umulleq	r0, r0, r3, r4	; <UNPREDICTABLE>
 140:	00e00000 	rsceq	r0, r0, r0
 144:	00060000 	andeq	r0, r6, r0
 148:	57049356 	smlsdpl	r4, r6, r3, r9
 14c:	00000493 	muleq	r0, r3, r4
 150:	00000000 	andeq	r0, r0, r0
 154:	00100000 	andseq	r0, r0, r0
 158:	00480000 	subeq	r0, r8, r0
 15c:	00020000 	andeq	r0, r2, r0
 160:	00909f30 	addseq	r9, r0, r0, lsr pc
 164:	009c0000 	addseq	r0, ip, r0
 168:	00010000 	andeq	r0, r1, r0
 16c:	0000b058 	andeq	fp, r0, r8, asr r0
 170:	0000b800 	andeq	fp, r0, r0, lsl #16
 174:	58000100 	stmdapl	r0, {r8}
 178:	000000b8 	strheq	r0, [r0], -r8
 17c:	000000c4 	andeq	r0, r0, r4, asr #1
 180:	7f780003 	svcvc	0x00780003
 184:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 188:	00000000 	andeq	r0, r0, r0
 18c:	00001000 	andeq	r1, r0, r0
 190:	00003800 	andeq	r3, r0, r0, lsl #16
 194:	91000300 	mrsls	r0, LR_irq
 198:	00389f57 	eorseq	r9, r8, r7, asr pc
 19c:	00640000 	rsbeq	r0, r4, r0
 1a0:	00010000 	andeq	r0, r1, r0
 1a4:	00006454 	andeq	r6, r0, r4, asr r4
 1a8:	00009c00 	andeq	r9, r0, r0, lsl #24
 1ac:	74000300 	strvc	r0, [r0], #-768	; 0x300
 1b0:	009c9f01 	addseq	r9, ip, r1, lsl #30
 1b4:	00b00000 	adcseq	r0, r0, r0
 1b8:	00010000 	andeq	r0, r1, r0
 1bc:	0000b054 	andeq	fp, r0, r4, asr r0
 1c0:	0000c400 	andeq	ip, r0, r0, lsl #8
 1c4:	74000300 	strvc	r0, [r0], #-768	; 0x300
 1c8:	00c49f01 	sbceq	r9, r4, r1, lsl #30
 1cc:	00c80000 	sbceq	r0, r8, r0
 1d0:	00010000 	andeq	r0, r1, r0
 1d4:	0000c854 	andeq	ip, r0, r4, asr r8
 1d8:	0000cc00 	andeq	ip, r0, r0, lsl #24
 1dc:	74000300 	strvc	r0, [r0], #-768	; 0x300
 1e0:	00cc9f7f 	sbceq	r9, ip, pc, ror pc
 1e4:	00e00000 	rsceq	r0, r0, r0
 1e8:	00010000 	andeq	r0, r1, r0
 1ec:	00000054 	andeq	r0, r0, r4, asr r0
 1f0:	00000000 	andeq	r0, r0, r0
 1f4:	0000e000 	andeq	lr, r0, r0
 1f8:	00010800 	andeq	r0, r1, r0, lsl #16
 1fc:	91000200 	mrsls	r0, R8_usr
 200:	00010870 	andeq	r0, r1, r0, ror r8
 204:	00011c00 	andeq	r1, r1, r0, lsl #24
 208:	54000100 	strpl	r0, [r0], #-256	; 0x100
 20c:	0000011c 	andeq	r0, r0, ip, lsl r1
 210:	0000027c 	andeq	r0, r0, ip, ror r2
 214:	01740003 	cmneq	r4, r3
 218:	00027c9f 	muleq	r2, pc, ip	; <UNPREDICTABLE>
 21c:	00028800 	andeq	r8, r2, r0, lsl #16
 220:	54000100 	strpl	r0, [r0], #-256	; 0x100
	...
 22c:	000001e8 	andeq	r0, r0, r8, ror #3
 230:	000001f4 	strdeq	r0, [r0], -r4
 234:	00730002 	rsbseq	r0, r3, r2
 238:	000001f4 	strdeq	r0, [r0], -r4
 23c:	000001f7 	strdeq	r0, [r0], -r7
 240:	00520001 	subseq	r0, r2, r1
 244:	00000000 	andeq	r0, r0, r0
 248:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 24c:	14000002 	strne	r0, [r0], #-2
 250:	02000002 	andeq	r0, r0, #2
 254:	14007300 	strne	r7, [r0], #-768	; 0x300
 258:	17000002 	strne	r0, [r0, -r2]
 25c:	01000002 	tsteq	r0, r2
 260:	00005200 	andeq	r5, r0, r0, lsl #4
 264:	00000000 	andeq	r0, r0, r0
 268:	01840000 	orreq	r0, r4, r0
 26c:	01bc0000 			; <UNDEFINED> instruction: 0x01bc0000
 270:	00010000 	andeq	r0, r1, r0
 274:	00000055 	andeq	r0, r0, r5, asr r0
 278:	00000000 	andeq	r0, r0, r0
 27c:	0001c800 	andeq	ip, r1, r0, lsl #16
 280:	0001d400 	andeq	sp, r1, r0, lsl #8
 284:	73000200 	movwvc	r0, #512	; 0x200
 288:	0001d400 	andeq	sp, r1, r0, lsl #8
 28c:	0001d700 	andeq	sp, r1, r0, lsl #14
 290:	52000100 	andpl	r0, r0, #0, 2
	...
 29c:	0000022c 	andeq	r0, r0, ip, lsr #4
 2a0:	00000240 	andeq	r0, r0, r0, asr #4
 2a4:	40550001 	subsmi	r0, r5, r1
 2a8:	4c000002 	stcmi	0, cr0, [r0], {2}
 2ac:	03000002 	movweq	r0, #2
 2b0:	9f7f7500 	svcls	0x007f7500
	...
 2bc:	00000258 	andeq	r0, r0, r8, asr r2
 2c0:	0000025f 	andeq	r0, r0, pc, asr r2
 2c4:	00730002 	rsbseq	r0, r3, r2
	...
 2d4:	00000008 	andeq	r0, r0, r8
 2d8:	08500001 	ldmdaeq	r0, {r0}^
 2dc:	54000000 	strpl	r0, [r0], #-0
 2e0:	04000000 	streq	r0, [r0], #-0
 2e4:	5001f300 	andpl	pc, r1, r0, lsl #6
 2e8:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 2ec:	00000000 	andeq	r0, r0, r0
 2f0:	00005400 	andeq	r5, r0, r0, lsl #8
 2f4:	00009000 	andeq	r9, r0, r0
 2f8:	50000100 	andpl	r0, r0, r0, lsl #2
 2fc:	00000090 	muleq	r0, r0, r0
 300:	00000098 	muleq	r0, r8, r0
 304:	98530001 	ldmdals	r3, {r0}^
 308:	e8000000 	stmda	r0, {}	; <UNPREDICTABLE>
 30c:	04000000 	streq	r0, [r0], #-0
 310:	5001f300 	andpl	pc, r1, r0, lsl #6
 314:	0000e89f 	muleq	r0, pc, r8	; <UNPREDICTABLE>
 318:	0000ec00 	andeq	lr, r0, r0, lsl #24
 31c:	50000100 	andpl	r0, r0, r0, lsl #2
 320:	000000ec 	andeq	r0, r0, ip, ror #1
 324:	000000f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 328:	01f30004 	mvnseq	r0, r4
 32c:	00f09f50 	rscseq	r9, r0, r0, asr pc
 330:	00f40000 	rscseq	r0, r4, r0
 334:	00010000 	andeq	r0, r1, r0
 338:	0000f450 	andeq	pc, r0, r0, asr r4	; <UNPREDICTABLE>
 33c:	0000f800 	andeq	pc, r0, r0, lsl #16
 340:	f3000400 	vshl.u8	d0, d0, d0
 344:	009f5001 	addseq	r5, pc, r1
 348:	00000000 	andeq	r0, r0, r0
 34c:	54000000 	strpl	r0, [r0], #-0
 350:	94000000 	strls	r0, [r0], #-0
 354:	01000000 	mrseq	r0, (UNDEF: 0)
 358:	00945100 	addseq	r5, r4, r0, lsl #2
 35c:	00e80000 	rsceq	r0, r8, r0
 360:	00040000 	andeq	r0, r4, r0
 364:	9f5101f3 	svcls	0x005101f3
 368:	000000e8 	andeq	r0, r0, r8, ror #1
 36c:	000000f8 	strdeq	r0, [r0], -r8
 370:	00510001 	subseq	r0, r1, r1
 374:	00000000 	andeq	r0, r0, r0
 378:	54000000 	strpl	r0, [r0], #-0
 37c:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
 380:	01000000 	mrseq	r0, (UNDEF: 0)
 384:	00785200 	rsbseq	r5, r8, r0, lsl #4
 388:	00e80000 	rsceq	r0, r8, r0
 38c:	00040000 	andeq	r0, r4, r0
 390:	9f5201f3 	svcls	0x005201f3
 394:	000000e8 	andeq	r0, r0, r8, ror #1
 398:	000000f8 	strdeq	r0, [r0], -r8
 39c:	00520001 	subseq	r0, r2, r1
 3a0:	00000000 	andeq	r0, r0, r0
 3a4:	80000000 	andhi	r0, r0, r0
 3a8:	98000000 	stmdals	r0, {}	; <UNPREDICTABLE>
 3ac:	02000000 	andeq	r0, r0, #0
 3b0:	989f3000 	ldmls	pc, {ip, sp}	; <UNPREDICTABLE>
 3b4:	9c000000 	stcls	0, cr0, [r0], {-0}
 3b8:	07000000 	streq	r0, [r0, -r0]
 3bc:	f3007300 	vcgt.u8	d7, d0, d0
 3c0:	9f1c5001 	svcls	0x001c5001
 3c4:	0000009c 	muleq	r0, ip, r0
 3c8:	000000a0 	andeq	r0, r0, r0, lsr #1
 3cc:	01f30008 	mvnseq	r0, r8
 3d0:	00732050 	rsbseq	r2, r3, r0, asr r0
 3d4:	00a09f22 	adceq	r9, r0, r2, lsr #30
 3d8:	00a80000 	adceq	r0, r8, r0
 3dc:	00070000 	andeq	r0, r7, r0
 3e0:	01f30073 	mvnseq	r0, r3, ror r0
 3e4:	009f1c50 	addseq	r1, pc, r0, asr ip	; <UNPREDICTABLE>
 3e8:	00000000 	andeq	r0, r0, r0
 3ec:	f8000000 			; <UNDEFINED> instruction: 0xf8000000
 3f0:	50000000 	andpl	r0, r0, r0
 3f4:	01000001 	tsteq	r0, r1
 3f8:	01505000 	cmpeq	r0, r0
 3fc:	01580000 	cmpeq	r8, r0
 400:	00010000 	andeq	r0, r1, r0
 404:	00015853 	andeq	r5, r1, r3, asr r8
 408:	00018400 	andeq	r8, r1, r0, lsl #8
 40c:	f3000400 	vshl.u8	d0, d0, d0
 410:	849f5001 	ldrhi	r5, [pc], #1	; 418 <__start-0x7be8>
 414:	88000001 	stmdahi	r0, {r0}
 418:	01000001 	tsteq	r0, r1
 41c:	01885000 	orreq	r5, r8, r0
 420:	018c0000 	orreq	r0, ip, r0
 424:	00040000 	andeq	r0, r4, r0
 428:	9f5001f3 	svcls	0x005001f3
 42c:	0000018c 	andeq	r0, r0, ip, lsl #3
 430:	00000190 	muleq	r0, r0, r1
 434:	90500001 	subsls	r0, r0, r1
 438:	94000001 	strls	r0, [r0], #-1
 43c:	04000001 	streq	r0, [r0], #-1
 440:	5001f300 	andpl	pc, r1, r0, lsl #6
 444:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 448:	00000000 	andeq	r0, r0, r0
 44c:	0000f800 	andeq	pc, r0, r0, lsl #16
 450:	00011c00 	andeq	r1, r1, r0, lsl #24
 454:	52000100 	andpl	r0, r0, #0, 2
 458:	0000011c 	andeq	r0, r0, ip, lsl r1
 45c:	00000184 	andeq	r0, r0, r4, lsl #3
 460:	01f30004 	mvnseq	r0, r4
 464:	01849f52 	orreq	r9, r4, r2, asr pc
 468:	01940000 	orrseq	r0, r4, r0
 46c:	00010000 	andeq	r0, r1, r0
 470:	00000052 	andeq	r0, r0, r2, asr r0
 474:	00000000 	andeq	r0, r0, r0
 478:	00014000 	andeq	r4, r1, r0
 47c:	00015800 	andeq	r5, r1, r0, lsl #16
 480:	30000200 	andcc	r0, r0, r0, lsl #4
 484:	0001589f 	muleq	r1, pc, r8	; <UNPREDICTABLE>
 488:	00016800 	andeq	r6, r1, r0, lsl #16
 48c:	73000700 	movwvc	r0, #1792	; 0x700
 490:	5001f300 	andpl	pc, r1, r0, lsl #6
 494:	00009f1c 	andeq	r9, r0, ip, lsl pc
 498:	00000000 	andeq	r0, r0, r0
 49c:	00100000 	andseq	r0, r0, r0
 4a0:	001c0000 	andseq	r0, ip, r0
 4a4:	00010000 	andeq	r0, r1, r0
 4a8:	00001c50 	andeq	r1, r0, r0, asr ip
 4ac:	0000c400 	andeq	ip, r0, r0, lsl #8
 4b0:	f3000400 	vshl.u8	d0, d0, d0
 4b4:	009f5001 	addseq	r5, pc, r1
 4b8:	00000000 	andeq	r0, r0, r0
 4bc:	Address 0x000004bc is out of bounds.


Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	00000054 	andeq	r0, r0, r4, asr r0
   8:	00000068 	andeq	r0, r0, r8, rrx
   c:	000000c4 	andeq	r0, r0, r4, asr #1
	...
  18:	00000014 	andeq	r0, r0, r4, lsl r0
  1c:	0000001c 	andeq	r0, r0, ip, lsl r0
  20:	00000068 	andeq	r0, r0, r8, rrx
  24:	000000c4 	andeq	r0, r0, r4, asr #1
	...
  30:	00000014 	andeq	r0, r0, r4, lsl r0
  34:	0000001c 	andeq	r0, r0, ip, lsl r0
  38:	00000068 	andeq	r0, r0, r8, rrx
  3c:	000000ac 	andeq	r0, r0, ip, lsr #1
	...
  48:	000000f8 	strdeq	r0, [r0], -r8
  4c:	00000100 	andeq	r0, r0, r0, lsl #2
  50:	000001dc 	ldrdeq	r0, [r0], -ip
  54:	000001fc 	strdeq	r0, [r0], -ip
	...
  60:	00000100 	andeq	r0, r0, r0, lsl #2
  64:	00000104 	andeq	r0, r0, r4, lsl #2
  68:	000001fc 	strdeq	r0, [r0], -ip
  6c:	0000021c 	andeq	r0, r0, ip, lsl r2
	...
