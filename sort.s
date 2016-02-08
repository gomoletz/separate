	.file	"sort.c"
	.text
.Ltext0:
	.globl	n
	.bss
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	c
	.align 4
	.type	c, @object
	.size	c, 4
c:
	.zero	4
	.globl	d
	.align 4
	.type	d, @object
	.size	d, 4
d:
	.zero	4
	.globl	swap
	.align 4
	.type	swap, @object
	.size	swap, 4
swap:
	.zero	4
	.globl	fp
	.align 4
	.type	fp, @object
	.size	fp, 4
fp:
	.zero	4
	.section	.rodata
.LC0:
	.string	"Source list:"
.LC1:
	.string	"%lx"
.LC2:
	.string	"0x%lx\n"
	.align 4
.LC3:
	.string	"\nSorted list in ascending order:"
.LC4:
	.string	"%lx\n"
	.text
	.globl	bubble_sort
	.type	bubble_sort, @function
bubble_sort:
.LFB2:
	.file 1 "sort.c"
	.loc 1 16 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$88, %esp
	.loc 1 16 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 20 0
	movl	$.LC0, (%esp)
	call	puts
	.loc 1 21 0
	movl	$0, -21(%ebp)
	movl	$0, -17(%ebp)
	movb	$0, -13(%ebp)
	.loc 1 22 0
	jmp	.L2
