
kernel_optimization/kernel.elf:     file format elf32-littlearm


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
    8044:	0012e000 	andseq	lr, r2, r0
    8048:	0011d000 	andseq	sp, r1, r0
    804c:	0000c000 	andeq	ip, r0, r0
    8050:	0000d000 	andeq	sp, r0, r0

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
    80ac:	e30b3000 	movw	r3, #45056	; 0xb000
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
    8148:	e30b3000 	movw	r3, #45056	; 0xb000
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
    81a4:	e30b3000 	movw	r3, #45056	; 0xb000
    81a8:	e3403000 	movt	r3, #0
    81ac:	e5933000 	ldr	r3, [r3]
    81b0:	e2833020 	add	r3, r3, #32
    81b4:	e55b2005 	ldrb	r2, [fp, #-5]
    81b8:	e2422020 	sub	r2, r2, #32
    81bc:	e3a01001 	mov	r1, #1
    81c0:	e1a02211 	lsl	r2, r1, r2
    81c4:	e5832000 	str	r2, [r3]
    81c8:	ea000007 	b	81ec <gpio_set+0x78>
    81cc:	e30b3000 	movw	r3, #45056	; 0xb000
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
    8228:	e30b3000 	movw	r3, #45056	; 0xb000
    822c:	e3403000 	movt	r3, #0
    8230:	e5933000 	ldr	r3, [r3]
    8234:	e283302c 	add	r3, r3, #44	; 0x2c
    8238:	e55b2005 	ldrb	r2, [fp, #-5]
    823c:	e2422020 	sub	r2, r2, #32
    8240:	e3a01001 	mov	r1, #1
    8244:	e1a02211 	lsl	r2, r1, r2
    8248:	e5832000 	str	r2, [r3]
    824c:	ea000007 	b	8270 <gpio_clr+0x78>
    8250:	e30b3000 	movw	r3, #45056	; 0xb000
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
    82b8:	e30b3000 	movw	r3, #45056	; 0xb000
    82bc:	e3403000 	movt	r3, #0
    82c0:	e5933000 	ldr	r3, [r3]
    82c4:	e2833094 	add	r3, r3, #148	; 0x94
    82c8:	e55b2006 	ldrb	r2, [fp, #-6]
    82cc:	e5832000 	str	r2, [r3]
    82d0:	e3a00096 	mov	r0, #150	; 0x96
    82d4:	eb0001f5 	bl	8ab0 <delay_cycles>
    82d8:	e55b3005 	ldrb	r3, [fp, #-5]
    82dc:	e353001f 	cmp	r3, #31
    82e0:	9a000011 	bls	832c <gpio_set_pull+0xb0>
    82e4:	e30b3000 	movw	r3, #45056	; 0xb000
    82e8:	e3403000 	movt	r3, #0
    82ec:	e5933000 	ldr	r3, [r3]
    82f0:	e283309c 	add	r3, r3, #156	; 0x9c
    82f4:	e55b2005 	ldrb	r2, [fp, #-5]
    82f8:	e2422020 	sub	r2, r2, #32
    82fc:	e3a01001 	mov	r1, #1
    8300:	e1a02211 	lsl	r2, r1, r2
    8304:	e5832000 	str	r2, [r3]
    8308:	e3a00096 	mov	r0, #150	; 0x96
    830c:	eb0001e7 	bl	8ab0 <delay_cycles>
    8310:	e30b3000 	movw	r3, #45056	; 0xb000
    8314:	e3403000 	movt	r3, #0
    8318:	e5933000 	ldr	r3, [r3]
    831c:	e283309c 	add	r3, r3, #156	; 0x9c
    8320:	e3a02000 	mov	r2, #0
    8324:	e5832000 	str	r2, [r3]
    8328:	ea00000f 	b	836c <gpio_set_pull+0xf0>
    832c:	e30b3000 	movw	r3, #45056	; 0xb000
    8330:	e3403000 	movt	r3, #0
    8334:	e5933000 	ldr	r3, [r3]
    8338:	e2833098 	add	r3, r3, #152	; 0x98
    833c:	e55b2005 	ldrb	r2, [fp, #-5]
    8340:	e3a01001 	mov	r1, #1
    8344:	e1a02211 	lsl	r2, r1, r2
    8348:	e5832000 	str	r2, [r3]
    834c:	e3a00096 	mov	r0, #150	; 0x96
    8350:	eb0001d6 	bl	8ab0 <delay_cycles>
    8354:	e30b3000 	movw	r3, #45056	; 0xb000
    8358:	e3403000 	movt	r3, #0
    835c:	e5933000 	ldr	r3, [r3]
    8360:	e2833098 	add	r3, r3, #152	; 0x98
    8364:	e3a02000 	mov	r2, #0
    8368:	e5832000 	str	r2, [r3]
    836c:	e24bd004 	sub	sp, fp, #4
    8370:	e8bd8800 	pop	{fp, pc}

00008374 <kernel_main>:
    8374:	e92d4800 	push	{fp, lr}
    8378:	e28db004 	add	fp, sp, #4
    837c:	e24dd010 	sub	sp, sp, #16
    8380:	e3a03001 	mov	r3, #1
    8384:	e50b300c 	str	r3, [fp, #-12]
    8388:	eb000131 	bl	8854 <uart_init>
    838c:	e3a03000 	mov	r3, #0
    8390:	e50b3008 	str	r3, [fp, #-8]
    8394:	ea00000c 	b	83cc <kernel_main+0x58>
    8398:	e30c37d0 	movw	r3, #51152	; 0xc7d0
    839c:	e3403000 	movt	r3, #0
    83a0:	e51b2008 	ldr	r2, [fp, #-8]
    83a4:	e51b1008 	ldr	r1, [fp, #-8]
    83a8:	e7831102 	str	r1, [r3, r2, lsl #2]
    83ac:	e30c3000 	movw	r3, #49152	; 0xc000
    83b0:	e3403000 	movt	r3, #0
    83b4:	e51b2008 	ldr	r2, [fp, #-8]
    83b8:	e51b1008 	ldr	r1, [fp, #-8]
    83bc:	e7831102 	str	r1, [r3, r2, lsl #2]
    83c0:	e51b3008 	ldr	r3, [fp, #-8]
    83c4:	e2833001 	add	r3, r3, #1
    83c8:	e50b3008 	str	r3, [fp, #-8]
    83cc:	e51b3008 	ldr	r3, [fp, #-8]
    83d0:	e3530f7d 	cmp	r3, #500	; 0x1f4
    83d4:	baffffef 	blt	8398 <kernel_main+0x24>
    83d8:	e30a0000 	movw	r0, #40960	; 0xa000
    83dc:	e3400000 	movt	r0, #0
    83e0:	eb000087 	bl	8604 <printk>
    83e4:	eb000195 	bl	8a40 <tic>
    83e8:	e30c07d0 	movw	r0, #51152	; 0xc7d0
    83ec:	e3400000 	movt	r0, #0
    83f0:	eb000215 	bl	8c4c <optimize_me>
    83f4:	eb00019f 	bl	8a78 <toc>
    83f8:	e50b0010 	str	r0, [fp, #-16]
    83fc:	e30a0024 	movw	r0, #40996	; 0xa024
    8400:	e3400000 	movt	r0, #0
    8404:	e51b1010 	ldr	r1, [fp, #-16]
    8408:	eb00007d 	bl	8604 <printk>
    840c:	e30a0028 	movw	r0, #41000	; 0xa028
    8410:	e3400000 	movt	r0, #0
    8414:	eb00007a 	bl	8604 <printk>
    8418:	eb000188 	bl	8a40 <tic>
    841c:	e30c0000 	movw	r0, #49152	; 0xc000
    8420:	e3400000 	movt	r0, #0
    8424:	eb0001c3 	bl	8b38 <unoptimized>
    8428:	eb000192 	bl	8a78 <toc>
    842c:	e50b0010 	str	r0, [fp, #-16]
    8430:	e30a0024 	movw	r0, #40996	; 0xa024
    8434:	e3400000 	movt	r0, #0
    8438:	e51b1010 	ldr	r1, [fp, #-16]
    843c:	eb000070 	bl	8604 <printk>
    8440:	e3a03000 	mov	r3, #0
    8444:	e50b3008 	str	r3, [fp, #-8]
    8448:	ea000012 	b	8498 <kernel_main+0x124>
    844c:	e30c37d0 	movw	r3, #51152	; 0xc7d0
    8450:	e3403000 	movt	r3, #0
    8454:	e51b2008 	ldr	r2, [fp, #-8]
    8458:	e7932102 	ldr	r2, [r3, r2, lsl #2]
    845c:	e30c3000 	movw	r3, #49152	; 0xc000
    8460:	e3403000 	movt	r3, #0
    8464:	e51b1008 	ldr	r1, [fp, #-8]
    8468:	e7933101 	ldr	r3, [r3, r1, lsl #2]
    846c:	e1520003 	cmp	r2, r3
    8470:	0a000005 	beq	848c <kernel_main+0x118>
    8474:	e30a004c 	movw	r0, #41036	; 0xa04c
    8478:	e3400000 	movt	r0, #0
    847c:	eb000060 	bl	8604 <printk>
    8480:	e3a03000 	mov	r3, #0
    8484:	e50b300c 	str	r3, [fp, #-12]
    8488:	ea000005 	b	84a4 <kernel_main+0x130>
    848c:	e51b3008 	ldr	r3, [fp, #-8]
    8490:	e2833001 	add	r3, r3, #1
    8494:	e50b3008 	str	r3, [fp, #-8]
    8498:	e51b3008 	ldr	r3, [fp, #-8]
    849c:	e3530f7d 	cmp	r3, #500	; 0x1f4
    84a0:	baffffe9 	blt	844c <kernel_main+0xd8>
    84a4:	e51b300c 	ldr	r3, [fp, #-12]
    84a8:	e3530000 	cmp	r3, #0
    84ac:	0a000002 	beq	84bc <kernel_main+0x148>
    84b0:	e30a0068 	movw	r0, #41064	; 0xa068
    84b4:	e3400000 	movt	r0, #0
    84b8:	eb000051 	bl	8604 <printk>
    84bc:	e30806a0 	movw	r0, #34464	; 0x86a0
    84c0:	e3400001 	movt	r0, #1
    84c4:	eb000179 	bl	8ab0 <delay_cycles>
    84c8:	eafffffb 	b	84bc <kernel_main+0x148>

000084cc <printnumk>:
    84cc:	e92d4810 	push	{r4, fp, lr}
    84d0:	e28db008 	add	fp, sp, #8
    84d4:	e24dd024 	sub	sp, sp, #36	; 0x24
    84d8:	e1a01000 	mov	r1, r0
    84dc:	e14b22fc 	strd	r2, [fp, #-44]	; 0xffffffd4
    84e0:	e1a03001 	mov	r3, r1
    84e4:	e54b301d 	strb	r3, [fp, #-29]
    84e8:	e3a03000 	mov	r3, #0
    84ec:	e50b3010 	str	r3, [fp, #-16]
    84f0:	e24b301c 	sub	r3, fp, #28
    84f4:	e2833007 	add	r3, r3, #7
    84f8:	e50b3014 	str	r3, [fp, #-20]
    84fc:	e55b301d 	ldrb	r3, [fp, #-29]
    8500:	e3530008 	cmp	r3, #8
    8504:	1a000003 	bne	8518 <printnumk+0x4c>
    8508:	e30a3084 	movw	r3, #41092	; 0xa084
    850c:	e3403000 	movt	r3, #0
    8510:	e50b3010 	str	r3, [fp, #-16]
    8514:	ea000005 	b	8530 <printnumk+0x64>
    8518:	e55b301d 	ldrb	r3, [fp, #-29]
    851c:	e3530010 	cmp	r3, #16
    8520:	1a000002 	bne	8530 <printnumk+0x64>
    8524:	e30a3088 	movw	r3, #41096	; 0xa088
    8528:	e3403000 	movt	r3, #0
    852c:	e50b3010 	str	r3, [fp, #-16]
    8530:	e51b4014 	ldr	r4, [fp, #-20]
    8534:	e2443001 	sub	r3, r4, #1
    8538:	e50b3014 	str	r3, [fp, #-20]
    853c:	e55b201d 	ldrb	r2, [fp, #-29]
    8540:	e3a03000 	mov	r3, #0
    8544:	e14b02dc 	ldrd	r0, [fp, #-44]	; 0xffffffd4
    8548:	eb00028c 	bl	8f80 <__aeabi_uldivmod>
    854c:	e1a00002 	mov	r0, r2
    8550:	e1a01003 	mov	r1, r3
    8554:	e30b3004 	movw	r3, #45060	; 0xb004
    8558:	e3403000 	movt	r3, #0
    855c:	e0833000 	add	r3, r3, r0
    8560:	e5d33000 	ldrb	r3, [r3]
    8564:	e5c43000 	strb	r3, [r4]
    8568:	e55b201d 	ldrb	r2, [fp, #-29]
    856c:	e3a03000 	mov	r3, #0
    8570:	e14b02dc 	ldrd	r0, [fp, #-44]	; 0xffffffd4
    8574:	eb000281 	bl	8f80 <__aeabi_uldivmod>
    8578:	e1a02000 	mov	r2, r0
    857c:	e1a03001 	mov	r3, r1
    8580:	e14b22fc 	strd	r2, [fp, #-44]	; 0xffffffd4
    8584:	e14b22dc 	ldrd	r2, [fp, #-44]	; 0xffffffd4
    8588:	e1923003 	orrs	r3, r2, r3
    858c:	1affffe7 	bne	8530 <printnumk+0x64>
    8590:	e51b3010 	ldr	r3, [fp, #-16]
    8594:	e3530000 	cmp	r3, #0
    8598:	0a00000a 	beq	85c8 <printnumk+0xfc>
    859c:	ea000005 	b	85b8 <printnumk+0xec>
    85a0:	e51b3010 	ldr	r3, [fp, #-16]
    85a4:	e2832001 	add	r2, r3, #1
    85a8:	e50b2010 	str	r2, [fp, #-16]
    85ac:	e5d33000 	ldrb	r3, [r3]
    85b0:	e1a00003 	mov	r0, r3
    85b4:	eb0000d9 	bl	8920 <uart_put_byte>
    85b8:	e51b3010 	ldr	r3, [fp, #-16]
    85bc:	e5d33000 	ldrb	r3, [r3]
    85c0:	e3530000 	cmp	r3, #0
    85c4:	1afffff5 	bne	85a0 <printnumk+0xd4>
    85c8:	ea000003 	b	85dc <printnumk+0x110>
    85cc:	e51b3014 	ldr	r3, [fp, #-20]
    85d0:	e5d33000 	ldrb	r3, [r3]
    85d4:	e1a00003 	mov	r0, r3
    85d8:	eb0000d0 	bl	8920 <uart_put_byte>
    85dc:	e51b3014 	ldr	r3, [fp, #-20]
    85e0:	e2833001 	add	r3, r3, #1
    85e4:	e50b3014 	str	r3, [fp, #-20]
    85e8:	e24b301c 	sub	r3, fp, #28
    85ec:	e2833008 	add	r3, r3, #8
    85f0:	e51b2014 	ldr	r2, [fp, #-20]
    85f4:	e1520003 	cmp	r2, r3
    85f8:	1afffff3 	bne	85cc <printnumk+0x100>
    85fc:	e24bd008 	sub	sp, fp, #8
    8600:	e8bd8810 	pop	{r4, fp, pc}

00008604 <printk>:
    8604:	e92d000f 	push	{r0, r1, r2, r3}
    8608:	e92d4800 	push	{fp, lr}
    860c:	e28db004 	add	fp, sp, #4
    8610:	e24dd020 	sub	sp, sp, #32
    8614:	e28b3008 	add	r3, fp, #8
    8618:	e50b3020 	str	r3, [fp, #-32]
    861c:	ea000082 	b	882c <printk+0x228>
    8620:	e59b3004 	ldr	r3, [fp, #4]
    8624:	e5d33000 	ldrb	r3, [r3]
    8628:	e3530025 	cmp	r3, #37	; 0x25
    862c:	0a000006 	beq	864c <printk+0x48>
    8630:	e59b3004 	ldr	r3, [fp, #4]
    8634:	e2832001 	add	r2, r3, #1
    8638:	e58b2004 	str	r2, [fp, #4]
    863c:	e5d33000 	ldrb	r3, [r3]
    8640:	e1a00003 	mov	r0, r3
    8644:	eb0000b5 	bl	8920 <uart_put_byte>
    8648:	ea000077 	b	882c <printk+0x228>
    864c:	e59b3004 	ldr	r3, [fp, #4]
    8650:	e2833001 	add	r3, r3, #1
    8654:	e58b3004 	str	r3, [fp, #4]
    8658:	e59b3004 	ldr	r3, [fp, #4]
    865c:	e5d33000 	ldrb	r3, [r3]
    8660:	e353006f 	cmp	r3, #111	; 0x6f
    8664:	0a000036 	beq	8744 <printk+0x140>
    8668:	e353006f 	cmp	r3, #111	; 0x6f
    866c:	ca000006 	bgt	868c <printk+0x88>
    8670:	e3530063 	cmp	r3, #99	; 0x63
    8674:	0a00005a 	beq	87e4 <printk+0x1e0>
    8678:	e3530064 	cmp	r3, #100	; 0x64
    867c:	0a00000e 	beq	86bc <printk+0xb8>
    8680:	e3530025 	cmp	r3, #37	; 0x25
    8684:	0a000060 	beq	880c <printk+0x208>
    8688:	ea000062 	b	8818 <printk+0x214>
    868c:	e3530073 	cmp	r3, #115	; 0x73
    8690:	0a000041 	beq	879c <printk+0x198>
    8694:	e3530073 	cmp	r3, #115	; 0x73
    8698:	ca000002 	bgt	86a8 <printk+0xa4>
    869c:	e3530070 	cmp	r3, #112	; 0x70
    86a0:	0a000032 	beq	8770 <printk+0x16c>
    86a4:	ea00005b 	b	8818 <printk+0x214>
    86a8:	e3530075 	cmp	r3, #117	; 0x75
    86ac:	0a000019 	beq	8718 <printk+0x114>
    86b0:	e3530078 	cmp	r3, #120	; 0x78
    86b4:	0a00002d 	beq	8770 <printk+0x16c>
    86b8:	ea000056 	b	8818 <printk+0x214>
    86bc:	e51b3020 	ldr	r3, [fp, #-32]
    86c0:	e2832004 	add	r2, r3, #4
    86c4:	e50b2020 	str	r2, [fp, #-32]
    86c8:	e5933000 	ldr	r3, [r3]
    86cc:	e50b300c 	str	r3, [fp, #-12]
    86d0:	e51b300c 	ldr	r3, [fp, #-12]
    86d4:	e3530000 	cmp	r3, #0
    86d8:	aa000008 	bge	8700 <printk+0xfc>
    86dc:	e3a0002d 	mov	r0, #45	; 0x2d
    86e0:	eb00008e 	bl	8920 <uart_put_byte>
    86e4:	e51b300c 	ldr	r3, [fp, #-12]
    86e8:	e2633000 	rsb	r3, r3, #0
    86ec:	e1a02003 	mov	r2, r3
    86f0:	e1a03fc2 	asr	r3, r2, #31
    86f4:	e3a0000a 	mov	r0, #10
    86f8:	ebffff73 	bl	84cc <printnumk>
    86fc:	ea000047 	b	8820 <printk+0x21c>
    8700:	e51b300c 	ldr	r3, [fp, #-12]
    8704:	e1a02003 	mov	r2, r3
    8708:	e1a03fc2 	asr	r3, r2, #31
    870c:	e3a0000a 	mov	r0, #10
    8710:	ebffff6d 	bl	84cc <printnumk>
    8714:	ea000041 	b	8820 <printk+0x21c>
    8718:	e51b3020 	ldr	r3, [fp, #-32]
    871c:	e2832004 	add	r2, r3, #4
    8720:	e50b2020 	str	r2, [fp, #-32]
    8724:	e5933000 	ldr	r3, [r3]
    8728:	e50b3010 	str	r3, [fp, #-16]
    872c:	e51b3010 	ldr	r3, [fp, #-16]
    8730:	e1a02003 	mov	r2, r3
    8734:	e3a03000 	mov	r3, #0
    8738:	e3a0000a 	mov	r0, #10
    873c:	ebffff62 	bl	84cc <printnumk>
    8740:	ea000036 	b	8820 <printk+0x21c>
    8744:	e51b3020 	ldr	r3, [fp, #-32]
    8748:	e2832004 	add	r2, r3, #4
    874c:	e50b2020 	str	r2, [fp, #-32]
    8750:	e5933000 	ldr	r3, [r3]
    8754:	e50b3014 	str	r3, [fp, #-20]
    8758:	e51b3014 	ldr	r3, [fp, #-20]
    875c:	e1a02003 	mov	r2, r3
    8760:	e3a03000 	mov	r3, #0
    8764:	e3a00008 	mov	r0, #8
    8768:	ebffff57 	bl	84cc <printnumk>
    876c:	ea00002b 	b	8820 <printk+0x21c>
    8770:	e51b3020 	ldr	r3, [fp, #-32]
    8774:	e2832004 	add	r2, r3, #4
    8778:	e50b2020 	str	r2, [fp, #-32]
    877c:	e5933000 	ldr	r3, [r3]
    8780:	e50b3018 	str	r3, [fp, #-24]
    8784:	e51b3018 	ldr	r3, [fp, #-24]
    8788:	e1a02003 	mov	r2, r3
    878c:	e3a03000 	mov	r3, #0
    8790:	e3a00010 	mov	r0, #16
    8794:	ebffff4c 	bl	84cc <printnumk>
    8798:	ea000020 	b	8820 <printk+0x21c>
    879c:	e51b3020 	ldr	r3, [fp, #-32]
    87a0:	e2832004 	add	r2, r3, #4
    87a4:	e50b2020 	str	r2, [fp, #-32]
    87a8:	e5933000 	ldr	r3, [r3]
    87ac:	e50b3008 	str	r3, [fp, #-8]
    87b0:	ea000006 	b	87d0 <printk+0x1cc>
    87b4:	e51b3008 	ldr	r3, [fp, #-8]
    87b8:	e5d33000 	ldrb	r3, [r3]
    87bc:	e1a00003 	mov	r0, r3
    87c0:	eb000056 	bl	8920 <uart_put_byte>
    87c4:	e51b3008 	ldr	r3, [fp, #-8]
    87c8:	e2833001 	add	r3, r3, #1
    87cc:	e50b3008 	str	r3, [fp, #-8]
    87d0:	e51b3008 	ldr	r3, [fp, #-8]
    87d4:	e5d33000 	ldrb	r3, [r3]
    87d8:	e3530000 	cmp	r3, #0
    87dc:	1afffff4 	bne	87b4 <printk+0x1b0>
    87e0:	ea00000e 	b	8820 <printk+0x21c>
    87e4:	e51b3020 	ldr	r3, [fp, #-32]
    87e8:	e2832004 	add	r2, r3, #4
    87ec:	e50b2020 	str	r2, [fp, #-32]
    87f0:	e5933000 	ldr	r3, [r3]
    87f4:	e50b301c 	str	r3, [fp, #-28]
    87f8:	e51b301c 	ldr	r3, [fp, #-28]
    87fc:	e6ef3073 	uxtb	r3, r3
    8800:	e1a00003 	mov	r0, r3
    8804:	eb000045 	bl	8920 <uart_put_byte>
    8808:	ea000004 	b	8820 <printk+0x21c>
    880c:	e3a00025 	mov	r0, #37	; 0x25
    8810:	eb000042 	bl	8920 <uart_put_byte>
    8814:	ea000001 	b	8820 <printk+0x21c>
    8818:	e3e03000 	mvn	r3, #0
    881c:	ea000007 	b	8840 <printk+0x23c>
    8820:	e59b3004 	ldr	r3, [fp, #4]
    8824:	e2833001 	add	r3, r3, #1
    8828:	e58b3004 	str	r3, [fp, #4]
    882c:	e59b3004 	ldr	r3, [fp, #4]
    8830:	e5d33000 	ldrb	r3, [r3]
    8834:	e3530000 	cmp	r3, #0
    8838:	1affff78 	bne	8620 <printk+0x1c>
    883c:	e3a03000 	mov	r3, #0
    8840:	e1a00003 	mov	r0, r3
    8844:	e24bd004 	sub	sp, fp, #4
    8848:	e8bd4800 	pop	{fp, lr}
    884c:	e28dd010 	add	sp, sp, #16
    8850:	e12fff1e 	bx	lr

00008854 <uart_init>:
    8854:	e92d4800 	push	{fp, lr}
    8858:	e28db004 	add	fp, sp, #4
    885c:	e3a0000f 	mov	r0, #15
    8860:	e3a01000 	mov	r1, #0
    8864:	ebfffe84 	bl	827c <gpio_set_pull>
    8868:	e3a0000e 	mov	r0, #14
    886c:	e3a01000 	mov	r1, #0
    8870:	ebfffe81 	bl	827c <gpio_set_pull>
    8874:	e3a0000f 	mov	r0, #15
    8878:	e3a01002 	mov	r1, #2
    887c:	ebfffdf4 	bl	8054 <gpio_config>
    8880:	e3a0000e 	mov	r0, #14
    8884:	e3a01002 	mov	r1, #2
    8888:	ebfffdf1 	bl	8054 <gpio_config>
    888c:	e3053004 	movw	r3, #20484	; 0x5004
    8890:	e3433f21 	movt	r3, #16161	; 0x3f21
    8894:	e3a02001 	mov	r2, #1
    8898:	e5832000 	str	r2, [r3]
    889c:	e3053044 	movw	r3, #20548	; 0x5044
    88a0:	e3433f21 	movt	r3, #16161	; 0x3f21
    88a4:	e3a02000 	mov	r2, #0
    88a8:	e5832000 	str	r2, [r3]
    88ac:	e3053048 	movw	r3, #20552	; 0x5048
    88b0:	e3433f21 	movt	r3, #16161	; 0x3f21
    88b4:	e3052048 	movw	r2, #20552	; 0x5048
    88b8:	e3432f21 	movt	r2, #16161	; 0x3f21
    88bc:	e5922000 	ldr	r2, [r2]
    88c0:	e3822006 	orr	r2, r2, #6
    88c4:	e5832000 	str	r2, [r3]
    88c8:	e305304c 	movw	r3, #20556	; 0x504c
    88cc:	e3433f21 	movt	r3, #16161	; 0x3f21
    88d0:	e3a02003 	mov	r2, #3
    88d4:	e5832000 	str	r2, [r3]
    88d8:	e3053060 	movw	r3, #20576	; 0x5060
    88dc:	e3433f21 	movt	r3, #16161	; 0x3f21
    88e0:	e3a02003 	mov	r2, #3
    88e4:	e5832000 	str	r2, [r3]
    88e8:	e3053068 	movw	r3, #20584	; 0x5068
    88ec:	e3433f21 	movt	r3, #16161	; 0x3f21
    88f0:	e300210e 	movw	r2, #270	; 0x10e
    88f4:	e5832000 	str	r2, [r3]
    88f8:	e8bd8800 	pop	{fp, pc}

000088fc <uart_close>:
    88fc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8900:	e28db000 	add	fp, sp, #0
    8904:	e3053004 	movw	r3, #20484	; 0x5004
    8908:	e3433f21 	movt	r3, #16161	; 0x3f21
    890c:	e3a02000 	mov	r2, #0
    8910:	e5832000 	str	r2, [r3]
    8914:	e24bd000 	sub	sp, fp, #0
    8918:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    891c:	e12fff1e 	bx	lr

00008920 <uart_put_byte>:
    8920:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8924:	e28db000 	add	fp, sp, #0
    8928:	e24dd00c 	sub	sp, sp, #12
    892c:	e1a03000 	mov	r3, r0
    8930:	e54b3005 	strb	r3, [fp, #-5]
    8934:	e3053048 	movw	r3, #20552	; 0x5048
    8938:	e3433f21 	movt	r3, #16161	; 0x3f21
    893c:	e5933000 	ldr	r3, [r3]
    8940:	e2033006 	and	r3, r3, #6
    8944:	e3530002 	cmp	r3, #2
    8948:	1a000000 	bne	8950 <uart_put_byte+0x30>
    894c:	ea000000 	b	8954 <uart_put_byte+0x34>
    8950:	eafffff7 	b	8934 <uart_put_byte+0x14>
    8954:	e3053040 	movw	r3, #20544	; 0x5040
    8958:	e3433f21 	movt	r3, #16161	; 0x3f21
    895c:	e55b2005 	ldrb	r2, [fp, #-5]
    8960:	e5832000 	str	r2, [r3]
    8964:	e24bd000 	sub	sp, fp, #0
    8968:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    896c:	e12fff1e 	bx	lr

00008970 <uart_get_byte>:
    8970:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8974:	e28db000 	add	fp, sp, #0
    8978:	e3053048 	movw	r3, #20552	; 0x5048
    897c:	e3433f21 	movt	r3, #16161	; 0x3f21
    8980:	e5933000 	ldr	r3, [r3]
    8984:	e2033006 	and	r3, r3, #6
    8988:	e3530004 	cmp	r3, #4
    898c:	1a000000 	bne	8994 <uart_get_byte+0x24>
    8990:	ea000000 	b	8998 <uart_get_byte+0x28>
    8994:	eafffff7 	b	8978 <uart_get_byte+0x8>
    8998:	e3053040 	movw	r3, #20544	; 0x5040
    899c:	e3433f21 	movt	r3, #16161	; 0x3f21
    89a0:	e5933000 	ldr	r3, [r3]
    89a4:	e6ef3073 	uxtb	r3, r3
    89a8:	e1a00003 	mov	r0, r3
    89ac:	e24bd000 	sub	sp, fp, #0
    89b0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    89b4:	e12fff1e 	bx	lr

000089b8 <timer_start>:
    89b8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    89bc:	e28db000 	add	fp, sp, #0
    89c0:	e24dd00c 	sub	sp, sp, #12
    89c4:	e50b0008 	str	r0, [fp, #-8]
    89c8:	e1a00000 	nop			; (mov r0, r0)
    89cc:	e24bd000 	sub	sp, fp, #0
    89d0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    89d4:	e12fff1e 	bx	lr

000089d8 <timer_stop>:
    89d8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    89dc:	e28db000 	add	fp, sp, #0
    89e0:	e1a00000 	nop			; (mov r0, r0)
    89e4:	e24bd000 	sub	sp, fp, #0
    89e8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    89ec:	e12fff1e 	bx	lr

000089f0 <timer_read>:
    89f0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    89f4:	e28db000 	add	fp, sp, #0
    89f8:	e3a03000 	mov	r3, #0
    89fc:	e1a00003 	mov	r0, r3
    8a00:	e24bd000 	sub	sp, fp, #0
    8a04:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8a08:	e12fff1e 	bx	lr

00008a0c <timer_is_pending>:
    8a0c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8a10:	e28db000 	add	fp, sp, #0
    8a14:	e3a03000 	mov	r3, #0
    8a18:	e1a00003 	mov	r0, r3
    8a1c:	e24bd000 	sub	sp, fp, #0
    8a20:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8a24:	e12fff1e 	bx	lr

00008a28 <timer_clear_pending>:
    8a28:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8a2c:	e28db000 	add	fp, sp, #0
    8a30:	e1a00000 	nop			; (mov r0, r0)
    8a34:	e24bd000 	sub	sp, fp, #0
    8a38:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8a3c:	e12fff1e 	bx	lr

00008a40 <tic>:
    8a40:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8a44:	e28db000 	add	fp, sp, #0
    8a48:	e3a03b2d 	mov	r3, #46080	; 0xb400
    8a4c:	e3433f00 	movt	r3, #16128	; 0x3f00
    8a50:	e3e02000 	mvn	r2, #0
    8a54:	e5832000 	str	r2, [r3]
    8a58:	e30b3408 	movw	r3, #46088	; 0xb408
    8a5c:	e3433f00 	movt	r3, #16128	; 0x3f00
    8a60:	e3a02082 	mov	r2, #130	; 0x82
    8a64:	e5832000 	str	r2, [r3]
    8a68:	e1a00000 	nop			; (mov r0, r0)
    8a6c:	e24bd000 	sub	sp, fp, #0
    8a70:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8a74:	e12fff1e 	bx	lr

00008a78 <toc>:
    8a78:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8a7c:	e28db000 	add	fp, sp, #0
    8a80:	e30b3404 	movw	r3, #46084	; 0xb404
    8a84:	e3433f00 	movt	r3, #16128	; 0x3f00
    8a88:	e5933000 	ldr	r3, [r3]
    8a8c:	e1e02003 	mvn	r2, r3
    8a90:	e3043dd3 	movw	r3, #19923	; 0x4dd3
    8a94:	e3413062 	movt	r3, #4194	; 0x1062
    8a98:	e0832392 	umull	r2, r3, r2, r3
    8a9c:	e1a03323 	lsr	r3, r3, #6
    8aa0:	e1a00003 	mov	r0, r3
    8aa4:	e24bd000 	sub	sp, fp, #0
    8aa8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8aac:	e12fff1e 	bx	lr

00008ab0 <delay_cycles>:
    8ab0:	e2500001 	subs	r0, r0, #1
    8ab4:	1afffffd 	bne	8ab0 <delay_cycles>
    8ab8:	e1a0f00e 	mov	pc, lr

00008abc <read_cpsr>:
    8abc:	e10f0000 	mrs	r0, CPSR
    8ac0:	e1a0f00e 	mov	pc, lr

00008ac4 <write_cpsr>:
    8ac4:	e129f000 	msr	CPSR_fc, r0
    8ac8:	e1a0f00e 	mov	pc, lr

00008acc <disable_interrupts>:
    8acc:	e10f0000 	mrs	r0, CPSR
    8ad0:	e3a01d07 	mov	r1, #448	; 0x1c0
    8ad4:	e1800001 	orr	r0, r0, r1
    8ad8:	e129f000 	msr	CPSR_fc, r0
    8adc:	e1a0f00e 	mov	pc, lr

00008ae0 <enable_interrupts>:
    8ae0:	e10f0000 	mrs	r0, CPSR
    8ae4:	e3a01d07 	mov	r1, #448	; 0x1c0
    8ae8:	e1c00001 	bic	r0, r0, r1
    8aec:	e129f000 	msr	CPSR_fc, r0
    8af0:	e1a0f00e 	mov	pc, lr

00008af4 <func2>:
    8af4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8af8:	e28db000 	add	fp, sp, #0
    8afc:	e24dd00c 	sub	sp, sp, #12
    8b00:	e50b0008 	str	r0, [fp, #-8]
    8b04:	e50b100c 	str	r1, [fp, #-12]
    8b08:	e51b200c 	ldr	r2, [fp, #-12]
    8b0c:	e1a03002 	mov	r3, r2
    8b10:	e1a03103 	lsl	r3, r3, #2
    8b14:	e0833002 	add	r3, r3, r2
    8b18:	e1a02103 	lsl	r2, r3, #2
    8b1c:	e0832002 	add	r2, r3, r2
    8b20:	e51b3008 	ldr	r3, [fp, #-8]
    8b24:	e0823003 	add	r3, r2, r3
    8b28:	e1a00003 	mov	r0, r3
    8b2c:	e24bd000 	sub	sp, fp, #0
    8b30:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8b34:	e12fff1e 	bx	lr

00008b38 <unoptimized>:
    8b38:	e92d4870 	push	{r4, r5, r6, fp, lr}
    8b3c:	e28db010 	add	fp, sp, #16
    8b40:	e24dd01c 	sub	sp, sp, #28
    8b44:	e50b0028 	str	r0, [fp, #-40]	; 0x28
    8b48:	e3a03000 	mov	r3, #0
    8b4c:	e50b3018 	str	r3, [fp, #-24]
    8b50:	ea000037 	b	8c34 <unoptimized+0xfc>
    8b54:	e3a03011 	mov	r3, #17
    8b58:	e50b3020 	str	r3, [fp, #-32]
    8b5c:	e3a03000 	mov	r3, #0
    8b60:	e50b301c 	str	r3, [fp, #-28]
    8b64:	ea00002c 	b	8c1c <unoptimized+0xe4>
    8b68:	e3a03002 	mov	r3, #2
    8b6c:	e50b3024 	str	r3, [fp, #-36]	; 0x24
    8b70:	e51b3024 	ldr	r3, [fp, #-36]	; 0x24
    8b74:	e2833001 	add	r3, r3, #1
    8b78:	e50b3024 	str	r3, [fp, #-36]	; 0x24
    8b7c:	e51b3024 	ldr	r3, [fp, #-36]	; 0x24
    8b80:	e2432002 	sub	r2, r3, #2
    8b84:	e1a03002 	mov	r3, r2
    8b88:	e1a03083 	lsl	r3, r3, #1
    8b8c:	e0833002 	add	r3, r3, r2
    8b90:	e50b3024 	str	r3, [fp, #-36]	; 0x24
    8b94:	e51b301c 	ldr	r3, [fp, #-28]
    8b98:	e1a03103 	lsl	r3, r3, #2
    8b9c:	e51b2028 	ldr	r2, [fp, #-40]	; 0x28
    8ba0:	e0824003 	add	r4, r2, r3
    8ba4:	e51b301c 	ldr	r3, [fp, #-28]
    8ba8:	e1a03103 	lsl	r3, r3, #2
    8bac:	e51b2028 	ldr	r2, [fp, #-40]	; 0x28
    8bb0:	e0823003 	add	r3, r2, r3
    8bb4:	e5933000 	ldr	r3, [r3]
    8bb8:	e51b2020 	ldr	r2, [fp, #-32]
    8bbc:	e0030392 	mul	r3, r2, r3
    8bc0:	e2835010 	add	r5, r3, #16
    8bc4:	e51b3018 	ldr	r3, [fp, #-24]
    8bc8:	e1a03103 	lsl	r3, r3, #2
    8bcc:	e51b2028 	ldr	r2, [fp, #-40]	; 0x28
    8bd0:	e0823003 	add	r3, r2, r3
    8bd4:	e5936000 	ldr	r6, [r3]
    8bd8:	e51b0018 	ldr	r0, [fp, #-24]
    8bdc:	e51b101c 	ldr	r1, [fp, #-28]
    8be0:	ebffffc3 	bl	8af4 <func2>
    8be4:	e1a03000 	mov	r3, r0
    8be8:	e0030396 	mul	r3, r6, r3
    8bec:	e0852003 	add	r2, r5, r3
    8bf0:	e51b3024 	ldr	r3, [fp, #-36]	; 0x24
    8bf4:	e0823003 	add	r3, r2, r3
    8bf8:	e283200f 	add	r2, r3, #15
    8bfc:	e3530000 	cmp	r3, #0
    8c00:	b1a03002 	movlt	r3, r2
    8c04:	a1a03003 	movge	r3, r3
    8c08:	e1a03243 	asr	r3, r3, #4
    8c0c:	e5843000 	str	r3, [r4]
    8c10:	e51b301c 	ldr	r3, [fp, #-28]
    8c14:	e2833001 	add	r3, r3, #1
    8c18:	e50b301c 	str	r3, [fp, #-28]
    8c1c:	e51b301c 	ldr	r3, [fp, #-28]
    8c20:	e3530f7d 	cmp	r3, #500	; 0x1f4
    8c24:	baffffcf 	blt	8b68 <unoptimized+0x30>
    8c28:	e51b3018 	ldr	r3, [fp, #-24]
    8c2c:	e2833001 	add	r3, r3, #1
    8c30:	e50b3018 	str	r3, [fp, #-24]
    8c34:	e51b3018 	ldr	r3, [fp, #-24]
    8c38:	e3530f7d 	cmp	r3, #500	; 0x1f4
    8c3c:	baffffc4 	blt	8b54 <unoptimized+0x1c>
    8c40:	e24bd010 	sub	sp, fp, #16
    8c44:	e8bd4870 	pop	{r4, r5, r6, fp, lr}
    8c48:	e12fff1e 	bx	lr

00008c4c <optimize_me>:
    8c4c:	e92d4870 	push	{r4, r5, r6, fp, lr}
    8c50:	e28db010 	add	fp, sp, #16
    8c54:	e24dd01c 	sub	sp, sp, #28
    8c58:	e1a01000 	mov	r1, r0
    8c5c:	e3a09f7d 	mov	r9, #500	; 0x1f4
    8c60:	ea000001 	b	8c6c <optimize_me+0x20>
    8c64:	e24bd010 	sub	sp, fp, #16
    8c68:	e8bd4870 	pop	{r4, r5, r6, fp, lr}
    8c6c:	e3a08f7d 	mov	r8, #500	; 0x1f4
    8c70:	e2690f7d 	rsb	r0, r9, #500	; 0x1f4
    8c74:	e081a100 	add	sl, r1, r0, lsl #2
    8c78:	e59a6000 	ldr	r6, [sl]
    8c7c:	e3a07010 	mov	r7, #16
    8c80:	e3a0c011 	mov	ip, #17
    8c84:	ea000003 	b	8c98 <optimize_me+0x4c>
    8c88:	e2599001 	subs	r9, r9, #1
    8c8c:	cafffff6 	bgt	8c6c <optimize_me+0x20>
    8c90:	e24bd010 	sub	sp, fp, #16
    8c94:	e8bd4870 	pop	{r4, r5, r6, fp, lr}
    8c98:	e2682f7d 	rsb	r2, r8, #500	; 0x1f4
    8c9c:	e0814102 	add	r4, r1, r2, lsl #2
    8ca0:	e5943000 	ldr	r3, [r4]
    8ca4:	e0257c93 	mla	r5, r3, ip, r7
    8ca8:	e0823102 	add	r3, r2, r2, lsl #2
    8cac:	e0832103 	add	r2, r3, r3, lsl #2
    8cb0:	e0823000 	add	r3, r2, r0
    8cb4:	e0235396 	mla	r3, r6, r3, r5
    8cb8:	e2933003 	adds	r3, r3, #3
    8cbc:	b283300f 	addlt	r3, r3, #15
    8cc0:	e1a03243 	asr	r3, r3, #4
    8cc4:	e5843000 	str	r3, [r4]
    8cc8:	e154000a 	cmp	r4, sl
    8ccc:	059a6000 	ldreq	r6, [sl]
    8cd0:	e2488001 	sub	r8, r8, #1
    8cd4:	e2682f7d 	rsb	r2, r8, #500	; 0x1f4
    8cd8:	e0814102 	add	r4, r1, r2, lsl #2
    8cdc:	e5943000 	ldr	r3, [r4]
    8ce0:	e0257c93 	mla	r5, r3, ip, r7
    8ce4:	e0823102 	add	r3, r2, r2, lsl #2
    8ce8:	e0832103 	add	r2, r3, r3, lsl #2
    8cec:	e0823000 	add	r3, r2, r0
    8cf0:	e0235396 	mla	r3, r6, r3, r5
    8cf4:	e2933003 	adds	r3, r3, #3
    8cf8:	b283300f 	addlt	r3, r3, #15
    8cfc:	e1a03243 	asr	r3, r3, #4
    8d00:	e5843000 	str	r3, [r4]
    8d04:	e154000a 	cmp	r4, sl
    8d08:	059a6000 	ldreq	r6, [sl]
    8d0c:	e2488001 	sub	r8, r8, #1
    8d10:	e2682f7d 	rsb	r2, r8, #500	; 0x1f4
    8d14:	e0814102 	add	r4, r1, r2, lsl #2
    8d18:	e5943000 	ldr	r3, [r4]
    8d1c:	e0257c93 	mla	r5, r3, ip, r7
    8d20:	e0823102 	add	r3, r2, r2, lsl #2
    8d24:	e0832103 	add	r2, r3, r3, lsl #2
    8d28:	e0823000 	add	r3, r2, r0
    8d2c:	e0235396 	mla	r3, r6, r3, r5
    8d30:	e2933003 	adds	r3, r3, #3
    8d34:	b283300f 	addlt	r3, r3, #15
    8d38:	e1a03243 	asr	r3, r3, #4
    8d3c:	e5843000 	str	r3, [r4]
    8d40:	e154000a 	cmp	r4, sl
    8d44:	059a6000 	ldreq	r6, [sl]
    8d48:	e2488001 	sub	r8, r8, #1
    8d4c:	e2682f7d 	rsb	r2, r8, #500	; 0x1f4
    8d50:	e0814102 	add	r4, r1, r2, lsl #2
    8d54:	e5943000 	ldr	r3, [r4]
    8d58:	e0257c93 	mla	r5, r3, ip, r7
    8d5c:	e0823102 	add	r3, r2, r2, lsl #2
    8d60:	e0832103 	add	r2, r3, r3, lsl #2
    8d64:	e0823000 	add	r3, r2, r0
    8d68:	e0235396 	mla	r3, r6, r3, r5
    8d6c:	e2933003 	adds	r3, r3, #3
    8d70:	b283300f 	addlt	r3, r3, #15
    8d74:	e1a03243 	asr	r3, r3, #4
    8d78:	e5843000 	str	r3, [r4]
    8d7c:	e154000a 	cmp	r4, sl
    8d80:	059a6000 	ldreq	r6, [sl]
    8d84:	e2488001 	sub	r8, r8, #1
    8d88:	e2682f7d 	rsb	r2, r8, #500	; 0x1f4
    8d8c:	e0814102 	add	r4, r1, r2, lsl #2
    8d90:	e5943000 	ldr	r3, [r4]
    8d94:	e0257c93 	mla	r5, r3, ip, r7
    8d98:	e0823102 	add	r3, r2, r2, lsl #2
    8d9c:	e0832103 	add	r2, r3, r3, lsl #2
    8da0:	e0823000 	add	r3, r2, r0
    8da4:	e0235396 	mla	r3, r6, r3, r5
    8da8:	e2933003 	adds	r3, r3, #3
    8dac:	b283300f 	addlt	r3, r3, #15
    8db0:	e1a03243 	asr	r3, r3, #4
    8db4:	e5843000 	str	r3, [r4]
    8db8:	e154000a 	cmp	r4, sl
    8dbc:	059a6000 	ldreq	r6, [sl]
    8dc0:	e2488001 	sub	r8, r8, #1
    8dc4:	e2682f7d 	rsb	r2, r8, #500	; 0x1f4
    8dc8:	e0814102 	add	r4, r1, r2, lsl #2
    8dcc:	e5943000 	ldr	r3, [r4]
    8dd0:	e0257c93 	mla	r5, r3, ip, r7
    8dd4:	e0823102 	add	r3, r2, r2, lsl #2
    8dd8:	e0832103 	add	r2, r3, r3, lsl #2
    8ddc:	e0823000 	add	r3, r2, r0
    8de0:	e0235396 	mla	r3, r6, r3, r5
    8de4:	e2933003 	adds	r3, r3, #3
    8de8:	b283300f 	addlt	r3, r3, #15
    8dec:	e1a03243 	asr	r3, r3, #4
    8df0:	e5843000 	str	r3, [r4]
    8df4:	e154000a 	cmp	r4, sl
    8df8:	059a6000 	ldreq	r6, [sl]
    8dfc:	e2488001 	sub	r8, r8, #1
    8e00:	e2682f7d 	rsb	r2, r8, #500	; 0x1f4
    8e04:	e0814102 	add	r4, r1, r2, lsl #2
    8e08:	e5943000 	ldr	r3, [r4]
    8e0c:	e0257c93 	mla	r5, r3, ip, r7
    8e10:	e0823102 	add	r3, r2, r2, lsl #2
    8e14:	e0832103 	add	r2, r3, r3, lsl #2
    8e18:	e0823000 	add	r3, r2, r0
    8e1c:	e0235396 	mla	r3, r6, r3, r5
    8e20:	e2933003 	adds	r3, r3, #3
    8e24:	b283300f 	addlt	r3, r3, #15
    8e28:	e1a03243 	asr	r3, r3, #4
    8e2c:	e5843000 	str	r3, [r4]
    8e30:	e154000a 	cmp	r4, sl
    8e34:	059a6000 	ldreq	r6, [sl]
    8e38:	e2488001 	sub	r8, r8, #1
    8e3c:	e2682f7d 	rsb	r2, r8, #500	; 0x1f4
    8e40:	e0814102 	add	r4, r1, r2, lsl #2
    8e44:	e5943000 	ldr	r3, [r4]
    8e48:	e0257c93 	mla	r5, r3, ip, r7
    8e4c:	e0823102 	add	r3, r2, r2, lsl #2
    8e50:	e0832103 	add	r2, r3, r3, lsl #2
    8e54:	e0823000 	add	r3, r2, r0
    8e58:	e0235396 	mla	r3, r6, r3, r5
    8e5c:	e2933003 	adds	r3, r3, #3
    8e60:	b283300f 	addlt	r3, r3, #15
    8e64:	e1a03243 	asr	r3, r3, #4
    8e68:	e5843000 	str	r3, [r4]
    8e6c:	e154000a 	cmp	r4, sl
    8e70:	059a6000 	ldreq	r6, [sl]
    8e74:	e2488001 	sub	r8, r8, #1
    8e78:	e2682f7d 	rsb	r2, r8, #500	; 0x1f4
    8e7c:	e0814102 	add	r4, r1, r2, lsl #2
    8e80:	e5943000 	ldr	r3, [r4]
    8e84:	e0257c93 	mla	r5, r3, ip, r7
    8e88:	e0823102 	add	r3, r2, r2, lsl #2
    8e8c:	e0832103 	add	r2, r3, r3, lsl #2
    8e90:	e0823000 	add	r3, r2, r0
    8e94:	e0235396 	mla	r3, r6, r3, r5
    8e98:	e2933003 	adds	r3, r3, #3
    8e9c:	b283300f 	addlt	r3, r3, #15
    8ea0:	e1a03243 	asr	r3, r3, #4
    8ea4:	e5843000 	str	r3, [r4]
    8ea8:	e154000a 	cmp	r4, sl
    8eac:	059a6000 	ldreq	r6, [sl]
    8eb0:	e2488001 	sub	r8, r8, #1
    8eb4:	e2682f7d 	rsb	r2, r8, #500	; 0x1f4
    8eb8:	e0814102 	add	r4, r1, r2, lsl #2
    8ebc:	e5943000 	ldr	r3, [r4]
    8ec0:	e0257c93 	mla	r5, r3, ip, r7
    8ec4:	e0823102 	add	r3, r2, r2, lsl #2
    8ec8:	e0832103 	add	r2, r3, r3, lsl #2
    8ecc:	e0823000 	add	r3, r2, r0
    8ed0:	e0235396 	mla	r3, r6, r3, r5
    8ed4:	e2933003 	adds	r3, r3, #3
    8ed8:	b283300f 	addlt	r3, r3, #15
    8edc:	e1a03243 	asr	r3, r3, #4
    8ee0:	e5843000 	str	r3, [r4]
    8ee4:	e154000a 	cmp	r4, sl
    8ee8:	059a6000 	ldreq	r6, [sl]
    8eec:	e2488001 	sub	r8, r8, #1
    8ef0:	e2682f7d 	rsb	r2, r8, #500	; 0x1f4
    8ef4:	e0814102 	add	r4, r1, r2, lsl #2
    8ef8:	e5943000 	ldr	r3, [r4]
    8efc:	e0257c93 	mla	r5, r3, ip, r7
    8f00:	e0823102 	add	r3, r2, r2, lsl #2
    8f04:	e0832103 	add	r2, r3, r3, lsl #2
    8f08:	e0823000 	add	r3, r2, r0
    8f0c:	e0235396 	mla	r3, r6, r3, r5
    8f10:	e2933003 	adds	r3, r3, #3
    8f14:	b283300f 	addlt	r3, r3, #15
    8f18:	e1a03243 	asr	r3, r3, #4
    8f1c:	e5843000 	str	r3, [r4]
    8f20:	e154000a 	cmp	r4, sl
    8f24:	059a6000 	ldreq	r6, [sl]
    8f28:	e2488001 	sub	r8, r8, #1
    8f2c:	e2682f7d 	rsb	r2, r8, #500	; 0x1f4
    8f30:	e0814102 	add	r4, r1, r2, lsl #2
    8f34:	e5943000 	ldr	r3, [r4]
    8f38:	e0257c93 	mla	r5, r3, ip, r7
    8f3c:	e0823102 	add	r3, r2, r2, lsl #2
    8f40:	e0832103 	add	r2, r3, r3, lsl #2
    8f44:	e0823000 	add	r3, r2, r0
    8f48:	e0235396 	mla	r3, r6, r3, r5
    8f4c:	e2933003 	adds	r3, r3, #3
    8f50:	b283300f 	addlt	r3, r3, #15
    8f54:	e1a03243 	asr	r3, r3, #4
    8f58:	e5843000 	str	r3, [r4]
    8f5c:	e154000a 	cmp	r4, sl
    8f60:	059a6000 	ldreq	r6, [sl]
    8f64:	e2588001 	subs	r8, r8, #1
    8f68:	caffff4a 	bgt	8c98 <optimize_me+0x4c>
    8f6c:	e2599001 	subs	r9, r9, #1
    8f70:	caffff3d 	bgt	8c6c <optimize_me+0x20>
    8f74:	e24bd010 	sub	sp, fp, #16
    8f78:	e8bd4870 	pop	{r4, r5, r6, fp, lr}
    8f7c:	e12fff1e 	bx	lr

00008f80 <__aeabi_uldivmod>:
    8f80:	e3530000 	cmp	r3, #0
    8f84:	03520000 	cmpeq	r2, #0
    8f88:	1a000004 	bne	8fa0 <__aeabi_uldivmod+0x20>
    8f8c:	e3510000 	cmp	r1, #0
    8f90:	03500000 	cmpeq	r0, #0
    8f94:	13e01000 	mvnne	r1, #0
    8f98:	13e00000 	mvnne	r0, #0
    8f9c:	ea000027 	b	9040 <__aeabi_idiv0>
    8fa0:	e24dd008 	sub	sp, sp, #8
    8fa4:	e92d6000 	push	{sp, lr}
    8fa8:	eb000014 	bl	9000 <__gnu_uldivmod_helper>
    8fac:	e59de004 	ldr	lr, [sp, #4]
    8fb0:	e28dd008 	add	sp, sp, #8
    8fb4:	e8bd000c 	pop	{r2, r3}
    8fb8:	e12fff1e 	bx	lr

00008fbc <__gnu_ldivmod_helper>:
    8fbc:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8fc0:	e59d6020 	ldr	r6, [sp, #32]
    8fc4:	e1a07002 	mov	r7, r2
    8fc8:	e1a0a003 	mov	sl, r3
    8fcc:	e1a04000 	mov	r4, r0
    8fd0:	e1a05001 	mov	r5, r1
    8fd4:	eb00001a 	bl	9044 <__divdi3>
    8fd8:	e1a03000 	mov	r3, r0
    8fdc:	e0020197 	mul	r2, r7, r1
    8fe0:	e0898097 	umull	r8, r9, r7, r0
    8fe4:	e023239a 	mla	r3, sl, r3, r2
    8fe8:	e0544008 	subs	r4, r4, r8
    8fec:	e0839009 	add	r9, r3, r9
    8ff0:	e0c55009 	sbc	r5, r5, r9
    8ff4:	e8860030 	stm	r6, {r4, r5}
    8ff8:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    8ffc:	e12fff1e 	bx	lr

00009000 <__gnu_uldivmod_helper>:
    9000:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    9004:	e59d5018 	ldr	r5, [sp, #24]
    9008:	e1a04002 	mov	r4, r2
    900c:	e1a08003 	mov	r8, r3
    9010:	e1a06000 	mov	r6, r0
    9014:	e1a07001 	mov	r7, r1
    9018:	eb000067 	bl	91bc <__udivdi3>
    901c:	e0080890 	mul	r8, r0, r8
    9020:	e0832490 	umull	r2, r3, r0, r4
    9024:	e0248491 	mla	r4, r1, r4, r8
    9028:	e0566002 	subs	r6, r6, r2
    902c:	e0843003 	add	r3, r4, r3
    9030:	e0c77003 	sbc	r7, r7, r3
    9034:	e88500c0 	stm	r5, {r6, r7}
    9038:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    903c:	e12fff1e 	bx	lr

00009040 <__aeabi_idiv0>:
    9040:	e12fff1e 	bx	lr

00009044 <__divdi3>:
    9044:	e3510000 	cmp	r1, #0
    9048:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    904c:	a1a04000 	movge	r4, r0
    9050:	a1a05001 	movge	r5, r1
    9054:	a3a0a000 	movge	sl, #0
    9058:	ba000053 	blt	91ac <__divdi3+0x168>
    905c:	e3530000 	cmp	r3, #0
    9060:	a1a08002 	movge	r8, r2
    9064:	a1a09003 	movge	r9, r3
    9068:	ba00004b 	blt	919c <__divdi3+0x158>
    906c:	e1550009 	cmp	r5, r9
    9070:	01540008 	cmpeq	r4, r8
    9074:	33a02000 	movcc	r2, #0
    9078:	33a03000 	movcc	r3, #0
    907c:	3a00003b 	bcc	9170 <__divdi3+0x12c>
    9080:	e1a01009 	mov	r1, r9
    9084:	e1a00008 	mov	r0, r8
    9088:	eb000093 	bl	92dc <__clzdi2>
    908c:	e1a01005 	mov	r1, r5
    9090:	e1a0b000 	mov	fp, r0
    9094:	e1a00004 	mov	r0, r4
    9098:	eb00008f 	bl	92dc <__clzdi2>
    909c:	e060000b 	rsb	r0, r0, fp
    90a0:	e240e020 	sub	lr, r0, #32
    90a4:	e1a07019 	lsl	r7, r9, r0
    90a8:	e1877e18 	orr	r7, r7, r8, lsl lr
    90ac:	e260c020 	rsb	ip, r0, #32
    90b0:	e1877c38 	orr	r7, r7, r8, lsr ip
    90b4:	e1550007 	cmp	r5, r7
    90b8:	e1a06018 	lsl	r6, r8, r0
    90bc:	01540006 	cmpeq	r4, r6
    90c0:	e1a01000 	mov	r1, r0
    90c4:	33a02000 	movcc	r2, #0
    90c8:	33a03000 	movcc	r3, #0
    90cc:	3a000005 	bcc	90e8 <__divdi3+0xa4>
    90d0:	e3a08001 	mov	r8, #1
    90d4:	e0544006 	subs	r4, r4, r6
    90d8:	e1a03e18 	lsl	r3, r8, lr
    90dc:	e1833c38 	orr	r3, r3, r8, lsr ip
    90e0:	e0c55007 	sbc	r5, r5, r7
    90e4:	e1a02018 	lsl	r2, r8, r0
    90e8:	e3500000 	cmp	r0, #0
    90ec:	0a00001f 	beq	9170 <__divdi3+0x12c>
    90f0:	e1b070a7 	lsrs	r7, r7, #1
    90f4:	e1a06066 	rrx	r6, r6
    90f8:	ea000007 	b	911c <__divdi3+0xd8>
    90fc:	e0544006 	subs	r4, r4, r6
    9100:	e0c55007 	sbc	r5, r5, r7
    9104:	e0944004 	adds	r4, r4, r4
    9108:	e0a55005 	adc	r5, r5, r5
    910c:	e2944001 	adds	r4, r4, #1
    9110:	e2a55000 	adc	r5, r5, #0
    9114:	e2500001 	subs	r0, r0, #1
    9118:	0a000006 	beq	9138 <__divdi3+0xf4>
    911c:	e1570005 	cmp	r7, r5
    9120:	01560004 	cmpeq	r6, r4
    9124:	9afffff4 	bls	90fc <__divdi3+0xb8>
    9128:	e0944004 	adds	r4, r4, r4
    912c:	e0a55005 	adc	r5, r5, r5
    9130:	e2500001 	subs	r0, r0, #1
    9134:	1afffff8 	bne	911c <__divdi3+0xd8>
    9138:	e261c020 	rsb	ip, r1, #32
    913c:	e1a00134 	lsr	r0, r4, r1
    9140:	e0922004 	adds	r2, r2, r4
    9144:	e241e020 	sub	lr, r1, #32
    9148:	e1800c15 	orr	r0, r0, r5, lsl ip
    914c:	e1a04135 	lsr	r4, r5, r1
    9150:	e1800e35 	orr	r0, r0, r5, lsr lr
    9154:	e1a07114 	lsl	r7, r4, r1
    9158:	e1877e10 	orr	r7, r7, r0, lsl lr
    915c:	e1a06110 	lsl	r6, r0, r1
    9160:	e0a33005 	adc	r3, r3, r5
    9164:	e1877c30 	orr	r7, r7, r0, lsr ip
    9168:	e0522006 	subs	r2, r2, r6
    916c:	e0c33007 	sbc	r3, r3, r7
    9170:	e29a0000 	adds	r0, sl, #0
    9174:	13a00001 	movne	r0, #1
    9178:	e3a01000 	mov	r1, #0
    917c:	e2704000 	rsbs	r4, r0, #0
    9180:	e2e15000 	rsc	r5, r1, #0
    9184:	e0222004 	eor	r2, r2, r4
    9188:	e0233005 	eor	r3, r3, r5
    918c:	e0900002 	adds	r0, r0, r2
    9190:	e0a11003 	adc	r1, r1, r3
    9194:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    9198:	e12fff1e 	bx	lr
    919c:	e2728000 	rsbs	r8, r2, #0
    91a0:	e1e0a00a 	mvn	sl, sl
    91a4:	e2e39000 	rsc	r9, r3, #0
    91a8:	eaffffaf 	b	906c <__divdi3+0x28>
    91ac:	e2704000 	rsbs	r4, r0, #0
    91b0:	e2e15000 	rsc	r5, r1, #0
    91b4:	e3e0a000 	mvn	sl, #0
    91b8:	eaffffa7 	b	905c <__divdi3+0x18>

000091bc <__udivdi3>:
    91bc:	e1510003 	cmp	r1, r3
    91c0:	01500002 	cmpeq	r0, r2
    91c4:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    91c8:	e1a04000 	mov	r4, r0
    91cc:	e1a05001 	mov	r5, r1
    91d0:	e1a08002 	mov	r8, r2
    91d4:	e1a09003 	mov	r9, r3
    91d8:	33a00000 	movcc	r0, #0
    91dc:	33a01000 	movcc	r1, #0
    91e0:	3a00003b 	bcc	92d4 <__udivdi3+0x118>
    91e4:	e1a01003 	mov	r1, r3
    91e8:	e1a00002 	mov	r0, r2
    91ec:	eb00003a 	bl	92dc <__clzdi2>
    91f0:	e1a01005 	mov	r1, r5
    91f4:	e1a0a000 	mov	sl, r0
    91f8:	e1a00004 	mov	r0, r4
    91fc:	eb000036 	bl	92dc <__clzdi2>
    9200:	e060300a 	rsb	r3, r0, sl
    9204:	e243e020 	sub	lr, r3, #32
    9208:	e1a07319 	lsl	r7, r9, r3
    920c:	e1877e18 	orr	r7, r7, r8, lsl lr
    9210:	e263c020 	rsb	ip, r3, #32
    9214:	e1877c38 	orr	r7, r7, r8, lsr ip
    9218:	e1550007 	cmp	r5, r7
    921c:	e1a06318 	lsl	r6, r8, r3
    9220:	01540006 	cmpeq	r4, r6
    9224:	e1a02003 	mov	r2, r3
    9228:	33a00000 	movcc	r0, #0
    922c:	33a01000 	movcc	r1, #0
    9230:	3a000005 	bcc	924c <__udivdi3+0x90>
    9234:	e3a08001 	mov	r8, #1
    9238:	e0544006 	subs	r4, r4, r6
    923c:	e1a01e18 	lsl	r1, r8, lr
    9240:	e1811c38 	orr	r1, r1, r8, lsr ip
    9244:	e0c55007 	sbc	r5, r5, r7
    9248:	e1a00318 	lsl	r0, r8, r3
    924c:	e3530000 	cmp	r3, #0
    9250:	0a00001f 	beq	92d4 <__udivdi3+0x118>
    9254:	e1b070a7 	lsrs	r7, r7, #1
    9258:	e1a06066 	rrx	r6, r6
    925c:	ea000007 	b	9280 <__udivdi3+0xc4>
    9260:	e0544006 	subs	r4, r4, r6
    9264:	e0c55007 	sbc	r5, r5, r7
    9268:	e0944004 	adds	r4, r4, r4
    926c:	e0a55005 	adc	r5, r5, r5
    9270:	e2944001 	adds	r4, r4, #1
    9274:	e2a55000 	adc	r5, r5, #0
    9278:	e2533001 	subs	r3, r3, #1
    927c:	0a000006 	beq	929c <__udivdi3+0xe0>
    9280:	e1570005 	cmp	r7, r5
    9284:	01560004 	cmpeq	r6, r4
    9288:	9afffff4 	bls	9260 <__udivdi3+0xa4>
    928c:	e0944004 	adds	r4, r4, r4
    9290:	e0a55005 	adc	r5, r5, r5
    9294:	e2533001 	subs	r3, r3, #1
    9298:	1afffff8 	bne	9280 <__udivdi3+0xc4>
    929c:	e0948000 	adds	r8, r4, r0
    92a0:	e0a59001 	adc	r9, r5, r1
    92a4:	e1a03234 	lsr	r3, r4, r2
    92a8:	e2621020 	rsb	r1, r2, #32
    92ac:	e2420020 	sub	r0, r2, #32
    92b0:	e1833115 	orr	r3, r3, r5, lsl r1
    92b4:	e1a0c235 	lsr	ip, r5, r2
    92b8:	e1833035 	orr	r3, r3, r5, lsr r0
    92bc:	e1a0721c 	lsl	r7, ip, r2
    92c0:	e1877013 	orr	r7, r7, r3, lsl r0
    92c4:	e1a06213 	lsl	r6, r3, r2
    92c8:	e1877133 	orr	r7, r7, r3, lsr r1
    92cc:	e0580006 	subs	r0, r8, r6
    92d0:	e0c91007 	sbc	r1, r9, r7
    92d4:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    92d8:	e12fff1e 	bx	lr

000092dc <__clzdi2>:
    92dc:	e92d4010 	push	{r4, lr}
    92e0:	e3510000 	cmp	r1, #0
    92e4:	1a000002 	bne	92f4 <__clzdi2+0x18>
    92e8:	eb000005 	bl	9304 <__clzsi2>
    92ec:	e2800020 	add	r0, r0, #32
    92f0:	ea000001 	b	92fc <__clzdi2+0x20>
    92f4:	e1a00001 	mov	r0, r1
    92f8:	eb000001 	bl	9304 <__clzsi2>
    92fc:	e8bd4010 	pop	{r4, lr}
    9300:	e12fff1e 	bx	lr

00009304 <__clzsi2>:
    9304:	e3a0101c 	mov	r1, #28
    9308:	e3500801 	cmp	r0, #65536	; 0x10000
    930c:	21a00820 	lsrcs	r0, r0, #16
    9310:	22411010 	subcs	r1, r1, #16
    9314:	e3500c01 	cmp	r0, #256	; 0x100
    9318:	21a00420 	lsrcs	r0, r0, #8
    931c:	22411008 	subcs	r1, r1, #8
    9320:	e3500010 	cmp	r0, #16
    9324:	21a00220 	lsrcs	r0, r0, #4
    9328:	22411004 	subcs	r1, r1, #4
    932c:	e28f2008 	add	r2, pc, #8
    9330:	e7d20000 	ldrb	r0, [r2, r0]
    9334:	e0800001 	add	r0, r0, r1
    9338:	e12fff1e 	bx	lr
    933c:	02020304 	andeq	r0, r2, #4, 6	; 0x10000000
    9340:	01010101 	tsteq	r1, r1, lsl #2
	...

Disassembly of section .rodata:

0000a000 <__rodata_start>:
    a000:	2b2b2b2b 	blcs	ad4cb4 <__user_program+0x7d4cb4>
    a004:	4f2b2b2b 	svcmi	0x002b2b2b
    a008:	6d697470 	cfstrdvs	mvd7, [r9, #-448]!	; 0xfffffe40
    a00c:	64657a69 	strbtvs	r7, [r5], #-2665	; 0xa69
    a010:	6e754620 	cdpvs	6, 7, cr4, cr5, cr0, {1}
    a014:	6f697463 	svcvs	0x00697463
    a018:	2b2b2b6e 	blcs	ad4dd8 <__user_program+0x7d4dd8>
    a01c:	2b2b2b2b 	blcs	ad4cd0 <__user_program+0x7d4cd0>
    a020:	0000000a 	andeq	r0, r0, sl

0000a024 <.LC1>:
    a024:	000a6425 	andeq	r6, sl, r5, lsr #8

0000a028 <.LC2>:
    a028:	2b2b2b2b 	blcs	ad4cdc <__user_program+0x7d4cdc>
    a02c:	552b2b2b 	strpl	r2, [fp, #-2859]!	; 0xb2b
    a030:	74706f6e 	ldrbtvc	r6, [r0], #-3950	; 0xf6e
    a034:	7a696d69 	bvc	1a655e0 <__user_program+0x17655e0>
    a038:	46206465 	strtmi	r6, [r0], -r5, ror #8
    a03c:	74636e75 	strbtvc	r6, [r3], #-3701	; 0xe75
    a040:	2b6e6f69 	blcs	1ba5dec <__user_program+0x18a5dec>
    a044:	2b2b2b2b 	blcs	ad4cf8 <__user_program+0x7d4cf8>
    a048:	000a2b2b 	andeq	r2, sl, fp, lsr #22

0000a04c <.LC3>:
    a04c:	2b2b2b2b 	blcs	ad4d00 <__user_program+0x7d4d00>
    a050:	542b2b2b 	strtpl	r2, [fp], #-2859	; 0xb2b
    a054:	20747365 	rsbscs	r7, r4, r5, ror #6
    a058:	6c696146 	stfvse	f6, [r9], #-280	; 0xfffffee8
    a05c:	2b2b6465 	blcs	ae31f8 <__user_program+0x7e31f8>
    a060:	2b2b2b2b 	blcs	ad4d14 <__user_program+0x7d4d14>
    a064:	00000a2b 	andeq	r0, r0, fp, lsr #20

0000a068 <.LC4>:
    a068:	2b2b2b2b 	blcs	ad4d1c <__user_program+0x7d4d1c>
    a06c:	542b2b2b 	strtpl	r2, [fp], #-2859	; 0xb2b
    a070:	20747365 	rsbscs	r7, r4, r5, ror #6
    a074:	73736150 	cmnvc	r3, #80, 2
    a078:	2b2b6465 	blcs	ae3214 <__user_program+0x7e3214>
    a07c:	2b2b2b2b 	blcs	ad4d30 <__user_program+0x7d4d30>
    a080:	00000a2b 	andeq	r0, r0, fp, lsr #20

0000a084 <.LC0>:
    a084:	00000030 	andeq	r0, r0, r0, lsr r0

0000a088 <.LC1>:
    a088:	Address 0x0000a088 is out of bounds.


Disassembly of section .ARM.exidx:

0000a08c <.ARM.exidx>:
    a08c:	7fffefb8 	svcvc	0x00ffefb8
    a090:	00000001 	andeq	r0, r0, r1

Disassembly of section .data:

0000b000 <__data_start>:
    b000:	3f200000 	svccc	0x00200000

0000b004 <digits>:
    b004:	33323130 	teqcc	r2, #48, 2
    b008:	37363534 			; <UNDEFINED> instruction: 0x37363534
    b00c:	62613938 	rsbvs	r3, r1, #56, 18	; 0xe0000
    b010:	66656463 	strbtvs	r6, [r5], -r3, ror #8
	...

Disassembly of section .bss:

0000c000 <__bss_start>:
	...

0000c7d0 <array1>:
	...

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
  6c:	2a070802 	bcs	1c207c <__end+0x9407c>
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
 154:	b0000305 	andlt	r0, r0, r5, lsl #6
 158:	040b0000 	streq	r0, [fp], #-0
 15c:	00000160 	andeq	r0, r0, r0, ror #2
 160:	00005a0c 	andeq	r5, r0, ip, lsl #20
 164:	00dd0000 	sbcseq	r0, sp, r0
 168:	00040000 	andeq	r0, r4, r0
 16c:	000000b7 	strheq	r0, [r0], -r7
 170:	00ae0104 	adceq	r0, lr, r4, lsl #2
 174:	67010000 	strvs	r0, [r1, -r0]
 178:	83000001 	movwhi	r0, #1
 17c:	74000000 	strvc	r0, [r0], #-0
 180:	58000083 	stmdapl	r0, {r0, r1, r7}
 184:	96000001 	strls	r0, [r0], -r1
 188:	02000000 	andeq	r0, r0, #0
 18c:	00620801 	rsbeq	r0, r2, r1, lsl #16
 190:	02020000 	andeq	r0, r2, #0
 194:	00014305 	andeq	r4, r1, r5, lsl #6
 198:	05040300 	streq	r0, [r4, #-768]	; 0x300
 19c:	00746e69 	rsbseq	r6, r4, r9, ror #28
 1a0:	00050802 	andeq	r0, r5, r2, lsl #16
 1a4:	02000000 	andeq	r0, r0, #0
 1a8:	00590801 	subseq	r0, r9, r1, lsl #16
 1ac:	02020000 	andeq	r0, r2, #0
 1b0:	00007007 	andeq	r7, r0, r7
 1b4:	00670400 	rsbeq	r0, r7, r0, lsl #8
 1b8:	1a020000 	bne	801c0 <__bss_end+0x731c0>
 1bc:	0000005a 	andeq	r0, r0, sl, asr r0
 1c0:	34070402 	strcc	r0, [r7], #-1026	; 0x402
 1c4:	02000000 	andeq	r0, r0, #0
 1c8:	002a0708 	eoreq	r0, sl, r8, lsl #14
 1cc:	9a050000 	bls	1401d4 <__end+0x121d4>
 1d0:	01000001 	tsteq	r0, r1
 1d4:	00837417 	addeq	r7, r3, r7, lsl r4
 1d8:	00015800 	andeq	r5, r1, r0, lsl #16
 1dc:	a69c0100 	ldrge	r0, [ip], r0, lsl #2
 1e0:	06000000 	streq	r0, [r0], -r0
 1e4:	19010069 	stmdbne	r1, {r0, r3, r5, r6}
 1e8:	00000033 	andeq	r0, r0, r3, lsr r0
 1ec:	07749102 	ldrbeq	r9, [r4, -r2, lsl #2]!
 1f0:	000001a6 	andeq	r0, r0, r6, lsr #3
 1f4:	00331901 	eorseq	r1, r3, r1, lsl #18
 1f8:	91020000 	mrsls	r0, (UNDEF: 2)
 1fc:	018f0770 	orreq	r0, pc, r0, ror r7	; <UNPREDICTABLE>
 200:	1a010000 	bne	40208 <__bss_end+0x33208>
 204:	0000004f 	andeq	r0, r0, pc, asr #32
 208:	006c9102 	rsbeq	r9, ip, r2, lsl #2
 20c:	00003308 	andeq	r3, r0, r8, lsl #6
 210:	0000b700 	andeq	fp, r0, r0, lsl #14
 214:	00b70900 	adcseq	r0, r7, r0, lsl #18
 218:	01f30000 	mvnseq	r0, r0
 21c:	07040200 	streq	r0, [r4, -r0, lsl #4]
 220:	000001ab 	andeq	r0, r0, fp, lsr #3
 224:	0001600a 	andeq	r6, r1, sl
 228:	a6120100 	ldrge	r0, [r2], -r0, lsl #2
 22c:	05000000 	streq	r0, [r0, #-0]
 230:	00c7d003 	sbceq	sp, r7, r3
 234:	01880a00 	orreq	r0, r8, r0, lsl #20
 238:	12010000 	andne	r0, r1, #0
 23c:	000000a6 	andeq	r0, r0, r6, lsr #1
 240:	c0000305 	andgt	r0, r0, r5, lsl #6
 244:	35000000 	strcc	r0, [r0, #-0]
 248:	04000002 	streq	r0, [r0], #-2
 24c:	00014900 	andeq	r4, r1, r0, lsl #18
 250:	ae010400 	cfcpysge	mvf0, mvf1
 254:	01000000 	mrseq	r0, (UNDEF: 0)
 258:	000001ed 	andeq	r0, r0, sp, ror #3
 25c:	00000083 	andeq	r0, r0, r3, lsl #1
 260:	000084cc 	andeq	r8, r0, ip, asr #9
 264:	00000388 	andeq	r0, r0, r8, lsl #7
 268:	00000148 	andeq	r0, r0, r8, asr #2
 26c:	00005202 	andeq	r5, r0, r2, lsl #4
 270:	300e0200 	andcc	r0, lr, r0, lsl #4
 274:	03000000 	movweq	r0, #0
 278:	00620801 	rsbeq	r0, r2, r1, lsl #16
 27c:	02030000 	andeq	r0, r3, #0
 280:	00014305 	andeq	r4, r1, r5, lsl #6
 284:	00680200 	rsbeq	r0, r8, r0, lsl #4
 288:	12020000 	andne	r0, r2, #0
 28c:	00000049 	andeq	r0, r0, r9, asr #32
 290:	69050404 	stmdbvs	r5, {r2, sl}
 294:	0300746e 	movweq	r7, #1134	; 0x46e
 298:	00000508 	andeq	r0, r0, r8, lsl #10
 29c:	51020000 	mrspl	r0, (UNDEF: 2)
 2a0:	02000000 	andeq	r0, r0, #0
 2a4:	00006216 	andeq	r6, r0, r6, lsl r2
 2a8:	08010300 	stmdaeq	r1, {r8, r9}
 2ac:	00000059 	andeq	r0, r0, r9, asr r0
 2b0:	70070203 	andvc	r0, r7, r3, lsl #4
 2b4:	02000000 	andeq	r0, r0, #0
 2b8:	00000067 	andeq	r0, r0, r7, rrx
 2bc:	007b1a02 	rsbseq	r1, fp, r2, lsl #20
 2c0:	04030000 	streq	r0, [r3], #-0
 2c4:	00003407 	andeq	r3, r0, r7, lsl #8
 2c8:	01c40200 	biceq	r0, r4, r0, lsl #4
 2cc:	1c020000 	stcne	0, cr0, [r2], {-0}
 2d0:	0000008d 	andeq	r0, r0, sp, lsl #1
 2d4:	2a070803 	bcs	1c22e8 <__end+0x942e8>
 2d8:	02000000 	andeq	r0, r0, #0
 2dc:	000001d4 	ldrdeq	r0, [r0], -r4
 2e0:	009f1303 	addseq	r1, pc, r3, lsl #6
 2e4:	d2050000 	andle	r0, r5, #0
 2e8:	04000001 	streq	r0, [r0], #-1
 2ec:	00b60004 	adcseq	r0, r6, r4
 2f0:	1a060000 	bne	1802f8 <__end+0x522f8>
 2f4:	b6000002 	strlt	r0, [r0], -r2
 2f8:	00000000 	andeq	r0, r0, r0
 2fc:	08040700 	stmdaeq	r4, {r8, r9, sl}
 300:	000001e3 	andeq	r0, r0, r3, ror #3
 304:	84cc2101 	strbhi	r2, [ip], #257	; 0x101
 308:	01380000 	teqeq	r8, r0
 30c:	9c010000 	stcls	0, cr0, [r1], {-0}
 310:	00000114 	andeq	r0, r0, r4, lsl r1
 314:	0001cd09 	andeq	ip, r1, r9, lsl #26
 318:	57210100 	strpl	r0, [r1, -r0, lsl #2]!
 31c:	02000000 	andeq	r0, r0, #0
 320:	6e0a5f91 	mcrvs	15, 0, r5, cr10, cr1, {4}
 324:	01006d75 	tsteq	r0, r5, ror sp
 328:	00008221 	andeq	r8, r0, r1, lsr #4
 32c:	50910200 	addspl	r0, r1, r0, lsl #4
 330:	0001bd0b 	andeq	fp, r1, fp, lsl #26
 334:	14220100 	strtne	r0, [r2], #-256	; 0x100
 338:	02000001 	andeq	r0, r0, #1
 33c:	620c6c91 	andvs	r6, ip, #37120	; 0x9100
 340:	01006675 	tsteq	r0, r5, ror r6
 344:	00011a23 	andeq	r1, r1, r3, lsr #20
 348:	60910200 	addsvs	r0, r1, r0, lsl #4
 34c:	7274700c 	rsbsvc	r7, r4, #12
 350:	14240100 	strtne	r0, [r4], #-256	; 0x100
 354:	02000001 	andeq	r0, r0, #1
 358:	0d006891 	stceq	8, cr6, [r0, #-580]	; 0xfffffdbc
 35c:	00002504 	andeq	r2, r0, r4, lsl #10
 360:	00250e00 	eoreq	r0, r5, r0, lsl #28
 364:	012a0000 	teqeq	sl, r0
 368:	2a0f0000 	bcs	3c0370 <__user_program+0xc0370>
 36c:	07000001 	streq	r0, [r0, -r1]
 370:	07040300 	streq	r0, [r4, -r0, lsl #6]
 374:	000001ab 	andeq	r0, r0, fp, lsr #3
 378:	00020e10 	andeq	r0, r2, r0, lsl lr
 37c:	493f0100 	ldmdbmi	pc!, {r8}	; <UNPREDICTABLE>
 380:	04000000 	streq	r0, [r0], #-0
 384:	50000086 	andpl	r0, r0, r6, lsl #1
 388:	01000002 	tsteq	r0, r2
 38c:	00020c9c 	muleq	r2, ip, ip
 390:	6d660a00 	vstmdbvs	r6!, {s1-s0}
 394:	3f010074 	svccc	0x00010074
 398:	0000020c 	andeq	r0, r0, ip, lsl #4
 39c:	11709102 	cmnne	r0, r2, lsl #2
 3a0:	0002150b 	andeq	r1, r2, fp, lsl #10
 3a4:	94400100 	strbls	r0, [r0], #-256	; 0x100
 3a8:	02000000 	andeq	r0, r0, #0
 3ac:	bc124c91 	ldclt	12, cr4, [r2], {145}	; 0x91
 3b0:	5c000086 	stcpl	0, cr0, [r0], {134}	; 0x86
 3b4:	83000000 	movwhi	r0, #0
 3b8:	0c000001 	stceq	0, cr0, [r0], {1}
 3bc:	006d756e 	rsbeq	r7, sp, lr, ror #10
 3c0:	003e5001 	eorseq	r5, lr, r1
 3c4:	91020000 	mrsls	r0, (UNDEF: 2)
 3c8:	18120060 	ldmdane	r2, {r5, r6}
 3cc:	2c000087 	stccs	0, cr0, [r0], {135}	; 0x87
 3d0:	9f000000 	svcls	0x00000000
 3d4:	0c000001 	stceq	0, cr0, [r0], {1}
 3d8:	006d756e 	rsbeq	r7, sp, lr, ror #10
 3dc:	00705b01 	rsbseq	r5, r0, r1, lsl #22
 3e0:	91020000 	mrsls	r0, (UNDEF: 2)
 3e4:	4412005c 	ldrmi	r0, [r2], #-92	; 0x5c
 3e8:	2c000087 	stccs	0, cr0, [r0], {135}	; 0x87
 3ec:	bb000000 	bllt	3f4 <__start-0x7c0c>
 3f0:	0c000001 	stceq	0, cr0, [r0], {1}
 3f4:	006d756e 	rsbeq	r7, sp, lr, ror #10
 3f8:	00706101 	rsbseq	r6, r0, r1, lsl #2
 3fc:	91020000 	mrsls	r0, (UNDEF: 2)
 400:	70120058 	andsvc	r0, r2, r8, asr r0
 404:	2c000087 	stccs	0, cr0, [r0], {135}	; 0x87
 408:	d7000000 	strle	r0, [r0, -r0]
 40c:	0c000001 	stceq	0, cr0, [r0], {1}
 410:	006d756e 	rsbeq	r7, sp, lr, ror #10
 414:	00706801 	rsbseq	r6, r0, r1, lsl #16
 418:	91020000 	mrsls	r0, (UNDEF: 2)
 41c:	9c120054 	ldcls	0, cr0, [r2], {84}	; 0x54
 420:	48000087 	stmdami	r0, {r0, r1, r2, r7}
 424:	f3000000 	vhadd.u8	d0, d0, d0
 428:	0b000001 	bleq	434 <__start-0x7bcc>
 42c:	000001b4 			; <UNDEFINED> instruction: 0x000001b4
 430:	01146e01 	tsteq	r4, r1, lsl #28
 434:	91020000 	mrsls	r0, (UNDEF: 2)
 438:	e4130064 	ldr	r0, [r3], #-100	; 0x64
 43c:	28000087 	stmdacs	r0, {r0, r1, r2, r7}
 440:	0b000000 	bleq	448 <__start-0x7bb8>
 444:	00000228 	andeq	r0, r0, r8, lsr #4
 448:	003e7701 	eorseq	r7, lr, r1, lsl #14
 44c:	91020000 	mrsls	r0, (UNDEF: 2)
 450:	0d000050 	stceq	0, cr0, [r0, #-320]	; 0xfffffec0
 454:	00021204 	andeq	r1, r2, r4, lsl #4
 458:	00301400 	eorseq	r1, r0, r0, lsl #8
 45c:	300e0000 	andcc	r0, lr, r0
 460:	27000000 	strcs	r0, [r0, -r0]
 464:	0f000002 	svceq	0x00000002
 468:	0000012a 	andeq	r0, r0, sl, lsr #2
 46c:	dc0b0010 	stcle	0, cr0, [fp], {16}
 470:	01000001 	tsteq	r0, r1
 474:	00021718 	andeq	r1, r2, r8, lsl r7
 478:	04030500 	streq	r0, [r3], #-1280	; 0x500
 47c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
 480:	000000cb 	andeq	r0, r0, fp, asr #1
 484:	024e0004 	subeq	r0, lr, #4
 488:	01040000 	mrseq	r0, (UNDEF: 4)
 48c:	000000ae 	andeq	r0, r0, lr, lsr #1
 490:	00022d01 	andeq	r2, r2, r1, lsl #26
 494:	00008300 	andeq	r8, r0, r0, lsl #6
 498:	00885400 	addeq	r5, r8, r0, lsl #8
 49c:	00016400 	andeq	r6, r1, r0, lsl #8
 4a0:	00022200 	andeq	r2, r2, r0, lsl #4
 4a4:	08010200 	stmdaeq	r1, {r9}
 4a8:	00000062 	andeq	r0, r0, r2, rrx
 4ac:	43050202 	movwmi	r0, #20994	; 0x5202
 4b0:	03000001 	movweq	r0, #1
 4b4:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 4b8:	08020074 	stmdaeq	r2, {r2, r4, r5, r6}
 4bc:	00000005 	andeq	r0, r0, r5
 4c0:	00510400 	subseq	r0, r1, r0, lsl #8
 4c4:	16020000 	strne	r0, [r2], -r0
 4c8:	0000004c 	andeq	r0, r0, ip, asr #32
 4cc:	59080102 	stmdbpl	r8, {r1, r8}
 4d0:	02000000 	andeq	r0, r0, #0
 4d4:	00700702 	rsbseq	r0, r0, r2, lsl #14
 4d8:	67040000 	strvs	r0, [r4, -r0]
 4dc:	02000000 	andeq	r0, r0, #0
 4e0:	0000651a 	andeq	r6, r0, sl, lsl r5
 4e4:	07040200 	streq	r0, [r4, -r0, lsl #4]
 4e8:	00000034 	andeq	r0, r0, r4, lsr r0
 4ec:	2a070802 	bcs	1c24fc <__end+0x944fc>
 4f0:	05000000 	streq	r0, [r0, #-0]
 4f4:	0000024c 	andeq	r0, r0, ip, asr #4
 4f8:	88542501 	ldmdahi	r4, {r0, r8, sl, sp}^
 4fc:	00a80000 	adceq	r0, r8, r0
 500:	9c010000 	stcls	0, cr0, [r1], {-0}
 504:	00026406 	andeq	r6, r2, r6, lsl #8
 508:	fc370100 	ldc2	1, cr0, [r7], #-0
 50c:	24000088 	strcs	r0, [r0], #-136	; 0x88
 510:	01000000 	mrseq	r0, (UNDEF: 0)
 514:	0256079c 	subseq	r0, r6, #156, 14	; 0x2700000
 518:	3c010000 	stccc	0, cr0, [r1], {-0}
 51c:	00008920 	andeq	r8, r0, r0, lsr #18
 520:	00000050 	andeq	r0, r0, r0, asr r0
 524:	00b99c01 	adcseq	r9, r9, r1, lsl #24
 528:	28080000 	stmdacs	r8, {}	; <UNPREDICTABLE>
 52c:	01000002 	tsteq	r0, r2
 530:	0000413c 	andeq	r4, r0, ip, lsr r1
 534:	77910200 	ldrvc	r0, [r1, r0, lsl #4]
 538:	021f0900 	andseq	r0, pc, #0, 18
 53c:	46010000 	strmi	r0, [r1], -r0
 540:	00000041 	andeq	r0, r0, r1, asr #32
 544:	00008970 	andeq	r8, r0, r0, ror r9
 548:	00000048 	andeq	r0, r0, r8, asr #32
 54c:	d5009c01 	strle	r9, [r0, #-3073]	; 0xc01
 550:	04000000 	streq	r0, [r0], #-0
 554:	0002f800 	andeq	pc, r2, r0, lsl #16
 558:	ae010400 	cfcpysge	mvf0, mvf1
 55c:	01000000 	mrseq	r0, (UNDEF: 0)
 560:	00000283 	andeq	r0, r0, r3, lsl #5
 564:	00000083 	andeq	r0, r0, r3, lsl #1
 568:	000089b8 			; <UNDEFINED> instruction: 0x000089b8
 56c:	00000088 	andeq	r0, r0, r8, lsl #1
 570:	000002a7 	andeq	r0, r0, r7, lsr #5
 574:	62080102 	andvs	r0, r8, #-2147483648	; 0x80000000
 578:	02000000 	andeq	r0, r0, #0
 57c:	01430502 	cmpeq	r3, r2, lsl #10
 580:	04030000 	streq	r0, [r3], #-0
 584:	746e6905 	strbtvc	r6, [lr], #-2309	; 0x905
 588:	05080200 	streq	r0, [r8, #-512]	; 0x200
 58c:	00000000 	andeq	r0, r0, r0
 590:	59080102 	stmdbpl	r8, {r1, r8}
 594:	02000000 	andeq	r0, r0, #0
 598:	00700702 	rsbseq	r0, r0, r2, lsl #14
 59c:	67040000 	strvs	r0, [r4, -r0]
 5a0:	02000000 	andeq	r0, r0, #0
 5a4:	00005a1a 	andeq	r5, r0, sl, lsl sl
 5a8:	07040200 	streq	r0, [r4, -r0, lsl #4]
 5ac:	00000034 	andeq	r0, r0, r4, lsr r0
 5b0:	2a070802 	bcs	1c25c0 <__end+0x945c0>
 5b4:	05000000 	streq	r0, [r0, #-0]
 5b8:	000002a8 	andeq	r0, r0, r8, lsr #5
 5bc:	89b80c01 	ldmibhi	r8!, {r0, sl, fp}
 5c0:	00200000 	eoreq	r0, r0, r0
 5c4:	9c010000 	stcls	0, cr0, [r1], {-0}
 5c8:	0000008c 	andeq	r0, r0, ip, lsl #1
 5cc:	0002a306 	andeq	sl, r2, r6, lsl #6
 5d0:	330c0100 	movwcc	r0, #49408	; 0xc100
 5d4:	02000000 	andeq	r0, r0, #0
 5d8:	07007491 			; <UNDEFINED> instruction: 0x07007491
 5dc:	000002c5 	andeq	r0, r0, r5, asr #5
 5e0:	89d81001 	ldmibhi	r8, {r0, ip}^
 5e4:	00180000 	andseq	r0, r8, r0
 5e8:	9c010000 	stcls	0, cr0, [r1], {-0}
 5ec:	0002d008 	andeq	sp, r2, r8
 5f0:	4f140100 	svcmi	0x00140100
 5f4:	f0000000 			; <UNDEFINED> instruction: 0xf0000000
 5f8:	1c000089 	stcne	0, cr0, [r0], {137}	; 0x89
 5fc:	01000000 	mrseq	r0, (UNDEF: 0)
 600:	02b4089c 	adcseq	r0, r4, #156, 16	; 0x9c0000
 604:	18010000 	stmdane	r1, {}	; <UNPREDICTABLE>
 608:	00000033 	andeq	r0, r0, r3, lsr r0
 60c:	00008a0c 	andeq	r8, r0, ip, lsl #20
 610:	0000001c 	andeq	r0, r0, ip, lsl r0
 614:	6f079c01 	svcvs	0x00079c01
 618:	01000002 	tsteq	r0, r2
 61c:	008a281d 	addeq	r2, sl, sp, lsl r8
 620:	00001800 	andeq	r1, r0, r0, lsl #16
 624:	009c0100 	addseq	r0, ip, r0, lsl #2
 628:	0000008b 	andeq	r0, r0, fp, lsl #1
 62c:	038a0004 	orreq	r0, sl, #4
 630:	01040000 	mrseq	r0, (UNDEF: 4)
 634:	000000ae 	andeq	r0, r0, lr, lsr #1
 638:	0002db01 	andeq	sp, r2, r1, lsl #22
 63c:	00008300 	andeq	r8, r0, r0, lsl #6
 640:	008a4000 	addeq	r4, sl, r0
 644:	00007000 	andeq	r7, r0, r0
 648:	00032100 	andeq	r2, r3, r0, lsl #2
 64c:	08010200 	stmdaeq	r1, {r9}
 650:	00000062 	andeq	r0, r0, r2, rrx
 654:	43050202 	movwmi	r0, #20994	; 0x5202
 658:	03000001 	movweq	r0, #1
 65c:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 660:	08020074 	stmdaeq	r2, {r2, r4, r5, r6}
 664:	00000005 	andeq	r0, r0, r5
 668:	08010200 	stmdaeq	r1, {r9}
 66c:	00000059 	andeq	r0, r0, r9, asr r0
 670:	70070202 	andvc	r0, r7, r2, lsl #4
 674:	04000000 	streq	r0, [r0], #-0
 678:	00000067 	andeq	r0, r0, r7, rrx
 67c:	005a1a02 	subseq	r1, sl, r2, lsl #20
 680:	04020000 	streq	r0, [r2], #-0
 684:	00003407 	andeq	r3, r0, r7, lsl #8
 688:	07080200 	streq	r0, [r8, -r0, lsl #4]
 68c:	0000002a 	andeq	r0, r0, sl, lsr #32
 690:	63697405 	cmnvs	r9, #83886080	; 0x5000000
 694:	40170100 	andsmi	r0, r7, r0, lsl #2
 698:	3800008a 	stmdacc	r0, {r1, r3, r7}
 69c:	01000000 	mrseq	r0, (UNDEF: 0)
 6a0:	6f74069c 	svcvs	0x0074069c
 6a4:	1d010063 	stcne	0, cr0, [r1, #-396]	; 0xfffffe74
 6a8:	0000004f 	andeq	r0, r0, pc, asr #32
 6ac:	00008a78 	andeq	r8, r0, r8, ror sl
 6b0:	00000038 	andeq	r0, r0, r8, lsr r0
 6b4:	62009c01 	andvs	r9, r0, #256	; 0x100
 6b8:	02000000 	andeq	r0, r0, #0
 6bc:	0003f300 	andeq	pc, r3, r0, lsl #6
 6c0:	96010400 	strls	r0, [r1], -r0, lsl #8
 6c4:	00000003 	andeq	r0, r0, r3
 6c8:	54000080 	strpl	r0, [r0], #-128	; 0x80
 6cc:	33000080 	movwcc	r0, #128	; 0x80
 6d0:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
 6d4:	732f6b62 	teqvc	pc, #100352	; 0x18800
 6d8:	622f6372 	eorvs	r6, pc, #-939524095	; 0xc8000001
 6dc:	2e746f6f 	cdpcs	15, 7, cr6, cr4, cr15, {3}
 6e0:	682f0053 	stmdavs	pc!, {r0, r1, r4, r6}	; <UNPREDICTABLE>
 6e4:	2f656d6f 	svccs	0x00656d6f
 6e8:	33656365 	cmncc	r5, #-1811939327	; 0x94000001
 6ec:	332f3934 	teqcc	pc, #52, 18	; 0xd0000
 6f0:	312f3934 	teqcc	pc, r4, lsr r9	; <UNPREDICTABLE>
 6f4:	3731662f 	ldrcc	r6, [r1, -pc, lsr #12]!
 6f8:	62616c2d 	rsbvs	r6, r1, #11520	; 0x2d00
 6fc:	61642d31 	cmnvs	r4, r1, lsr sp
 700:	79646976 	stmdbvc	r4!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
 704:	2f393275 	svccs	0x00393275
 708:	65646f63 	strbvs	r6, [r4, #-3939]!	; 0xf63
 70c:	554e4700 	strbpl	r4, [lr, #-1792]	; 0x700
 710:	20534120 	subscs	r4, r3, r0, lsr #2
 714:	34322e32 	ldrtcc	r2, [r2], #-3634	; 0xe32
 718:	0100302e 	tsteq	r0, lr, lsr #32
 71c:	00006180 	andeq	r6, r0, r0, lsl #3
 720:	07000200 	streq	r0, [r0, -r0, lsl #4]
 724:	04000004 	streq	r0, [r0], #-4
 728:	0003ee01 	andeq	lr, r3, r1, lsl #28
 72c:	008ab000 	addeq	fp, sl, r0
 730:	008af400 	addeq	pc, sl, r0, lsl #8
 734:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
 738:	6b62696c 	blvs	189acf0 <__user_program+0x159acf0>
 73c:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 740:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 744:	2f00532e 	svccs	0x0000532e
 748:	656d6f68 	strbvs	r6, [sp, #-3944]!	; 0xf68
 74c:	6563652f 	strbvs	r6, [r3, #-1327]!	; 0x52f
 750:	2f393433 	svccs	0x00393433
 754:	2f393433 	svccs	0x00393433
 758:	31662f31 	cmncc	r6, r1, lsr pc
 75c:	616c2d37 	cmnvs	ip, r7, lsr sp
 760:	642d3162 	strtvs	r3, [sp], #-354	; 0x162
 764:	64697661 	strbtvs	r7, [r9], #-1633	; 0x661
 768:	39327579 	ldmdbcc	r2!, {r0, r3, r4, r5, r6, r8, sl, ip, sp, lr}
 76c:	646f632f 	strbtvs	r6, [pc], #-815	; 774 <__start-0x788c>
 770:	4e470065 	cdpmi	0, 4, cr0, cr7, cr5, {3}
 774:	53412055 	movtpl	r2, #4181	; 0x1055
 778:	322e3220 	eorcc	r3, lr, #32, 4
 77c:	00302e34 	eorseq	r2, r0, r4, lsr lr
 780:	005d8001 	subseq	r8, sp, r1
 784:	00020000 	andeq	r0, r2, r0
 788:	0000041b 	andeq	r0, r0, fp, lsl r4
 78c:	043f0104 	ldrteq	r0, [pc], #-260	; 794 <__start-0x786c>
 790:	8af40000 	bhi	ffd00798 <__user_program+0xffa00798>
 794:	8c4c0000 	marhi	acc0, r0, ip
 798:	6e750000 	cdpvs	0, 7, cr0, cr5, cr0, {0}
 79c:	6974706f 	ldmdbvs	r4!, {r0, r1, r2, r3, r5, r6, ip, sp, lr}^
 7a0:	657a696d 	ldrbvs	r6, [sl, #-2413]!	; 0x96d
 7a4:	00632e64 	rsbeq	r2, r3, r4, ror #28
 7a8:	6d6f682f 	stclvs	8, cr6, [pc, #-188]!	; 6f4 <__start-0x790c>
 7ac:	63652f65 	cmnvs	r5, #404	; 0x194
 7b0:	39343365 	ldmdbcc	r4!, {r0, r2, r5, r6, r8, r9, ip, sp}
 7b4:	3934332f 	ldmdbcc	r4!, {r0, r1, r2, r3, r5, r8, r9, ip, sp}
 7b8:	662f312f 	strtvs	r3, [pc], -pc, lsr #2
 7bc:	6c2d3731 	stcvs	7, cr3, [sp], #-196	; 0xffffff3c
 7c0:	2d316261 	lfmcs	f6, 4, [r1, #-388]!	; 0xfffffe7c
 7c4:	69766164 	ldmdbvs	r6!, {r2, r5, r6, r8, sp, lr}^
 7c8:	32757964 	rsbscc	r7, r5, #100, 18	; 0x190000
 7cc:	6f632f39 	svcvs	0x00632f39
 7d0:	47006564 	strmi	r6, [r0, -r4, ror #10]
 7d4:	4120554e 	teqmi	r0, lr, asr #10
 7d8:	2e322053 	mrccs	0, 1, r2, cr2, cr3, {2}
 7dc:	302e3432 	eorcc	r3, lr, r2, lsr r4
 7e0:	5d800100 	stfpls	f0, [r0]
 7e4:	02000000 	andeq	r0, r0, #0
 7e8:	00042f00 	andeq	r2, r4, r0, lsl #30
 7ec:	d3010400 	movwle	r0, #5120	; 0x1400
 7f0:	4c000004 	stcmi	0, cr0, [r0], {4}
 7f4:	8000008c 	andhi	r0, r0, ip, lsl #1
 7f8:	6f00008f 	svcvs	0x0000008f
 7fc:	6d697470 	cfstrdvs	mvd7, [r9, #-448]!	; 0xfffffe40
 800:	5f657a69 	svcpl	0x00657a69
 804:	632e656d 	teqvs	lr, #457179136	; 0x1b400000
 808:	6f682f00 	svcvs	0x00682f00
 80c:	652f656d 	strvs	r6, [pc, #-1389]!	; 2a7 <__start-0x7d59>
 810:	34336563 	ldrtcc	r6, [r3], #-1379	; 0x563
 814:	34332f39 	ldrtcc	r2, [r3], #-3897	; 0xf39
 818:	2f312f39 	svccs	0x00312f39
 81c:	2d373166 	ldfcss	f3, [r7, #-408]!	; 0xfffffe68
 820:	3162616c 	cmncc	r2, ip, ror #2
 824:	7661642d 	strbtvc	r6, [r1], -sp, lsr #8
 828:	75796469 	ldrbvc	r6, [r9, #-1129]!	; 0x469
 82c:	632f3932 	teqvs	pc, #819200	; 0xc8000
 830:	0065646f 	rsbeq	r6, r5, pc, ror #8
 834:	20554e47 	subscs	r4, r5, r7, asr #28
 838:	32205341 	eorcc	r5, r0, #67108865	; 0x4000001
 83c:	2e34322e 	cdpcs	2, 3, cr3, cr4, cr14, {1}
 840:	80010030 	andhi	r0, r1, r0, lsr r0

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0x101
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10061201 	andne	r1, r6, r1, lsl #4
  10:	02000017 	andeq	r0, r0, #23
  14:	0b0b0024 	bleq	2c00ac <__end+0x1920ac>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	24030000 	strcs	r0, [r3], #-0
  20:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  24:	0008030b 	andeq	r0, r8, fp, lsl #6
  28:	00160400 	andseq	r0, r6, r0, lsl #8
  2c:	0b3a0e03 	bleq	e83840 <__user_program+0xb83840>
  30:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  34:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
  38:	03193f01 	tsteq	r9, #1, 30
  3c:	3b0b3a0e 	blcc	2ce87c <__end+0x1a087c>
  40:	1119270b 	tstne	r9, fp, lsl #14
  44:	40061201 	andmi	r1, r6, r1, lsl #4
  48:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
  4c:	00001301 	andeq	r1, r0, r1, lsl #6
  50:	03000506 	movweq	r0, #1286	; 0x506
  54:	3b0b3a08 	blcc	2ce87c <__end+0x1a087c>
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
  e4:	3b0b3a0e 	blcc	2ce924 <__end+0x1a0924>
  e8:	0013490b 	andseq	r4, r3, fp, lsl #18
  ec:	012e0500 	teqeq	lr, r0, lsl #10
  f0:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
  f4:	0b3b0b3a 	bleq	ec2de4 <__user_program+0xbc2de4>
  f8:	01111927 	tsteq	r1, r7, lsr #18
  fc:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 100:	01194296 			; <UNDEFINED> instruction: 0x01194296
 104:	06000013 			; <UNDEFINED> instruction: 0x06000013
 108:	08030034 	stmdaeq	r3, {r2, r4, r5}
 10c:	0b3b0b3a 	bleq	ec2dfc <__user_program+0xbc2dfc>
 110:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 114:	34070000 	strcc	r0, [r7], #-0
 118:	3a0e0300 	bcc	380d20 <__user_program+0x80d20>
 11c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 120:	00180213 	andseq	r0, r8, r3, lsl r2
 124:	01010800 	tsteq	r1, r0, lsl #16
 128:	13011349 	movwne	r1, #4937	; 0x1349
 12c:	21090000 	mrscs	r0, (UNDEF: 9)
 130:	2f134900 	svccs	0x00134900
 134:	0a000005 	beq	150 <__start-0x7eb0>
 138:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 13c:	0b3b0b3a 	bleq	ec2e2c <__user_program+0xbc2e2c>
 140:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
 144:	00001802 	andeq	r1, r0, r2, lsl #16
 148:	01110100 	tsteq	r1, r0, lsl #2
 14c:	0b130e25 	bleq	4c39e8 <__user_program+0x1c39e8>
 150:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 154:	06120111 			; <UNDEFINED> instruction: 0x06120111
 158:	00001710 	andeq	r1, r0, r0, lsl r7
 15c:	03001602 	movweq	r1, #1538	; 0x602
 160:	3b0b3a0e 	blcc	2ce9a0 <__end+0x1a09a0>
 164:	0013490b 	andseq	r4, r3, fp, lsl #18
 168:	00240300 	eoreq	r0, r4, r0, lsl #6
 16c:	0b3e0b0b 	bleq	f82da0 <__user_program+0xc82da0>
 170:	00000e03 	andeq	r0, r0, r3, lsl #28
 174:	0b002404 	bleq	918c <__divdi3+0x148>
 178:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 17c:	05000008 	streq	r0, [r0, #-8]
 180:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
 184:	0b3a0b0b 	bleq	e82db8 <__user_program+0xb82db8>
 188:	13010b3b 	movwne	r0, #6971	; 0x1b3b
 18c:	0d060000 	stceq	0, cr0, [r6, #-0]
 190:	490e0300 	stmdbmi	lr, {r8, r9}
 194:	340b3813 	strcc	r3, [fp], #-2067	; 0x813
 198:	07000019 	smladeq	r0, r9, r0, r0
 19c:	0b0b000f 	bleq	2c01e0 <__end+0x1921e0>
 1a0:	2e080000 	cdpcs	0, 0, cr0, cr8, cr0, {0}
 1a4:	3a0e0301 	bcc	380db0 <__user_program+0x80db0>
 1a8:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 1ac:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 1b0:	96184006 	ldrls	r4, [r8], -r6
 1b4:	13011942 	movwne	r1, #6466	; 0x1942
 1b8:	05090000 	streq	r0, [r9, #-0]
 1bc:	3a0e0300 	bcc	380dc4 <__user_program+0x80dc4>
 1c0:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 1c4:	00180213 	andseq	r0, r8, r3, lsl r2
 1c8:	00050a00 	andeq	r0, r5, r0, lsl #20
 1cc:	0b3a0803 	bleq	e821e0 <__user_program+0xb821e0>
 1d0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 1d4:	00001802 	andeq	r1, r0, r2, lsl #16
 1d8:	0300340b 	movweq	r3, #1035	; 0x40b
 1dc:	3b0b3a0e 	blcc	2cea1c <__end+0x1a0a1c>
 1e0:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 1e4:	0c000018 	stceq	0, cr0, [r0], {24}
 1e8:	08030034 	stmdaeq	r3, {r2, r4, r5}
 1ec:	0b3b0b3a 	bleq	ec2edc <__user_program+0xbc2edc>
 1f0:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 1f4:	0f0d0000 	svceq	0x000d0000
 1f8:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 1fc:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
 200:	13490101 	movtne	r0, #37121	; 0x9101
 204:	00001301 	andeq	r1, r0, r1, lsl #6
 208:	4900210f 	stmdbmi	r0, {r0, r1, r2, r3, r8, sp}
 20c:	000b2f13 	andeq	r2, fp, r3, lsl pc
 210:	012e1000 	teqeq	lr, r0
 214:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 218:	0b3b0b3a 	bleq	ec2f08 <__user_program+0xbc2f08>
 21c:	13491927 	movtne	r1, #39207	; 0x9927
 220:	06120111 			; <UNDEFINED> instruction: 0x06120111
 224:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
 228:	00130119 	andseq	r0, r3, r9, lsl r1
 22c:	00181100 	andseq	r1, r8, r0, lsl #2
 230:	0b120000 	bleq	480238 <__user_program+0x180238>
 234:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 238:	00130106 	andseq	r0, r3, r6, lsl #2
 23c:	010b1300 	mrseq	r1, (UNDEF: 59)
 240:	06120111 			; <UNDEFINED> instruction: 0x06120111
 244:	26140000 	ldrcs	r0, [r4], -r0
 248:	00134900 	andseq	r4, r3, r0, lsl #18
 24c:	11010000 	mrsne	r0, (UNDEF: 1)
 250:	130e2501 	movwne	r2, #58625	; 0xe501
 254:	1b0e030b 	blne	380e88 <__user_program+0x80e88>
 258:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 25c:	00171006 	andseq	r1, r7, r6
 260:	00240200 	eoreq	r0, r4, r0, lsl #4
 264:	0b3e0b0b 	bleq	f82e98 <__user_program+0xc82e98>
 268:	00000e03 	andeq	r0, r0, r3, lsl #28
 26c:	0b002403 	bleq	9280 <__udivdi3+0xc4>
 270:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 274:	04000008 	streq	r0, [r0], #-8
 278:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 27c:	0b3b0b3a 	bleq	ec2f6c <__user_program+0xbc2f6c>
 280:	00001349 	andeq	r1, r0, r9, asr #6
 284:	3f002e05 	svccc	0x00002e05
 288:	3a0e0319 	bcc	380ef4 <__user_program+0x80ef4>
 28c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 290:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 294:	96184006 	ldrls	r4, [r8], -r6
 298:	00001942 	andeq	r1, r0, r2, asr #18
 29c:	3f002e06 	svccc	0x00002e06
 2a0:	3a0e0319 	bcc	380f0c <__user_program+0x80f0c>
 2a4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 2a8:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 2ac:	97184006 	ldrls	r4, [r8, -r6]
 2b0:	00001942 	andeq	r1, r0, r2, asr #18
 2b4:	3f012e07 	svccc	0x00012e07
 2b8:	3a0e0319 	bcc	380f24 <__user_program+0x80f24>
 2bc:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 2c0:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 2c4:	97184006 	ldrls	r4, [r8, -r6]
 2c8:	13011942 	movwne	r1, #6466	; 0x1942
 2cc:	05080000 	streq	r0, [r8, #-0]
 2d0:	3a0e0300 	bcc	380ed8 <__user_program+0x80ed8>
 2d4:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 2d8:	00180213 	andseq	r0, r8, r3, lsl r2
 2dc:	002e0900 	eoreq	r0, lr, r0, lsl #18
 2e0:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 2e4:	0b3b0b3a 	bleq	ec2fd4 <__user_program+0xbc2fd4>
 2e8:	13491927 	movtne	r1, #39207	; 0x9927
 2ec:	06120111 			; <UNDEFINED> instruction: 0x06120111
 2f0:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 2f4:	00000019 	andeq	r0, r0, r9, lsl r0
 2f8:	25011101 	strcs	r1, [r1, #-257]	; 0x101
 2fc:	030b130e 	movweq	r1, #45838	; 0xb30e
 300:	110e1b0e 	tstne	lr, lr, lsl #22
 304:	10061201 	andne	r1, r6, r1, lsl #4
 308:	02000017 	andeq	r0, r0, #23
 30c:	0b0b0024 	bleq	2c03a4 <__end+0x1923a4>
 310:	0e030b3e 	vmoveq.16	d3[0], r0
 314:	24030000 	strcs	r0, [r3], #-0
 318:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 31c:	0008030b 	andeq	r0, r8, fp, lsl #6
 320:	00160400 	andseq	r0, r6, r0, lsl #8
 324:	0b3a0e03 	bleq	e83b38 <__user_program+0xb83b38>
 328:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 32c:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
 330:	03193f01 	tsteq	r9, #1, 30
 334:	3b0b3a0e 	blcc	2ceb74 <__end+0x1a0b74>
 338:	1119270b 	tstne	r9, fp, lsl #14
 33c:	40061201 	andmi	r1, r6, r1, lsl #4
 340:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 344:	00001301 	andeq	r1, r0, r1, lsl #6
 348:	03000506 	movweq	r0, #1286	; 0x506
 34c:	3b0b3a0e 	blcc	2ceb8c <__end+0x1a0b8c>
 350:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 354:	07000018 	smladeq	r0, r8, r0, r0
 358:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
 35c:	0b3a0e03 	bleq	e83b70 <__user_program+0xb83b70>
 360:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 364:	06120111 			; <UNDEFINED> instruction: 0x06120111
 368:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 36c:	08000019 	stmdaeq	r0, {r0, r3, r4}
 370:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
 374:	0b3a0e03 	bleq	e83b88 <__user_program+0xb83b88>
 378:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 37c:	01111349 	tsteq	r1, r9, asr #6
 380:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 384:	00194297 	mulseq	r9, r7, r2
 388:	11010000 	mrsne	r0, (UNDEF: 1)
 38c:	130e2501 	movwne	r2, #58625	; 0xe501
 390:	1b0e030b 	blne	380fc4 <__user_program+0x80fc4>
 394:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 398:	00171006 	andseq	r1, r7, r6
 39c:	00240200 	eoreq	r0, r4, r0, lsl #4
 3a0:	0b3e0b0b 	bleq	f82fd4 <__user_program+0xc82fd4>
 3a4:	00000e03 	andeq	r0, r0, r3, lsl #28
 3a8:	0b002403 	bleq	93bc <__clzsi2+0xb8>
 3ac:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 3b0:	04000008 	streq	r0, [r0], #-8
 3b4:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 3b8:	0b3b0b3a 	bleq	ec30a8 <__user_program+0xbc30a8>
 3bc:	00001349 	andeq	r1, r0, r9, asr #6
 3c0:	3f002e05 	svccc	0x00002e05
 3c4:	3a080319 	bcc	201030 <__end+0xd3030>
 3c8:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 3cc:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 3d0:	97184006 	ldrls	r4, [r8, -r6]
 3d4:	00001942 	andeq	r1, r0, r2, asr #18
 3d8:	3f002e06 	svccc	0x00002e06
 3dc:	3a080319 	bcc	201048 <__end+0xd3048>
 3e0:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 3e4:	11134919 	tstne	r3, r9, lsl r9
 3e8:	40061201 	andmi	r1, r6, r1, lsl #4
 3ec:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 3f0:	01000000 	mrseq	r0, (UNDEF: 0)
 3f4:	06100011 			; <UNDEFINED> instruction: 0x06100011
 3f8:	01120111 	tsteq	r2, r1, lsl r1
 3fc:	081b0803 	ldmdaeq	fp, {r0, r1, fp}
 400:	05130825 	ldreq	r0, [r3, #-2085]	; 0x825
 404:	01000000 	mrseq	r0, (UNDEF: 0)
 408:	06100011 			; <UNDEFINED> instruction: 0x06100011
 40c:	01120111 	tsteq	r2, r1, lsl r1
 410:	081b0803 	ldmdaeq	fp, {r0, r1, fp}
 414:	05130825 	ldreq	r0, [r3, #-2085]	; 0x825
 418:	01000000 	mrseq	r0, (UNDEF: 0)
 41c:	06100011 			; <UNDEFINED> instruction: 0x06100011
 420:	01120111 	tsteq	r2, r1, lsl r1
 424:	081b0803 	ldmdaeq	fp, {r0, r1, fp}
 428:	05130825 	ldreq	r0, [r3, #-2085]	; 0x825
 42c:	01000000 	mrseq	r0, (UNDEF: 0)
 430:	06100011 			; <UNDEFINED> instruction: 0x06100011
 434:	01120111 	tsteq	r2, r1, lsl r1
 438:	081b0803 	ldmdaeq	fp, {r0, r1, fp}
 43c:	05130825 	ldreq	r0, [r3, #-2085]	; 0x825
 440:	Address 0x00000440 is out of bounds.


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
  34:	00000158 	andeq	r0, r0, r8, asr r1
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	02470002 	subeq	r0, r7, #2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	000084cc 	andeq	r8, r0, ip, asr #9
  54:	00000388 	andeq	r0, r0, r8, lsl #7
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	04800002 	streq	r0, [r0], #2
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	00008854 	andeq	r8, r0, r4, asr r8
  74:	00000164 	andeq	r0, r0, r4, ror #2
	...
  80:	0000001c 	andeq	r0, r0, ip, lsl r0
  84:	054f0002 	strbeq	r0, [pc, #-2]	; 8a <__start-0x7f76>
  88:	00040000 	andeq	r0, r4, r0
  8c:	00000000 	andeq	r0, r0, r0
  90:	000089b8 			; <UNDEFINED> instruction: 0x000089b8
  94:	00000088 	andeq	r0, r0, r8, lsl #1
	...
  a0:	0000001c 	andeq	r0, r0, ip, lsl r0
  a4:	06280002 	strteq	r0, [r8], -r2
  a8:	00040000 	andeq	r0, r4, r0
  ac:	00000000 	andeq	r0, r0, r0
  b0:	00008a40 	andeq	r8, r0, r0, asr #20
  b4:	00000070 	andeq	r0, r0, r0, ror r0
	...
  c0:	0000001c 	andeq	r0, r0, ip, lsl r0
  c4:	06b70002 	ldrteq	r0, [r7], r2
  c8:	00040000 	andeq	r0, r4, r0
  cc:	00000000 	andeq	r0, r0, r0
  d0:	00008000 	andeq	r8, r0, r0
  d4:	00000054 	andeq	r0, r0, r4, asr r0
	...
  e0:	0000001c 	andeq	r0, r0, ip, lsl r0
  e4:	071d0002 	ldreq	r0, [sp, -r2]
  e8:	00040000 	andeq	r0, r4, r0
  ec:	00000000 	andeq	r0, r0, r0
  f0:	00008ab0 			; <UNDEFINED> instruction: 0x00008ab0
  f4:	00000044 	andeq	r0, r0, r4, asr #32
	...
 100:	0000001c 	andeq	r0, r0, ip, lsl r0
 104:	07820002 	streq	r0, [r2, r2]
 108:	00040000 	andeq	r0, r4, r0
 10c:	00000000 	andeq	r0, r0, r0
 110:	00008af4 	strdeq	r8, [r0], -r4
 114:	00000158 	andeq	r0, r0, r8, asr r1
	...
 120:	0000001c 	andeq	r0, r0, ip, lsl r0
 124:	07e30002 	strbeq	r0, [r3, r2]!
 128:	00040000 	andeq	r0, r4, r0
 12c:	00000000 	andeq	r0, r0, r0
 130:	00008c4c 	andeq	r8, r0, ip, asr #24
 134:	00000334 	andeq	r0, r0, r4, lsr r3
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
  94:	00ae0101 	adceq	r0, lr, r1, lsl #2
  98:	00020000 	andeq	r0, r2, r0
  9c:	00000054 	andeq	r0, r0, r4, asr r0
  a0:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
  a4:	0101000d 	tsteq	r1, sp
  a8:	00000101 	andeq	r0, r0, r1, lsl #2
  ac:	00000100 	andeq	r0, r0, r0, lsl #2
  b0:	72656b01 	rsbvc	r6, r5, #1024	; 0x400
  b4:	5f6c656e 	svcpl	0x006c656e
  b8:	6974706f 	ldmdbvs	r4!, {r0, r1, r2, r3, r5, r6, ip, sp, lr}^
  bc:	617a696d 	cmnvs	sl, sp, ror #18
  c0:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
  c4:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
  c8:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
  cc:	6b62696c 	blvs	189a684 <__user_program+0x159a684>
  d0:	636e692f 	cmnvs	lr, #770048	; 0xbc000
  d4:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
  d8:	656b0000 	strbvs	r0, [fp, #-0]!
  dc:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
  e0:	0100632e 	tsteq	r0, lr, lsr #6
  e4:	736b0000 	cmnvc	fp, #0
  e8:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
  ec:	00682e74 	rsbeq	r2, r8, r4, ror lr
  f0:	00000002 	andeq	r0, r0, r2
  f4:	74020500 	strvc	r0, [r2], #-1280	; 0x500
  f8:	03000083 	movweq	r0, #131	; 0x83
  fc:	4d670117 	stfmie	f0, [r7, #-92]!	; 0xffffffa4
 100:	04020030 	streq	r0, [r2], #-48	; 0x30
 104:	02006803 	andeq	r6, r0, #196608	; 0x30000
 108:	009f0304 	addseq	r0, pc, r4, lsl #6
 10c:	9b030402 	blls	c111c <__bss_end+0xb411c>
 110:	01040200 	mrseq	r0, R12_usr
 114:	6d066606 	stcvs	6, cr6, [r6, #-24]	; 0xffffffe8
 118:	4b672f67 	blmi	19cbebc <__user_program+0x16cbebc>
 11c:	672f6785 	strvs	r6, [pc, -r5, lsl #15]!
 120:	0868854b 	stmdaeq	r8!, {r0, r1, r3, r6, r8, sl, pc}^
 124:	004b673f 	subeq	r6, fp, pc, lsr r7
 128:	03020402 	movweq	r0, #9218	; 0x2402
 12c:	02002e79 	andeq	r2, r0, #1936	; 0x790
 130:	66060104 	strvs	r0, [r6], -r4, lsl #2
 134:	660a0306 	strvs	r0, [sl], -r6, lsl #6
 138:	04020069 	streq	r0, [r2], #-105	; 0x69
 13c:	02006a01 	andeq	r6, r0, #4096	; 0x1000
 140:	02670104 	rsbeq	r0, r7, #4, 2
 144:	01010002 	tsteq	r1, r2
 148:	000000d6 	ldrdeq	r0, [r0], -r6
 14c:	006f0002 	rsbeq	r0, pc, r2
 150:	01020000 	mrseq	r0, (UNDEF: 2)
 154:	000d0efb 	strdeq	r0, [sp], -fp
 158:	01010101 	tsteq	r1, r1, lsl #2
 15c:	01000000 	mrseq	r0, (UNDEF: 0)
 160:	6b010000 	blvs	40168 <__bss_end+0x33168>
 164:	656e7265 	strbvs	r7, [lr, #-613]!	; 0x265
 168:	706f5f6c 	rsbvc	r5, pc, ip, ror #30
 16c:	696d6974 	stmdbvs	sp!, {r2, r4, r5, r6, r8, fp, sp, lr}^
 170:	6974617a 	ldmdbvs	r4!, {r1, r3, r4, r5, r6, r8, sp, lr}^
 174:	732f6e6f 	teqvc	pc, #1776	; 0x6f0
 178:	33006372 	movwcc	r6, #882	; 0x372
 17c:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
 180:	692f6b62 	stmdbvs	pc!, {r1, r5, r6, r8, r9, fp, sp, lr}	; <UNPREDICTABLE>
 184:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
 188:	00006564 	andeq	r6, r0, r4, ror #10
 18c:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
 190:	632e6b74 	teqvs	lr, #116, 22	; 0x1d000
 194:	00000100 	andeq	r0, r0, r0, lsl #2
 198:	6474736b 	ldrbtvs	r7, [r4], #-875	; 0x36b
 19c:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 1a0:	00020068 	andeq	r0, r2, r8, rrx
 1a4:	74736b00 	ldrbtvc	r6, [r3], #-2816	; 0xb00
 1a8:	67726164 	ldrbvs	r6, [r2, -r4, ror #2]!
 1ac:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 1b0:	623c0000 	eorsvs	r0, ip, #0
 1b4:	746c6975 	strbtvc	r6, [ip], #-2421	; 0x975
 1b8:	3e6e692d 	cdpcc	9, 6, cr6, cr14, cr13, {1}
 1bc:	00000000 	andeq	r0, r0, r0
 1c0:	02050000 	andeq	r0, r5, #0
 1c4:	000084cc 	andeq	r8, r0, ip, asr #9
 1c8:	d7012003 	strle	r2, [r1, -r3]
 1cc:	8367694c 	cmnhi	r7, #76, 18	; 0x130000
 1d0:	04020067 	streq	r0, [r2], #-103	; 0x67
 1d4:	02006b01 	andeq	r6, r0, #1024	; 0x400
 1d8:	ad080104 	stfges	f0, [r8, #-16]
 1dc:	01040200 	mrseq	r0, R12_usr
 1e0:	2f6769d7 	svccs	0x006769d7
 1e4:	812f86b9 			; <UNDEFINED> instruction: 0x812f86b9
 1e8:	4d854df5 	stcmi	13, cr4, [r5, #980]	; 0x3d4
 1ec:	30bb8330 	adcscc	r8, fp, r0, lsr r3
 1f0:	15320268 	ldrne	r0, [r2, #-616]!	; 0x268
 1f4:	be4b679f 	mcrlt	7, 2, r6, cr11, cr15, {4}
 1f8:	9f32a02c 	svcls	0x0032a02c
 1fc:	9f9f329f 	svcls	0x009f329f
 200:	329f9f33 	addscc	r9, pc, #51, 30	; 0xcc
 204:	64832f9f 	strvs	r2, [r3], #3999	; 0xf9f
 208:	839f3286 	orrshi	r3, pc, #1610612744	; 0x60000008
 20c:	4d334b32 	vldmdbmi	r3!, {d4-d28}
 210:	667fbf03 	ldrbtvs	fp, [pc], -r3, lsl #30
 214:	8200c503 	andhi	ip, r0, #12582912	; 0xc00000
 218:	01040200 	mrseq	r0, R12_usr
 21c:	000a022f 	andeq	r0, sl, pc, lsr #4
 220:	00810101 	addeq	r0, r1, r1, lsl #2
 224:	00020000 	andeq	r0, r2, r0
 228:	00000052 	andeq	r0, r0, r2, asr r0
 22c:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 230:	0101000d 	tsteq	r1, sp
 234:	00000101 	andeq	r0, r0, r1, lsl #2
 238:	00000100 	andeq	r0, r0, r0, lsl #2
 23c:	72656b01 	rsbvc	r6, r5, #1024	; 0x400
 240:	5f6c656e 	svcpl	0x006c656e
 244:	6974706f 	ldmdbvs	r4!, {r0, r1, r2, r3, r5, r6, ip, sp, lr}^
 248:	617a696d 	cmnvs	sl, sp, ror #18
 24c:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
 250:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 254:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
 258:	6b62696c 	blvs	189a810 <__user_program+0x159a810>
 25c:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 260:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
 264:	61750000 	cmnvs	r5, r0
 268:	632e7472 	teqvs	lr, #1912602624	; 0x72000000
 26c:	00000100 	andeq	r0, r0, r0, lsl #2
 270:	6474736b 	ldrbtvs	r7, [r4], #-875	; 0x36b
 274:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 278:	00020068 	andeq	r0, r2, r8, rrx
 27c:	05000000 	streq	r0, [r0, #-0]
 280:	00885402 	addeq	r5, r8, r2, lsl #8
 284:	01240300 	teqeq	r4, r0, lsl #6
 288:	6768674c 	strbvs	r6, [r8, -ip, asr #14]!
 28c:	d7838368 	strle	r8, [r3, r8, ror #6]
 290:	31848383 	orrcc	r8, r4, r3, lsl #7
 294:	a069834b 	rsbge	r8, r9, fp, asr #6
 298:	832f30bb 	teqhi	pc, #187	; 0xbb
 29c:	30bb4c69 	adcscc	r4, fp, r9, ror #24
 2a0:	0802832f 	stmdaeq	r2, {r0, r1, r2, r3, r5, r8, r9, pc}
 2a4:	76010100 	strvc	r0, [r1], -r0, lsl #2
 2a8:	02000000 	andeq	r0, r0, #0
 2ac:	00005300 	andeq	r5, r0, r0, lsl #6
 2b0:	fb010200 	blx	40aba <__bss_end+0x33aba>
 2b4:	01000d0e 	tsteq	r0, lr, lsl #26
 2b8:	00010101 	andeq	r0, r1, r1, lsl #2
 2bc:	00010000 	andeq	r0, r1, r0
 2c0:	656b0100 	strbvs	r0, [fp, #-256]!	; 0x100
 2c4:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 2c8:	74706f5f 	ldrbtvc	r6, [r0], #-3935	; 0xf5f
 2cc:	7a696d69 	bvc	1a5b878 <__user_program+0x175b878>
 2d0:	6f697461 	svcvs	0x00697461
 2d4:	72732f6e 	rsbsvc	r2, r3, #440	; 0x1b8
 2d8:	34330063 	ldrtcc	r0, [r3], #-99	; 0x63
 2dc:	62696c39 	rsbvs	r6, r9, #14592	; 0x3900
 2e0:	6e692f6b 	cdpvs	15, 6, cr2, cr9, cr11, {3}
 2e4:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xc63
 2e8:	74000065 	strvc	r0, [r0], #-101	; 0x65
 2ec:	72656d69 	rsbvc	r6, r5, #6720	; 0x1a40
 2f0:	0100632e 	tsteq	r0, lr, lsr #6
 2f4:	736b0000 	cmnvc	fp, #0
 2f8:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 2fc:	00682e74 	rsbeq	r2, r8, r4, ror lr
 300:	00000002 	andeq	r0, r0, r2
 304:	b8020500 	stmdalt	r2, {r8, sl}
 308:	03000089 	movweq	r0, #137	; 0x89
 30c:	2f83010b 	svccs	0x0083010b
 310:	682f4b68 	stmdavs	pc!, {r3, r5, r6, r8, r9, fp, lr}	; <UNPREDICTABLE>
 314:	4b842f4b 	blmi	fe10c048 <__user_program+0xfde0c048>
 318:	2f4b852f 	svccs	0x004b852f
 31c:	01000602 	tsteq	r0, r2, lsl #12
 320:	00007101 	andeq	r7, r0, r1, lsl #2
 324:	55000200 	strpl	r0, [r0, #-512]	; 0x200
 328:	02000000 	andeq	r0, r0, #0
 32c:	0d0efb01 	vstreq	d15, [lr, #-4]
 330:	01010100 	mrseq	r0, (UNDEF: 17)
 334:	00000001 	andeq	r0, r0, r1
 338:	01000001 	tsteq	r0, r1
 33c:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 340:	6f5f6c65 	svcvs	0x005f6c65
 344:	6d697470 	cfstrdvs	mvd7, [r9, #-448]!	; 0xfffffe40
 348:	74617a69 	strbtvc	r7, [r1], #-2665	; 0xa69
 34c:	2f6e6f69 	svccs	0x006e6f69
 350:	00637273 	rsbeq	r7, r3, r3, ror r2
 354:	6c393433 	cfldrsvs	mvf3, [r9], #-204	; 0xffffff34
 358:	2f6b6269 	svccs	0x006b6269
 35c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 360:	00656475 	rsbeq	r6, r5, r5, ror r4
 364:	63697400 	cmnvs	r9, #0, 8
 368:	636f745f 	cmnvs	pc, #1593835520	; 0x5f000000
 36c:	0100632e 	tsteq	r0, lr, lsr #6
 370:	736b0000 	cmnvc	fp, #0
 374:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 378:	00682e74 	rsbeq	r2, r8, r4, ror lr
 37c:	00000002 	andeq	r0, r0, r2
 380:	40020500 	andmi	r0, r2, r0, lsl #10
 384:	0300008a 	movweq	r0, #138	; 0x8a
 388:	834b0116 	movthi	r0, #45334	; 0xb116
 38c:	4b682f83 	blmi	1a0c1a0 <__user_program+0x170c1a0>
 390:	000802f3 	strdeq	r0, [r8], -r3
 394:	00540101 	subseq	r0, r4, r1, lsl #2
 398:	00020000 	andeq	r0, r2, r0
 39c:	00000029 	andeq	r0, r0, r9, lsr #32
 3a0:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 3a4:	0101000d 	tsteq	r1, sp
 3a8:	00000101 	andeq	r0, r0, r1, lsl #2
 3ac:	00000100 	andeq	r0, r0, r0, lsl #2
 3b0:	39343301 	ldmdbcc	r4!, {r0, r8, r9, ip, sp}
 3b4:	6b62696c 	blvs	189a96c <__user_program+0x159a96c>
 3b8:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 3bc:	6f620000 	svcvs	0x00620000
 3c0:	532e746f 	teqpl	lr, #1862270976	; 0x6f000000
 3c4:	00000100 	andeq	r0, r0, r0, lsl #2
 3c8:	02050000 	andeq	r0, r5, #0
 3cc:	00008000 	andeq	r8, r0, r0
 3d0:	2f011b03 	svccs	0x00011b03
 3d4:	2f302f2f 	svccs	0x00302f2f
 3d8:	2f2f2f2f 	svccs	0x002f2f2f
 3dc:	2f2f312f 	svccs	0x002f312f
 3e0:	032f3331 	teqeq	pc, #-1006632960	; 0xc4000000
 3e4:	2f312e69 	svccs	0x00312e69
 3e8:	0002022f 	andeq	r0, r2, pc, lsr #4
 3ec:	004d0101 	subeq	r0, sp, r1, lsl #2
 3f0:	00020000 	andeq	r0, r2, r0
 3f4:	00000028 	andeq	r0, r0, r8, lsr #32
 3f8:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 3fc:	0101000d 	tsteq	r1, sp
 400:	00000101 	andeq	r0, r0, r1, lsl #2
 404:	00000100 	andeq	r0, r0, r0, lsl #2
 408:	39343301 	ldmdbcc	r4!, {r0, r8, r9, ip, sp}
 40c:	6b62696c 	blvs	189a9c4 <__user_program+0x159a9c4>
 410:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 414:	72610000 	rsbvc	r0, r1, #0
 418:	00532e6d 	subseq	r2, r3, sp, ror #28
 41c:	00000001 	andeq	r0, r0, r1
 420:	b0020500 	andlt	r0, r2, r0, lsl #10
 424:	0300008a 	movweq	r0, #138	; 0x8a
 428:	2f2f0110 	svccs	0x002f0110
 42c:	2f332f33 	svccs	0x00332f33
 430:	2f2f2f33 	svccs	0x002f2f33
 434:	2f2f332f 	svccs	0x002f332f
 438:	02022f2f 	andeq	r2, r2, #47, 30	; 0xbc
 43c:	90010100 	andls	r0, r1, r0, lsl #2
 440:	02000000 	andeq	r0, r0, #0
 444:	00002400 	andeq	r2, r0, r0, lsl #8
 448:	fb010200 	blx	40c52 <__bss_end+0x33c52>
 44c:	01000d0e 	tsteq	r0, lr, lsl #26
 450:	00010101 	andeq	r0, r1, r1, lsl #2
 454:	00010000 	andeq	r0, r1, r0
 458:	75000100 	strvc	r0, [r0, #-256]	; 0x100
 45c:	74706f6e 	ldrbtvc	r6, [r0], #-3950	; 0xf6e
 460:	7a696d69 	bvc	1a5ba0c <__user_program+0x175ba0c>
 464:	632e6465 	teqvs	lr, #1694498816	; 0x65000000
 468:	00000000 	andeq	r0, r0, r0
 46c:	02050000 	andeq	r0, r5, #0
 470:	00008af4 	strdeq	r8, [r0], -r4
 474:	2f011503 	svccs	0x00011503
 478:	2f2f2f2f 	svccs	0x002f2f2f
 47c:	2f2f2f2f 	svccs	0x002f2f2f
 480:	2f2f2f2f 	svccs	0x002f2f2f
 484:	032f302f 	teqeq	pc, #47	; 0x2f
 488:	2f2f2e09 	svccs	0x002f2e09
 48c:	2f2f2f2f 	svccs	0x002f2f2f
 490:	2f2f2f30 	svccs	0x002f2f30
 494:	2f2f302f 	svccs	0x002f302f
 498:	2f2f2f2f 	svccs	0x002f2f2f
 49c:	2f2f2f2f 	svccs	0x002f2f2f
 4a0:	2f2f2f2f 	svccs	0x002f2f2f
 4a4:	2f2f2f2f 	svccs	0x002f2f2f
 4a8:	2f2f2f2f 	svccs	0x002f2f2f
 4ac:	2f2f2f2f 	svccs	0x002f2f2f
 4b0:	2f2f2f2f 	svccs	0x002f2f2f
 4b4:	2f2f2f2f 	svccs	0x002f2f2f
 4b8:	2f2f2f2f 	svccs	0x002f2f2f
 4bc:	2f2f2f2f 	svccs	0x002f2f2f
 4c0:	2f302f2f 	svccs	0x00302f2f
 4c4:	2f2f2f2f 	svccs	0x002f2f2f
 4c8:	2f2f2f30 	svccs	0x002f2f30
 4cc:	02022f30 	andeq	r2, r2, #48, 30	; 0xc0
 4d0:	05010100 	streq	r0, [r1, #-256]	; 0x100
 4d4:	02000001 	andeq	r0, r0, #1
 4d8:	00002400 	andeq	r2, r0, r0, lsl #8
 4dc:	fb010200 	blx	40ce6 <__bss_end+0x33ce6>
 4e0:	01000d0e 	tsteq	r0, lr, lsl #26
 4e4:	00010101 	andeq	r0, r1, r1, lsl #2
 4e8:	00010000 	andeq	r0, r1, r0
 4ec:	6f000100 	svcvs	0x00000100
 4f0:	6d697470 	cfstrdvs	mvd7, [r9, #-448]!	; 0xfffffe40
 4f4:	5f657a69 	svcpl	0x00657a69
 4f8:	632e656d 	teqvs	lr, #457179136	; 0x1b400000
 4fc:	00000000 	andeq	r0, r0, r0
 500:	02050000 	andeq	r0, r5, #0
 504:	00008c4c 	andeq	r8, r0, ip, asr #24
 508:	2f011403 	svccs	0x00011403
 50c:	2f2f2f2f 	svccs	0x002f2f2f
 510:	2f31302f 	svccs	0x0031302f
 514:	2f2f2f2f 	svccs	0x002f2f2f
 518:	2f2f2f30 	svccs	0x002f2f30
 51c:	2f2f3230 	svccs	0x002f3230
 520:	2f2f2f2f 	svccs	0x002f2f2f
 524:	2f2f2f2f 	svccs	0x002f2f2f
 528:	2f2f2f2f 	svccs	0x002f2f2f
 52c:	2f2f2f30 	svccs	0x002f2f30
 530:	2f2f2f2f 	svccs	0x002f2f2f
 534:	2f2f2f2f 	svccs	0x002f2f2f
 538:	302f2f2f 	eorcc	r2, pc, pc, lsr #30
 53c:	2f2f2f2f 	svccs	0x002f2f2f
 540:	2f2f2f2f 	svccs	0x002f2f2f
 544:	2f2f2f2f 	svccs	0x002f2f2f
 548:	2f302f2f 	svccs	0x00302f2f
 54c:	2f2f2f2f 	svccs	0x002f2f2f
 550:	2f2f2f2f 	svccs	0x002f2f2f
 554:	2f2f2f2f 	svccs	0x002f2f2f
 558:	2f2f302f 	svccs	0x002f302f
 55c:	2f2f2f2f 	svccs	0x002f2f2f
 560:	2f2f2f2f 	svccs	0x002f2f2f
 564:	2f2f2f2f 	svccs	0x002f2f2f
 568:	2f2f2f30 	svccs	0x002f2f30
 56c:	2f2f2f2f 	svccs	0x002f2f2f
 570:	2f2f2f2f 	svccs	0x002f2f2f
 574:	302f2f2f 	eorcc	r2, pc, pc, lsr #30
 578:	2f2f2f2f 	svccs	0x002f2f2f
 57c:	2f2f2f2f 	svccs	0x002f2f2f
 580:	2f2f2f2f 	svccs	0x002f2f2f
 584:	2f302f2f 	svccs	0x00302f2f
 588:	2f2f2f2f 	svccs	0x002f2f2f
 58c:	2f2f2f2f 	svccs	0x002f2f2f
 590:	2f2f2f2f 	svccs	0x002f2f2f
 594:	2f2f302f 	svccs	0x002f302f
 598:	2f2f2f2f 	svccs	0x002f2f2f
 59c:	2f2f2f2f 	svccs	0x002f2f2f
 5a0:	2f2f2f2f 	svccs	0x002f2f2f
 5a4:	2f2f2f30 	svccs	0x002f2f30
 5a8:	2f2f2f2f 	svccs	0x002f2f2f
 5ac:	2f2f2f2f 	svccs	0x002f2f2f
 5b0:	302f2f2f 	eorcc	r2, pc, pc, lsr #30
 5b4:	2f2f2f2f 	svccs	0x002f2f2f
 5b8:	2f2f2f2f 	svccs	0x002f2f2f
 5bc:	2f2f2f2f 	svccs	0x002f2f2f
 5c0:	2f302f2f 	svccs	0x00302f2f
 5c4:	2f2f2f2f 	svccs	0x002f2f2f
 5c8:	2f2f2f2f 	svccs	0x002f2f2f
 5cc:	2f2f2f2f 	svccs	0x002f2f2f
 5d0:	302f312f 	eorcc	r3, pc, pc, lsr #2
 5d4:	022f302f 	eoreq	r3, pc, #47	; 0x2f
 5d8:	01010002 	tsteq	r1, r2

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
 160:	61727261 	cmnvs	r2, r1, ror #4
 164:	6b003179 	blvs	c750 <__bss_start+0x750>
 168:	656e7265 	strbvs	r7, [lr, #-613]!	; 0x265
 16c:	706f5f6c 	rsbvc	r5, pc, ip, ror #30
 170:	696d6974 	stmdbvs	sp!, {r2, r4, r5, r6, r8, fp, sp, lr}^
 174:	6974617a 	ldmdbvs	r4!, {r1, r3, r4, r5, r6, r8, sp, lr}^
 178:	732f6e6f 	teqvc	pc, #1776	; 0x6f0
 17c:	6b2f6372 	blvs	bd8f4c <__user_program+0x8d8f4c>
 180:	656e7265 	strbvs	r7, [lr, #-613]!	; 0x265
 184:	00632e6c 	rsbeq	r2, r3, ip, ror #28
 188:	61727261 	cmnvs	r2, r1, ror #4
 18c:	74003279 	strvc	r3, [r0], #-633	; 0x279
 190:	72656d69 	rsbvc	r6, r5, #6720	; 0x1a40
 194:	756c6156 	strbvc	r6, [ip, #-342]!	; 0x156
 198:	656b0065 	strbvs	r0, [fp, #-101]!	; 0x65
 19c:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 1a0:	69616d5f 	stmdbvs	r1!, {r0, r1, r2, r3, r4, r6, r8, sl, fp, sp, lr}^
 1a4:	6f67006e 	svcvs	0x0067006e
 1a8:	7300646f 	movwvc	r6, #1135	; 0x46f
 1ac:	74657a69 	strbtvc	r7, [r5], #-2665	; 0xa69
 1b0:	00657079 	rsbeq	r7, r5, r9, ror r0
 1b4:	65747962 	ldrbvs	r7, [r4, #-2402]!	; 0x962
 1b8:	7274705f 	rsbsvc	r7, r4, #95	; 0x5f
 1bc:	65727000 	ldrbvs	r7, [r2, #-0]!
 1c0:	00786966 	rsbseq	r6, r8, r6, ror #18
 1c4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0x975
 1c8:	745f3436 	ldrbvc	r3, [pc], #-1078	; 1d0 <__start-0x7e30>
 1cc:	73616200 	cmnvc	r1, #0, 4
 1d0:	5f5f0065 	svcpl	0x005f0065
 1d4:	6c5f6176 	ldfvse	f6, [pc], {118}	; 0x76
 1d8:	00747369 	rsbseq	r7, r4, r9, ror #6
 1dc:	69676964 	stmdbvs	r7!, {r2, r5, r6, r8, fp, sp, lr}^
 1e0:	70007374 	andvc	r7, r0, r4, ror r3
 1e4:	746e6972 	strbtvc	r6, [lr], #-2418	; 0x972
 1e8:	6b6d756e 	blvs	1b5d7a8 <__user_program+0x185d7a8>
 1ec:	72656b00 	rsbvc	r6, r5, #0, 22
 1f0:	5f6c656e 	svcpl	0x006c656e
 1f4:	6974706f 	ldmdbvs	r4!, {r0, r1, r2, r3, r5, r6, ip, sp, lr}^
 1f8:	617a696d 	cmnvs	sl, sp, ror #18
 1fc:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
 200:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 204:	6972702f 	ldmdbvs	r2!, {r0, r1, r2, r3, r5, ip, sp, lr}^
 208:	2e6b746e 	cdpcs	4, 6, cr7, cr11, cr14, {3}
 20c:	72700063 	rsbsvc	r0, r0, #99	; 0x63
 210:	6b746e69 	blvs	1d1bbbc <__user_program+0x1a1bbbc>
 214:	67726100 	ldrbvs	r6, [r2, -r0, lsl #2]!
 218:	5f5f0073 	svcpl	0x005f0073
 21c:	75007061 	strvc	r7, [r0, #-97]	; 0x61
 220:	5f747261 	svcpl	0x00747261
 224:	5f746567 	svcpl	0x00746567
 228:	65747962 	ldrbvs	r7, [r4, #-2402]!	; 0x962
 22c:	72656b00 	rsbvc	r6, r5, #0, 22
 230:	5f6c656e 	svcpl	0x006c656e
 234:	6974706f 	ldmdbvs	r4!, {r0, r1, r2, r3, r5, r6, ip, sp, lr}^
 238:	617a696d 	cmnvs	sl, sp, ror #18
 23c:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
 240:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 244:	7261752f 	rsbvc	r7, r1, #197132288	; 0xbc00000
 248:	00632e74 	rsbeq	r2, r3, r4, ror lr
 24c:	74726175 	ldrbtvc	r6, [r2], #-373	; 0x175
 250:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
 254:	61750074 	cmnvs	r5, r4, ror r0
 258:	705f7472 	subsvc	r7, pc, r2, ror r4	; <UNPREDICTABLE>
 25c:	625f7475 	subsvs	r7, pc, #1962934272	; 0x75000000
 260:	00657479 	rsbeq	r7, r5, r9, ror r4
 264:	74726175 	ldrbtvc	r6, [r2], #-373	; 0x175
 268:	6f6c635f 	svcvs	0x006c635f
 26c:	74006573 	strvc	r6, [r0], #-1395	; 0x573
 270:	72656d69 	rsbvc	r6, r5, #6720	; 0x1a40
 274:	656c635f 	strbvs	r6, [ip, #-863]!	; 0x35f
 278:	705f7261 	subsvc	r7, pc, r1, ror #4
 27c:	69646e65 	stmdbvs	r4!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}^
 280:	6b00676e 	blvs	1a040 <__bss_end+0xd040>
 284:	656e7265 	strbvs	r7, [lr, #-613]!	; 0x265
 288:	706f5f6c 	rsbvc	r5, pc, ip, ror #30
 28c:	696d6974 	stmdbvs	sp!, {r2, r4, r5, r6, r8, fp, sp, lr}^
 290:	6974617a 	ldmdbvs	r4!, {r1, r3, r4, r5, r6, r8, sp, lr}^
 294:	732f6e6f 	teqvc	pc, #1776	; 0x6f0
 298:	742f6372 	strtvc	r6, [pc], #-882	; 2a0 <__start-0x7d60>
 29c:	72656d69 	rsbvc	r6, r5, #6720	; 0x1a40
 2a0:	6600632e 	strvs	r6, [r0], -lr, lsr #6
 2a4:	00716572 	rsbseq	r6, r1, r2, ror r5
 2a8:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0x974
 2ac:	74735f72 	ldrbtvc	r5, [r3], #-3954	; 0xf72
 2b0:	00747261 	rsbseq	r7, r4, r1, ror #4
 2b4:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0x974
 2b8:	73695f72 	cmnvc	r9, #456	; 0x1c8
 2bc:	6e65705f 	mcrvs	0, 3, r7, cr5, cr15, {2}
 2c0:	676e6964 	strbvs	r6, [lr, -r4, ror #18]!
 2c4:	6d697400 	cfstrdvs	mvd7, [r9, #-0]
 2c8:	735f7265 	cmpvc	pc, #1342177286	; 0x50000006
 2cc:	00706f74 	rsbseq	r6, r0, r4, ror pc
 2d0:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0x974
 2d4:	65725f72 	ldrbvs	r5, [r2, #-3954]!	; 0xf72
 2d8:	6b006461 	blvs	19464 <__bss_end+0xc464>
 2dc:	656e7265 	strbvs	r7, [lr, #-613]!	; 0x265
 2e0:	706f5f6c 	rsbvc	r5, pc, ip, ror #30
 2e4:	696d6974 	stmdbvs	sp!, {r2, r4, r5, r6, r8, fp, sp, lr}^
 2e8:	6974617a 	ldmdbvs	r4!, {r1, r3, r4, r5, r6, r8, sp, lr}^
 2ec:	732f6e6f 	teqvc	pc, #1776	; 0x6f0
 2f0:	742f6372 	strtvc	r6, [pc], #-882	; 2f8 <__start-0x7d08>
 2f4:	745f6369 	ldrbvc	r6, [pc], #-873	; 2fc <__start-0x7d04>
 2f8:	632e636f 	teqvs	lr, #-1140850687	; 0xbc000001
	...

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
  24:	1a011803 	bne	46038 <__bss_end+0x39038>
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
  20:	8b040e42 	blhi	103930 <__bss_end+0xf6930>
  24:	0b0d4201 	bleq	350830 <__user_program+0x50830>
  28:	0d0d8802 	stceq	8, cr8, [sp, #-8]
  2c:	000ecb42 	andeq	ip, lr, r2, asr #22
  30:	0000001c 	andeq	r0, r0, ip, lsl r0
  34:	00000000 	andeq	r0, r0, r0
  38:	00008174 	andeq	r8, r0, r4, ror r1
  3c:	00000084 	andeq	r0, r0, r4, lsl #1
  40:	8b040e42 	blhi	103950 <__bss_end+0xf6950>
  44:	0b0d4201 	bleq	350850 <__user_program+0x50850>
  48:	420d0d7a 	andmi	r0, sp, #7808	; 0x1e80
  4c:	00000ecb 	andeq	r0, r0, fp, asr #29
  50:	0000001c 	andeq	r0, r0, ip, lsl r0
  54:	00000000 	andeq	r0, r0, r0
  58:	000081f8 	strdeq	r8, [r0], -r8	; <UNPREDICTABLE>
  5c:	00000084 	andeq	r0, r0, r4, lsl #1
  60:	8b040e42 	blhi	103970 <__bss_end+0xf6970>
  64:	0b0d4201 	bleq	350870 <__user_program+0x50870>
  68:	420d0d7a 	andmi	r0, sp, #7808	; 0x1e80
  6c:	00000ecb 	andeq	r0, r0, fp, asr #29
  70:	0000001c 	andeq	r0, r0, ip, lsl r0
  74:	00000000 	andeq	r0, r0, r0
  78:	0000827c 	andeq	r8, r0, ip, ror r2
  7c:	000000f8 	strdeq	r0, [r0], -r8
  80:	8b080e42 	blhi	203990 <__end+0xd5990>
  84:	42018e02 	andmi	r8, r1, #2, 28
  88:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
  8c:	080d0c76 	stmdaeq	sp, {r1, r2, r4, r5, r6, sl, fp}
  90:	0000000c 	andeq	r0, r0, ip
  94:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  98:	7c020001 	stcvc	0, cr0, [r2], {1}
  9c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  a0:	00000018 	andeq	r0, r0, r8, lsl r0
  a4:	00000090 	muleq	r0, r0, r0
  a8:	00008374 	andeq	r8, r0, r4, ror r3
  ac:	00000158 	andeq	r0, r0, r8, asr r1
  b0:	8b080e42 	blhi	2039c0 <__end+0xd59c0>
  b4:	42018e02 	andmi	r8, r1, #2, 28
  b8:	00040b0c 	andeq	r0, r4, ip, lsl #22
  bc:	0000000c 	andeq	r0, r0, ip
  c0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  c4:	7c020001 	stcvc	0, cr0, [r2], {1}
  c8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  cc:	00000020 	andeq	r0, r0, r0, lsr #32
  d0:	000000bc 	strheq	r0, [r0], -ip
  d4:	000084cc 	andeq	r8, r0, ip, asr #9
  d8:	00000138 	andeq	r0, r0, r8, lsr r1
  dc:	840c0e42 	strhi	r0, [ip], #-3650	; 0xe42
  e0:	8e028b03 	vmlahi.f64	d8, d2, d3
  e4:	0b0c4201 	bleq	3108f0 <__user_program+0x108f0>
  e8:	0c960204 	lfmeq	f0, 4, [r6], {4}
  ec:	00000c0d 	andeq	r0, r0, sp, lsl #24
  f0:	00000034 	andeq	r0, r0, r4, lsr r0
  f4:	000000bc 	strheq	r0, [r0], -ip
  f8:	00008604 	andeq	r8, r0, r4, lsl #12
  fc:	00000250 	andeq	r0, r0, r0, asr r2
 100:	80100e42 	andshi	r0, r0, r2, asr #28
 104:	82038104 	andhi	r8, r3, #4, 2
 108:	42018302 	andmi	r8, r1, #134217728	; 0x8000000
 10c:	068b180e 	streq	r1, [fp], lr, lsl #16
 110:	0c42058e 	cfstr64eq	mvdx0, [r2], {142}	; 0x8e
 114:	1c03140b 	cfstrsne	mvf1, [r3], {11}
 118:	180d0c01 	stmdane	sp, {r0, sl, fp}
 11c:	0ecbce42 	cdpeq	14, 12, cr12, cr11, cr2, {2}
 120:	c2c34210 	sbcgt	r4, r3, #16, 4
 124:	000ec0c1 	andeq	ip, lr, r1, asr #1
 128:	0000000c 	andeq	r0, r0, ip
 12c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 130:	7c020001 	stcvc	0, cr0, [r2], {1}
 134:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 138:	00000018 	andeq	r0, r0, r8, lsl r0
 13c:	00000128 	andeq	r0, r0, r8, lsr #2
 140:	00008854 	andeq	r8, r0, r4, asr r8
 144:	000000a8 	andeq	r0, r0, r8, lsr #1
 148:	8b080e42 	blhi	203a58 <__end+0xd5a58>
 14c:	42018e02 	andmi	r8, r1, #2, 28
 150:	00040b0c 	andeq	r0, r4, ip, lsl #22
 154:	0000001c 	andeq	r0, r0, ip, lsl r0
 158:	00000128 	andeq	r0, r0, r8, lsr #2
 15c:	000088fc 	strdeq	r8, [r0], -ip
 160:	00000024 	andeq	r0, r0, r4, lsr #32
 164:	8b040e42 	blhi	103a74 <__bss_end+0xf6a74>
 168:	0b0d4201 	bleq	350974 <__user_program+0x50974>
 16c:	420d0d4a 	andmi	r0, sp, #4736	; 0x1280
 170:	00000ecb 	andeq	r0, r0, fp, asr #29
 174:	0000001c 	andeq	r0, r0, ip, lsl r0
 178:	00000128 	andeq	r0, r0, r8, lsr #2
 17c:	00008920 	andeq	r8, r0, r0, lsr #18
 180:	00000050 	andeq	r0, r0, r0, asr r0
 184:	8b040e42 	blhi	103a94 <__bss_end+0xf6a94>
 188:	0b0d4201 	bleq	350994 <__user_program+0x50994>
 18c:	420d0d60 	andmi	r0, sp, #96, 26	; 0x1800
 190:	00000ecb 	andeq	r0, r0, fp, asr #29
 194:	0000001c 	andeq	r0, r0, ip, lsl r0
 198:	00000128 	andeq	r0, r0, r8, lsr #2
 19c:	00008970 	andeq	r8, r0, r0, ror r9
 1a0:	00000048 	andeq	r0, r0, r8, asr #32
 1a4:	8b040e42 	blhi	103ab4 <__bss_end+0xf6ab4>
 1a8:	0b0d4201 	bleq	3509b4 <__user_program+0x509b4>
 1ac:	420d0d5c 	andmi	r0, sp, #92, 26	; 0x1700
 1b0:	00000ecb 	andeq	r0, r0, fp, asr #29
 1b4:	0000000c 	andeq	r0, r0, ip
 1b8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 1bc:	7c020001 	stcvc	0, cr0, [r2], {1}
 1c0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 1c4:	0000001c 	andeq	r0, r0, ip, lsl r0
 1c8:	000001b4 			; <UNDEFINED> instruction: 0x000001b4
 1cc:	000089b8 			; <UNDEFINED> instruction: 0x000089b8
 1d0:	00000020 	andeq	r0, r0, r0, lsr #32
 1d4:	8b040e42 	blhi	103ae4 <__bss_end+0xf6ae4>
 1d8:	0b0d4201 	bleq	3509e4 <__user_program+0x509e4>
 1dc:	420d0d48 	andmi	r0, sp, #72, 26	; 0x1200
 1e0:	00000ecb 	andeq	r0, r0, fp, asr #29
 1e4:	0000001c 	andeq	r0, r0, ip, lsl r0
 1e8:	000001b4 			; <UNDEFINED> instruction: 0x000001b4
 1ec:	000089d8 	ldrdeq	r8, [r0], -r8	; <UNPREDICTABLE>
 1f0:	00000018 	andeq	r0, r0, r8, lsl r0
 1f4:	8b040e42 	blhi	103b04 <__bss_end+0xf6b04>
 1f8:	0b0d4201 	bleq	350a04 <__user_program+0x50a04>
 1fc:	420d0d44 	andmi	r0, sp, #68, 26	; 0x1100
 200:	00000ecb 	andeq	r0, r0, fp, asr #29
 204:	0000001c 	andeq	r0, r0, ip, lsl r0
 208:	000001b4 			; <UNDEFINED> instruction: 0x000001b4
 20c:	000089f0 	strdeq	r8, [r0], -r0
 210:	0000001c 	andeq	r0, r0, ip, lsl r0
 214:	8b040e42 	blhi	103b24 <__bss_end+0xf6b24>
 218:	0b0d4201 	bleq	350a24 <__user_program+0x50a24>
 21c:	420d0d46 	andmi	r0, sp, #4480	; 0x1180
 220:	00000ecb 	andeq	r0, r0, fp, asr #29
 224:	0000001c 	andeq	r0, r0, ip, lsl r0
 228:	000001b4 			; <UNDEFINED> instruction: 0x000001b4
 22c:	00008a0c 	andeq	r8, r0, ip, lsl #20
 230:	0000001c 	andeq	r0, r0, ip, lsl r0
 234:	8b040e42 	blhi	103b44 <__bss_end+0xf6b44>
 238:	0b0d4201 	bleq	350a44 <__user_program+0x50a44>
 23c:	420d0d46 	andmi	r0, sp, #4480	; 0x1180
 240:	00000ecb 	andeq	r0, r0, fp, asr #29
 244:	0000001c 	andeq	r0, r0, ip, lsl r0
 248:	000001b4 			; <UNDEFINED> instruction: 0x000001b4
 24c:	00008a28 	andeq	r8, r0, r8, lsr #20
 250:	00000018 	andeq	r0, r0, r8, lsl r0
 254:	8b040e42 	blhi	103b64 <__bss_end+0xf6b64>
 258:	0b0d4201 	bleq	350a64 <__user_program+0x50a64>
 25c:	420d0d44 	andmi	r0, sp, #68, 26	; 0x1100
 260:	00000ecb 	andeq	r0, r0, fp, asr #29
 264:	0000000c 	andeq	r0, r0, ip
 268:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 26c:	7c020001 	stcvc	0, cr0, [r2], {1}
 270:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 274:	0000001c 	andeq	r0, r0, ip, lsl r0
 278:	00000264 	andeq	r0, r0, r4, ror #4
 27c:	00008a40 	andeq	r8, r0, r0, asr #20
 280:	00000038 	andeq	r0, r0, r8, lsr r0
 284:	8b040e42 	blhi	103b94 <__bss_end+0xf6b94>
 288:	0b0d4201 	bleq	350a94 <__user_program+0x50a94>
 28c:	420d0d54 	andmi	r0, sp, #84, 26	; 0x1500
 290:	00000ecb 	andeq	r0, r0, fp, asr #29
 294:	0000001c 	andeq	r0, r0, ip, lsl r0
 298:	00000264 	andeq	r0, r0, r4, ror #4
 29c:	00008a78 	andeq	r8, r0, r8, ror sl
 2a0:	00000038 	andeq	r0, r0, r8, lsr r0
 2a4:	8b040e42 	blhi	103bb4 <__bss_end+0xf6bb4>
 2a8:	0b0d4201 	bleq	350ab4 <__user_program+0x50ab4>
 2ac:	420d0d54 	andmi	r0, sp, #84, 26	; 0x1500
 2b0:	00000ecb 	andeq	r0, r0, fp, asr #29
 2b4:	0000000c 	andeq	r0, r0, ip
 2b8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 2bc:	7c010001 	stcvc	0, cr0, [r1], {1}
 2c0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 2c4:	00000014 	andeq	r0, r0, r4, lsl r0
 2c8:	000002b4 			; <UNDEFINED> instruction: 0x000002b4
 2cc:	00008f80 	andeq	r8, r0, r0, lsl #31
 2d0:	0000003c 	andeq	r0, r0, ip, lsr r0
 2d4:	0e038e68 	cdpeq	14, 0, cr8, cr3, cr8, {3}
 2d8:	00000010 	andeq	r0, r0, r0, lsl r0
 2dc:	0000000c 	andeq	r0, r0, ip
 2e0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 2e4:	7c020001 	stcvc	0, cr0, [r2], {1}
 2e8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 2ec:	0000002c 	andeq	r0, r0, ip, lsr #32
 2f0:	000002dc 	ldrdeq	r0, [r0], -ip
 2f4:	00008fbc 			; <UNDEFINED> instruction: 0x00008fbc
 2f8:	00000044 	andeq	r0, r0, r4, asr #32
 2fc:	84200e42 	strthi	r0, [r0], #-3650	; 0xe42
 300:	86078508 	strhi	r8, [r7], -r8, lsl #10
 304:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 308:	8a038904 	bhi	e2720 <__bss_end+0xd5720>
 30c:	5e018e02 	cdppl	14, 0, cr8, cr1, cr2, {0}
 310:	c8c9cace 	stmiagt	r9, {r1, r2, r3, r6, r7, r9, fp, lr, pc}^
 314:	c4c5c6c7 	strbgt	ip, [r5], #1735	; 0x6c7
 318:	0000000e 	andeq	r0, r0, lr
 31c:	00000024 	andeq	r0, r0, r4, lsr #32
 320:	000002dc 	ldrdeq	r0, [r0], -ip
 324:	00009000 	andeq	r9, r0, r0
 328:	00000040 	andeq	r0, r0, r0, asr #32
 32c:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xe42
 330:	86058506 	strhi	r8, [r5], -r6, lsl #10
 334:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 338:	5c018e02 	stcpl	14, cr8, [r1], {2}
 33c:	c6c7c8ce 	strbgt	ip, [r7], lr, asr #17
 340:	000ec4c5 	andeq	ip, lr, r5, asr #9
 344:	0000000c 	andeq	r0, r0, ip
 348:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 34c:	7c020001 	stcvc	0, cr0, [r2], {1}
 350:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 354:	00000034 	andeq	r0, r0, r4, lsr r0
 358:	00000344 	andeq	r0, r0, r4, asr #6
 35c:	00009044 	andeq	r9, r0, r4, asr #32
 360:	00000178 	andeq	r0, r0, r8, ror r1
 364:	83280e44 	teqhi	r8, #68, 28	; 0x440
 368:	8509840a 	strhi	r8, [r9, #-1034]	; 0x40a
 36c:	87078608 	strhi	r8, [r7, -r8, lsl #12]
 370:	89058806 	stmdbhi	r5, {r1, r2, fp, pc}
 374:	8b038a04 	blhi	e2b8c <__bss_end+0xd5b8c>
 378:	02018e02 	andeq	r8, r1, #2, 28
 37c:	cbce0aa6 	blgt	ff382e1c <__user_program+0xff082e1c>
 380:	c7c8c9ca 	strbgt	ip, [r8, sl, asr #19]
 384:	c3c4c5c6 	bicgt	ip, r4, #830472192	; 0x31800000
 388:	0b42000e 	bleq	10803c8 <__user_program+0xd803c8>
 38c:	0000000c 	andeq	r0, r0, ip
 390:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 394:	7c020001 	stcvc	0, cr0, [r2], {1}
 398:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 39c:	0000002c 	andeq	r0, r0, ip, lsr #32
 3a0:	0000038c 	andeq	r0, r0, ip, lsl #7
 3a4:	000091bc 			; <UNDEFINED> instruction: 0x000091bc
 3a8:	00000120 	andeq	r0, r0, r0, lsr #2
 3ac:	84200e46 	strthi	r0, [r0], #-3654	; 0xe46
 3b0:	86078508 	strhi	r8, [r7], -r8, lsl #10
 3b4:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 3b8:	8a038904 	bhi	e27d0 <__bss_end+0xd57d0>
 3bc:	02018e02 	andeq	r8, r1, #2, 28
 3c0:	c9cace88 	stmibgt	sl, {r3, r7, r9, sl, fp, lr, pc}^
 3c4:	c5c6c7c8 	strbgt	ip, [r6, #1992]	; 0x7c8
 3c8:	00000ec4 	andeq	r0, r0, r4, asr #29
