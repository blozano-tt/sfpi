	.file	"limits.cc"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_xttwh1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	SFPLOAD	L0, 0, 0, 0
	SFPLOAD	L0, 0, 0, 0
	SFPLOAD	L0, 16383, 0, 0
	SFPLOAD	L0, 0, 0, 0
	SFPSTORE	0, L0, 0, 0
	SFPSTORE	16383, L0, 0, 0
	SFPLOADI	L0, 0, 2
	SFPSTORE	0, L0, 0, 0
	SFPLOADI	L0, -1, 2
	SFPSTORE	0, L0, 0, 0
	SFPLOADI	L0, -32768, 4
	SFPSTORE	0, L0, 0, 0
	SFPLOADI	L0, 32767, 4
	SFPSTORE	0, L0, 0, 0
	SFPLOADI	L0, -32768, 4
	SFPSTORE	0, L0, 0, 0
	SFPLOADI	L0, 32767, 4
	SFPSTORE	0, L0, 0, 0
	SFPLOADI	L0, 65535, 2
	SFPSTORE	0, L0, 0, 0
	SFPLOADI	L0, 0, 2
	SFPSTORE	0, L0, 0, 0
	SFPLOADI	L0, 65535, 2
	SFPSTORE	0, L0, 0, 0
	SFPLOADI	L0, 16256, 0
	SFPSTORE	0, L0, 0, 0
	SFPLOADI	L0, 16303, 0
	SFPSTORE	0, L0, 0, 0
	SFPLOADI	L0, 16303, 8
	SFPLOADI	L0, 1, 10
	SFPSTORE	0, L0, 0, 0
	SFPLOADI	L0, 15671, 1
	SFPSTORE	0, L0, 0, 0
	SFPLOADI	L0, 16294, 8
	SFPLOADI	L0, 57345, 10
	SFPSTORE	0, L0, 0, 0
	SFPLOADI	L0, 18342, 8
	SFPLOADI	L0, 57344, 10
	SFPSTORE	0, L0, 0, 0
	SFPLOADI	L0, 18470, 8
	SFPLOADI	L0, 57344, 10
	SFPSTORE	0, L0, 0, 0
	SFPLOADI	L0, 14374, 8
	SFPLOADI	L0, 57344, 10
	SFPSTORE	0, L0, 0, 0
	SFPLOADI	L0, 14246, 8
	SFPLOADI	L0, 57344, 10
	SFPSTORE	0, L0, 0, 0
	SFPADDI	L0, 0, 0
	SFPNOP
	SFPADDI	L0, 65535, 0
	SFPNOP
	SFPMULI	L0, 0, 0
	SFPNOP
	SFPMULI	L0, 65535, 0
	SFPNOP
	SFPDIVP2	L0, L0, 2047, 0
	SFPDIVP2	L0, L0, -1, 0
	SFPDIVP2	L0, L0, -2048, 0
	SFPDIVP2	L0, L0, 2047, 1
	SFPDIVP2	L0, L0, -1, 1
	SFPDIVP2	L0, L0, -2048, 1
	SFPIADD	L0, L0, 2047, 5
	SFPIADD	L0, L0, -1, 5
	SFPIADD	L0, L0, -2048, 5
	SFPLOADI	L1, 32767, 4
	SFPIADD	L1, L0, 0, 4
	SFPIADD	L1, L1, -1, 5
	SFPLOADI	L0, -32768, 4
	SFPIADD	L0, L1, 0, 4
	SFPLOADI	L1, 65535, 2
	SFPIADD	L1, L0, 0, 4
	SFPLOADI	L0, 65535, 8
	SFPLOADI	L0, 0, 10
	SFPIADD	L0, L1, 0, 4
	SFPIADD	L0, L0, 0, 5
	SFPLOADI	L1, 4095, 2
	SFPIADD	L1, L0, 0, 4
	SFPIADD	L1, L1, 0, 5
	SFPLOADI	L0, 65535, 2
	SFPIADD	L0, L1, 0, 4
	SFPLOADI	L1, 65535, 2
	SFPIADD	L1, L0, 0, 4
	SFPLOADI	L0, 1, 8
	SFPLOADI	L0, 0, 10
	SFPIADD	L0, L1, 0, 4
	SFPSHFT	L0, L0, 2047, 1
	SFPMOV	L1, L0, 2
	SFPSHFT	L1, L0, -1, 1
	SFPSHFT	L1, L0, -2048, 1
	SFPSETEXP	L1, L1, 0, 1
	SFPSETEXP	L1, L1, 4095, 1
	SFPSETMAN	L1, L1, 0, 1
	SFPSETMAN	L1, L1, 4095, 1
	SFPLOADI	L0, 4096, 2
	SFPSETMAN	L0, L1, 0, 0
	SFPSETSGN	L0, L0, 0, 1
	SFPSETSGN	L0, L0, 4095, 1
	SFPSETCC	L0, 0, 1
	SFPSETCC	L0, 1, 1
	SFPENCC	3, 10
	SFPENCC	0, 2
	SFPENCC	1, 2
	SFPMAD	L1, L10, L11, L0, 0
	SFPNOP
	SFPSETCC	L1, 0, 0
	SFPMAD	L1, L10, L11, L0, 0
	SFPNOP
	SFPSETCC	L1, 0, 0
	SFPMAD	L1, L10, L11, L0, 0
	SFPNOP
	SFPSETCC	L1, 0, 0
	SFPMAD	L1, L11, L11, L0, 0
	SFPNOP
	SFPSETCC	L1, 0, 0
	SFPMAD	L1, L11, L11, L0, 0
	SFPNOP
	SFPSETCC	L1, 0, 0
	SFPMAD	L1, L11, L11, L0, 0
	SFPNOP
	SFPSETCC	L1, 0, 0
	SFPLOADI	L1, -16480, 1
	SFPMAD	L1, L1, L11, L0, 0
	SFPNOP
	SFPSETCC	L1, 0, 0
	SFPLOADI	L1, -16480, 0
	SFPMAD	L1, L1, L11, L0, 0
	SFPNOP
	SFPSETCC	L1, 0, 0
	SFPLOADI	L1, 49056, 0
	SFPMAD	L1, L1, L11, L0, 0
	SFPNOP
	SFPSETCC	L1, 0, 0
	SFPLOADI	L1, 16294, 8
	SFPLOADI	L1, 57345, 10
	SFPMAD	L1, L1, L11, L0, 0
	SFPNOP
	SFPSETCC	L1, 0, 0
	SFPLOADI	L1, 16383, 0
	SFPMAD	L1, L1, L11, L0, 0
	SFPNOP
	SFPSETCC	L1, 0, 0
	SFPLOADI	L1, 18431, 0
	SFPMAD	L1, L1, L11, L0, 0
	SFPNOP
	SFPSETCC	L1, 0, 0
	SFPLOADI	L1, 31740, 1
	SFPMAD	L1, L1, L11, L0, 0
	SFPNOP
	SFPSETCC	L1, 0, 0
	SFPLOADI	L1, 2044, 1
	SFPMAD	L0, L1, L11, L0, 0
	SFPNOP
	SFPSETCC	L0, 0, 0
	SFPENCC	3, 10
	li	a0,0
	ret
	.size	main, .-main
	.ident	"GCC: (g323f2891276) 12.2.0"