.L3:
	.loc 1 23 0
	leal	-21(%ebp), %eax
	movl	%eax, (%esp)
	call	strlen
	cmpl	$1, %eax
	jbe	.L2
	.loc 1 24 0
	movl	n, %edx
	leal	-64(%ebp), %eax
	sall	$2, %edx
	addl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	$.LC1, 4(%esp)
	leal	-21(%ebp), %eax
	movl	%eax, (%esp)
	call	__isoc99_sscanf
	.loc 1 25 0
	movl	n, %eax
	movl	-64(%ebp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$.LC2, (%esp)
	call	printf
	.loc 1 26 0
	movl	n, %eax
	addl	$1, %eax
	movl	%eax, n
.L2:
	.loc 1 22 0 discriminator 1
	movl	fp, %eax
	movl	%eax, 8(%esp)
	movl	$9, 4(%esp)
	leal	-21(%ebp), %eax
	movl	%eax, (%esp)
	call	fgets
	testl	%eax, %eax
	jne	.L3
	.loc 1 29 0
	movl	fp, %eax
	movl	%eax, (%esp)
	call	fclose
	.loc 1 32 0
	movl	$0, c
	jmp	.L4
.L8:
	.loc 1 34 0
	movl	$0, d
	jmp	.L5
.L7:
	.loc 1 36 0
	movl	d, %eax
	movl	-64(%ebp,%eax,4), %edx
	movl	d, %eax
	addl	$1, %eax
	movl	-64(%ebp,%eax,4), %eax
	cmpl	%eax, %edx
	jle	.L6
	.loc 1 38 0
	movl	d, %eax
	movl	-64(%ebp,%eax,4), %eax
	movl	%eax, swap
	.loc 1 39 0
	movl	d, %eax
	movl	d, %edx
	addl	$1, %edx
	movl	-64(%ebp,%edx,4), %edx
	movl	%edx, -64(%ebp,%eax,4)
	.loc 1 40 0
	movl	d, %eax
	leal	1(%eax), %edx
	movl	swap, %eax
	movl	%eax, -64(%ebp,%edx,4)
.L6:
	.loc 1 34 0
	movl	d, %eax
	addl	$1, %eax
	movl	%eax, d
.L5:
	.loc 1 34 0 is_stmt 0 discriminator 1
	movl	n, %edx
	movl	c, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	-1(%eax), %edx
	movl	d, %eax
	cmpl	%eax, %edx
	jg	.L7
	.loc 1 32 0 is_stmt 1
	movl	c, %eax
	addl	$1, %eax
	movl	%eax, c
.L4:
	.loc 1 32 0 is_stmt 0 discriminator 1
	movl	n, %eax
	leal	-1(%eax), %edx
	movl	c, %eax
	cmpl	%eax, %edx
	jg	.L8
	.loc 1 46 0 is_stmt 1
	movl	$.LC3, (%esp)
	call	puts
	.loc 1 47 0
	movl	$0, c
	jmp	.L9
.L10:
	.loc 1 48 0 discriminator 2
	movl	c, %eax
	movl	-64(%ebp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$.LC4, (%esp)
	call	printf
	.loc 1 47 0 discriminator 2
	movl	c, %eax
	addl	$1, %eax
	movl	%eax, c
.L9:
	.loc 1 47 0 is_stmt 0 discriminator 1
	movl	c, %edx
	movl	n, %eax
	cmpl	%eax, %edx
	jl	.L10
	.loc 1 50 0 is_stmt 1
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L11
	call	__stack_chk_fail
.L11:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	bubble_sort, .-bubble_sort
	.section	.rodata
.LC5:
	.string	"Usage: ./sort file_name"
.LC6:
	.string	"rb"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.loc 1 53 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$16, %esp
	.loc 1 54 0
	cmpl	$2, 8(%ebp)
	je	.L13
	.loc 1 56 0
	movl	$.LC5, (%esp)
	call	puts
	.loc 1 57 0
	movl	$-1, %eax
	jmp	.L14
.L13:
	.loc 1 60 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	$.LC6, 4(%esp)
	movl	%eax, (%esp)
	call	fopen
	movl	%eax, fp
	.loc 1 61 0
	call	bubble_sort
	.loc 1 63 0
	movl	$0, %eax
.L14:
	.loc 1 64 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc/i686-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/i386-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x382
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF55
	.byte	0x1
	.long	.LASF56
	.long	.LASF57
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x2
	.byte	0xd4
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x37
	.long	0x61
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x83
	.long	0x85
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x84
	.long	0x6f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0xa6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x30
	.long	0xb8
	.uleb128 0x7
	.long	.LASF45
	.byte	0x94
	.byte	0x5
	.byte	0xf5
	.long	0x238
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xf6
	.long	0x5a
	.byte	0
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xfb
	.long	0xa0
	.byte	0x4
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0xfc
	.long	0xa0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.byte	0xfd
	.long	0xa0
	.byte	0xc
	.uleb128 0x8
	.long	.LASF20
	.byte	0x5
	.byte	0xfe
	.long	0xa0
	.byte	0x10
	.uleb128 0x8
	.long	.LASF21
	.byte	0x5
	.byte	0xff
	.long	0xa0
	.byte	0x14
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x100
	.long	0xa0
	.byte	0x18
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x101
	.long	0xa0
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x102
	.long	0xa0
	.byte	0x20
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x104
	.long	0xa0
	.byte	0x24
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x105
	.long	0xa0
	.byte	0x28
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x106
	.long	0xa0
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x108
	.long	0x270
	.byte	0x30
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x10a
	.long	0x276
	.byte	0x34
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x10c
	.long	0x5a
	.byte	0x38
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x110
	.long	0x5a
	.byte	0x3c
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x112
	.long	0x7a
	.byte	0x40
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x116
	.long	0x3e
	.byte	0x44
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x117
	.long	0x4c
	.byte	0x46
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x118
	.long	0x27c
	.byte	0x47
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x11c
	.long	0x28c
	.byte	0x48
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x125
	.long	0x8c
	.byte	0x4c
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x12e
	.long	0x9e
	.byte	0x54
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x12f
	.long	0x9e
	.byte	0x58
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x130
	.long	0x9e
	.byte	0x5c
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x131
	.long	0x9e
	.byte	0x60
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x132
	.long	0x25
	.byte	0x64
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.value	0x134
	.long	0x5a
	.byte	0x68
	.uleb128 0x9
	.long	.LASF44
	.byte	0x5
	.value	0x136
	.long	0x292
	.byte	0x6c
	.byte	0
	.uleb128 0xa
	.long	.LASF58
	.byte	0x5
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF46
	.byte	0xc
	.byte	0x5
	.byte	0xa0
	.long	0x270
	.uleb128 0x8
	.long	.LASF47
	.byte	0x5
	.byte	0xa1
	.long	0x270
	.byte	0
	.uleb128 0x8
	.long	.LASF48
	.byte	0x5
	.byte	0xa2
	.long	0x276
	.byte	0x4
	.uleb128 0x8
	.long	.LASF49
	.byte	0x5
	.byte	0xa6
	.long	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x23f
	.uleb128 0x6
	.byte	0x4
	.long	0xb8
	.uleb128 0xb
	.long	0xa6
	.long	0x28c
	.uleb128 0xc
	.long	0x97
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x238
	.uleb128 0xb
	.long	0xa6
	.long	0x2a2
	.uleb128 0xc
	.long	0x97
	.byte	0x27
	.byte	0
	.uleb128 0xd
	.long	.LASF59
	.byte	0x1
	.byte	0xf
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d5
	.uleb128 0xe
	.long	.LASF50
	.byte	0x1
	.byte	0x11
	.long	0x2d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xe
	.long	.LASF51
	.byte	0x1
	.byte	0x15
	.long	0x2e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.uleb128 0xb
	.long	0x85
	.long	0x2e5
	.uleb128 0xc
	.long	0x97
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.long	0xa6
	.long	0x2f5
	.uleb128 0xc
	.long	0x97
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.long	.LASF60
	.byte	0x1
	.byte	0x34
	.long	0x5a
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x32b
	.uleb128 0x10
	.long	.LASF52
	.byte	0x1
	.byte	0x34
	.long	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.long	.LASF53
	.byte	0x1
	.byte	0x34
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xa0
	.uleb128 0x11
	.string	"n"
	.byte	0x1
	.byte	0xc
	.long	0x85
	.uleb128 0x5
	.byte	0x3
	.long	n
	.uleb128 0x11
	.string	"c"
	.byte	0x1
	.byte	0xc
	.long	0x85
	.uleb128 0x5
	.byte	0x3
	.long	c
	.uleb128 0x11
	.string	"d"
	.byte	0x1
	.byte	0xc
	.long	0x85
	.uleb128 0x5
	.byte	0x3
	.long	d
	.uleb128 0x12
	.long	.LASF54
	.byte	0x1
	.byte	0xc
	.long	0x85
	.uleb128 0x5
	.byte	0x3
	.long	swap
	.uleb128 0x11
	.string	"fp"
	.byte	0x1
	.byte	0xd
	.long	0x37f
	.uleb128 0x5
	.byte	0x3
	.long	fp
	.uleb128 0x6
	.byte	0x4
	.long	0xad
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"__off_t"
.LASF17:
	.string	"_IO_read_ptr"
.LASF29:
	.string	"_chain"
.LASF8:
	.string	"size_t"
.LASF35:
	.string	"_shortbuf"
.LASF23:
	.string	"_IO_buf_base"
.LASF7:
	.string	"long long unsigned int"
.LASF6:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF30:
	.string	"_fileno"
.LASF18:
	.string	"_IO_read_end"
.LASF11:
	.string	"long int"
.LASF16:
	.string	"_flags"
.LASF24:
	.string	"_IO_buf_end"
.LASF33:
	.string	"_cur_column"
.LASF9:
	.string	"__quad_t"
.LASF32:
	.string	"_old_offset"
.LASF37:
	.string	"_offset"
.LASF50:
	.string	"array"
.LASF51:
	.string	"line"
.LASF46:
	.string	"_IO_marker"
.LASF0:
	.string	"unsigned int"
.LASF3:
	.string	"long unsigned int"
.LASF21:
	.string	"_IO_write_ptr"
.LASF48:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF59:
	.string	"bubble_sort"
.LASF25:
	.string	"_IO_save_base"
.LASF36:
	.string	"_lock"
.LASF31:
	.string	"_flags2"
.LASF43:
	.string	"_mode"
.LASF56:
	.string	"sort.c"
.LASF55:
	.string	"GNU C 4.8.4 -mtune=generic -march=i686 -g -fstack-protector"
.LASF13:
	.string	"sizetype"
.LASF22:
	.string	"_IO_write_end"
.LASF58:
	.string	"_IO_lock_t"
.LASF45:
	.string	"_IO_FILE"
.LASF54:
	.string	"swap"
.LASF49:
	.string	"_pos"
.LASF28:
	.string	"_markers"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF57:
	.string	"/home/ubuntu/Desktop/CS-6035-Project-1"
.LASF34:
	.string	"_vtable_offset"
.LASF15:
	.string	"FILE"
.LASF14:
	.string	"char"
.LASF47:
	.string	"_next"
.LASF12:
	.string	"__off64_t"
.LASF19:
	.string	"_IO_read_base"
.LASF27:
	.string	"_IO_save_end"
.LASF38:
	.string	"__pad1"
.LASF39:
	.string	"__pad2"
.LASF40:
	.string	"__pad3"
.LASF41:
	.string	"__pad4"
.LASF42:
	.string	"__pad5"
.LASF44:
	.string	"_unused2"
.LASF53:
	.string	"argv"
.LASF26:
	.string	"_IO_backup_base"
.LASF52:
	.string	"argc"
.LASF60:
	.string	"main"
.LASF20:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
