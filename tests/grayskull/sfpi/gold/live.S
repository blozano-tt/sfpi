	.file	"live.cc"
	.option nopic
	.attribute arch, "rv32i2p0_xttgs1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	_Z9abs_setccv
	.type	_Z9abs_setccv, @function
_Z9abs_setccv:
	SFPLOADI	L1, -15968, 0
	SFPLOADI	L0, -15888, 0
	SFPLOAD	L2, 0, 1
	SFPSETCC	L2, 0, 6
	TTNOP
	SFPABS	L0, L1, 1
	TTNOP
	TTNOP
	SFPENCC	3, 10
	TTNOP
	SFPSTORE	52, L0, 0
	ret
	.size	_Z9abs_setccv, .-_Z9abs_setccv
	.align	2
	.globl	_Z18rename_move_case2av
	.type	_Z18rename_move_case2av, @function
_Z18rename_move_case2av:
	SFPLOADI	L1, 16256, 0
	SFPLOADI	L0, 16384, 0
	SFPLOAD	L2, 0, 1
	SFPSETCC	L2, 0, 6
	TTNOP
	SFPMOV	L0, L1, 0
	TTNOP
	TTNOP
	SFPENCC	3, 10
	TTNOP
	SFPSTORE	0, L0, 0
	ret
	.size	_Z18rename_move_case2av, .-_Z18rename_move_case2av
	.align	2
	.globl	_Z16copy_move_case2bv
	.type	_Z16copy_move_case2bv, @function
_Z16copy_move_case2bv:
	SFPLOADI	L1, 16256, 0
	SFPLOADI	L0, 16384, 0
	SFPLOAD	L2, 0, 1
	SFPSETCC	L2, 0, 6
	TTNOP
	SFPMOV	L0, L1, 0
	TTNOP
	TTNOP
	SFPENCC	3, 10
	TTNOP
	SFPSTORE	0, L1, 0
	SFPSTORE	0, L0, 0
	ret
	.size	_Z16copy_move_case2bv, .-_Z16copy_move_case2bv
	.align	2
	.globl	_Z15copy_move_case3v
	.type	_Z15copy_move_case3v, @function
_Z15copy_move_case3v:
	SFPLOADI	L1, 16256, 0
	SFPLOADI	L0, 16384, 0
	SFPLOAD	L2, 0, 1
	SFPSETCC	L2, 0, 6
	TTNOP
	SFPMOV	L0, L1, 0
	TTNOP
	TTNOP
	SFPENCC	3, 10
	TTNOP
	SFPADDI	L1, 16448, 0
	TTNOP
	TTNOP
	SFPSTORE	0, L1, 0
	SFPADDI	L0, 16512, 0
	TTNOP
	TTNOP
	SFPSTORE	0, L0, 0
	ret
	.size	_Z15copy_move_case3v, .-_Z15copy_move_case3v
	.align	2
	.globl	_Z19internal_move_case4v
	.type	_Z19internal_move_case4v, @function
_Z19internal_move_case4v:
	SFPLOADI	L0, 10, 4
	SFPLOADI	L2, 20, 4
	SFPLOAD	L1, 0, 1
	SFPSETCC	L1, 0, 6
	TTNOP
	SFPMOV	L1, L2, 0
	TTNOP
	TTNOP
	SFPIADD	L1, L0, 0, 6
	TTNOP
	TTNOP
	SFPMOV	L0, L1, 0
	TTNOP
	TTNOP
	SFPENCC	3, 10
	TTNOP
	SFPSTORE	0, L0, 2
	SFPSTORE	0, L2, 2
	ret
	.size	_Z19internal_move_case4v, .-_Z19internal_move_case4v
	.align	2
	.globl	_Z19internal_move_case5v
	.type	_Z19internal_move_case5v, @function
_Z19internal_move_case5v:
	SFPLOADI	L3, 10, 4
	SFPLOADI	L2, 20, 4
	SFPLOADI	L0, 30, 4
	SFPLOAD	L1, 0, 1
	SFPSETCC	L1, 0, 6
	TTNOP
	SFPMOV	L1, L2, 0
	TTNOP
	TTNOP
	SFPIADD	L1, L3, 0, 6
	TTNOP
	TTNOP
	SFPMOV	L0, L1, 0
	TTNOP
	TTNOP
	SFPENCC	3, 10
	TTNOP
	SFPSTORE	0, L3, 2
	SFPSTORE	0, L2, 2
	SFPSTORE	0, L0, 2
	ret
	.size	_Z19internal_move_case5v, .-_Z19internal_move_case5v
	.align	2
	.globl	_Z4bb_1v
	.type	_Z4bb_1v, @function
_Z4bb_1v:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	SFPLOADI	L0, 1, 4
	SFPLOADI	L1, 2, 4
	li	s0,0
	j	.L9
.L14:
	SFPIADD	L2, L0, -3, 9
	TTNOP
	TTNOP
	TTNOP
	call	rand
	bne	a0,zero,.L16
	SFPIADD	L0, L1, 4, 5
	TTNOP
	TTNOP
	SFPCOMPC
	TTNOP
	SFPPUSHC
	SFPIADD	L2, L0, -5, 9
	TTNOP
	TTNOP
	TTNOP
	call	rand
	bne	a0,zero,.L17
	SFPIADD	L0, L1, 6, 5
	TTNOP
	TTNOP
	SFPPOPC
	TTNOP
.L16:
	SFPENCC	3, 10
	TTNOP
	addi	s0,s0,1
.L9:
	call	rand
	bgt	a0,s0,.L14
	SFPSTORE	0, L0, 2
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
.L17:
	SFPPOPC
	TTNOP
	SFPENCC	3, 10
	TTNOP
	SFPSTORE	0, L0, 2
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	_Z4bb_1v, .-_Z4bb_1v
	.align	2
	.globl	_Z4bb_2v
	.type	_Z4bb_2v, @function
_Z4bb_2v:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	SFPLOADI	L0, 1, 4
	SFPLOADI	L1, 2, 4
	li	s0,0
	li	s1,1
	j	.L19
.L27:
	bne	s0,s1,.L22
	SFPIADD	L0, L0, -4, 9
	TTNOP
	TTNOP
	TTNOP
.L22:
	SFPIADD	L0, L1, -5, 5
	TTNOP
	TTNOP
	SFPENCC	3, 10
	TTNOP
	addi	s0,s0,1
.L19:
	call	rand
	ble	a0,s0,.L26
	bne	s0,zero,.L27
	SFPIADD	L0, L1, -3, 5
	TTNOP
	TTNOP
	j	.L22
.L26:
	SFPSTORE	0, L0, 2
	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s1,4(sp)
	addi	sp,sp,16
	jr	ra
	.size	_Z4bb_2v, .-_Z4bb_2v
	.align	2
	.globl	_Z4bb_3v
	.type	_Z4bb_3v, @function
_Z4bb_3v:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	SFPLOADI	L0, 1, 4
	SFPLOADI	L1, 2, 4
	li	s0,0
	li	s1,2
	j	.L29
.L33:
	call	rand
	beq	a0,zero,.L34
	SFPIADD	L2, L0, -3, 9
	TTNOP
	TTNOP
	TTNOP
	call	rand
	bgt	a0,s1,.L37
	SFPIADD	L0, L1, -4, 5
	TTNOP
	TTNOP
	SFPCOMPC
	TTNOP
	SFPIADD	L2, L0, -5, 9
	TTNOP
	TTNOP
	TTNOP
.L37:
	SFPIADD	L0, L1, -6, 5
	TTNOP
	TTNOP
	SFPENCC	3, 10
	TTNOP
	addi	s0,s0,1
.L29:
	call	rand
	bgt	a0,s0,.L33
.L34:
	SFPSTORE	0, L0, 2
	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s1,4(sp)
	addi	sp,sp,16
	jr	ra
	.size	_Z4bb_3v, .-_Z4bb_3v
	.align	2
	.globl	_Z4bb_4v
	.type	_Z4bb_4v, @function
_Z4bb_4v:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	SFPLOADI	L0, 2, 4
	SFPIADD	L1, L0, -1, 9
	TTNOP
	TTNOP
	TTNOP
	call	rand
	li	a5,5
	beq	a0,a5,.L42
	li	s0,6
	call	rand
	beq	a0,s0,.L41
	call	rand
	beq	a0,s0,.L41
.L42:
.L40:
	SFPIADD	L0, L0, -2, 9
	TTNOP
	TTNOP
	TTNOP
	SFPLOADI	L0, 5, 4
	SFPENCC	3, 10
	TTNOP
	SFPSTORE	0, L0, 2
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
.L41:
	SFPIADD	L1, L0, -3, 9
	TTNOP
	TTNOP
	TTNOP
	SFPIADD	L0, L0, -4, 9
	TTNOP
	TTNOP
	TTNOP
	SFPLOADI	L0, 5, 4
	SFPENCC	3, 10
	TTNOP
	SFPSTORE	0, L0, 2
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	_Z4bb_4v, .-_Z4bb_4v
	.align	2
	.globl	_Z11bb_not_livev
	.type	_Z11bb_not_livev, @function
_Z11bb_not_livev:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	SFPLOADI	L0, 1, 4
	SFPLOADI	L0, 2, 4
	li	s0,0
	j	.L45
.L46:
	SFPIADD	L1, L0, -3, 5
	TTNOP
	TTNOP
	addi	s0,s0,1
.L45:
	call	rand
	bgt	a0,s0,.L46
	SFPIADD	L0, L0, -4, 5
	TTNOP
	TTNOP
	SFPSTORE	0, L0, 2
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	_Z11bb_not_livev, .-_Z11bb_not_livev
	.align	2
	.globl	_Z14popc_unrollingv
	.type	_Z14popc_unrollingv, @function
_Z14popc_unrollingv:
	SFPLOADI	L0, 1, 4
	SFPLOADI	L1, 1, 4
	SFPIADD	L2, L0, -2, 9
	TTNOP
	TTNOP
	TTNOP
	SFPIADD	L0, L1, -1, 5
	TTNOP
	TTNOP
	SFPCOMPC
	TTNOP
	SFPPUSHC
	SFPIADD	L2, L0, -3, 9
	TTNOP
	TTNOP
	TTNOP
	SFPIADD	L0, L1, -1, 5
	TTNOP
	TTNOP
	SFPCOMPC
	TTNOP
	SFPPUSHC
	SFPIADD	L2, L0, -4, 9
	TTNOP
	TTNOP
	TTNOP
	SFPIADD	L0, L1, -1, 5
	TTNOP
	TTNOP
	SFPCOMPC
	TTNOP
	SFPIADD	L2, L0, -5, 9
	TTNOP
	TTNOP
	TTNOP
	SFPIADD	L0, L1, -1, 5
	TTNOP
	TTNOP
	SFPPOPC
	TTNOP
	SFPPOPC
	TTNOP
	SFPENCC	3, 10
	TTNOP
	SFPIADD	L2, L0, -6, 9
	TTNOP
	TTNOP
	TTNOP
	SFPIADD	L0, L1, -1, 5
	TTNOP
	TTNOP
	SFPCOMPC
	TTNOP
	SFPPUSHC
	SFPIADD	L2, L0, -7, 9
	TTNOP
	TTNOP
	TTNOP
	SFPIADD	L0, L1, -1, 5
	TTNOP
	TTNOP
	SFPCOMPC
	TTNOP
	SFPIADD	L2, L0, -8, 9
	TTNOP
	TTNOP
	TTNOP
	SFPIADD	L0, L1, -1, 5
	TTNOP
	TTNOP
	SFPPOPC
	TTNOP
	SFPENCC	3, 10
	TTNOP
	SFPSTORE	0, L0, 2
	ret
	.size	_Z14popc_unrollingv, .-_Z14popc_unrollingv
	.align	2
	.globl	_Z18double_assign_evenv
	.type	_Z18double_assign_evenv, @function
_Z18double_assign_evenv:
	SFPLOADI	L0, 1, 4
	SFPLOADI	L1, 2, 4
	SFPIADD	L2, L0, -3, 5
	TTNOP
	TTNOP
	SFPSETCC	L2, 0, 6
	TTNOP
	SFPAND	L1, L0
	TTNOP
	TTNOP
	SFPMOV	L0, L1, 0
	TTNOP
	TTNOP
	SFPLOADI	L3, 5, 4
	SFPLOADI	L2, 7, 4
	SFPLOADI	L1, 8, 4
	SFPSTORE	0, L3, 2
	SFPSTORE	0, L2, 2
	SFPSTORE	0, L1, 2
	SFPNOT	L0, L0
	TTNOP
	TTNOP
	SFPENCC	3, 10
	TTNOP
	SFPSTORE	0, L0, 2
	ret
	.size	_Z18double_assign_evenv, .-_Z18double_assign_evenv
	.align	2
	.globl	_Z10generationv
	.type	_Z10generationv, @function
_Z10generationv:
	SFPLOADI	L0, 1, 4
	SFPIADD	L1, L0, -2, 5
	TTNOP
	TTNOP
	SFPSETCC	L1, 0, 2
	TTNOP
	SFPIADD	L1, L0, -3, 5
	TTNOP
	TTNOP
	SFPSETCC	L1, 0, 2
	TTNOP
	SFPCOMPC
	TTNOP
	SFPLOADI	L2, 4, 4
	SFPENCC	3, 10
	TTNOP
	SFPIADD	L1, L0, -5, 5
	TTNOP
	TTNOP
	SFPSETCC	L1, 0, 6
	TTNOP
	SFPLOADI	L2, -6, 4
	SFPENCC	3, 10
	TTNOP
	SFPIADD	L1, L0, -7, 5
	TTNOP
	TTNOP
	SFPSETCC	L1, 0, 6
	TTNOP
	SFPLOADI	L1, 8, 4
	SFPENCC	3, 10
	TTNOP
	SFPIADD	L3, L0, -9, 5
	TTNOP
	TTNOP
	SFPSETCC	L3, 0, 6
	TTNOP
	SFPLOADI	L1, 10, 4
	SFPENCC	3, 10
	TTNOP
	SFPIADD	L3, L0, -11, 5
	TTNOP
	TTNOP
	SFPSETCC	L3, 0, 2
	TTNOP
	SFPIADD	L3, L0, -12, 5
	TTNOP
	TTNOP
	SFPSETCC	L3, 0, 2
	TTNOP
	SFPCOMPC
	TTNOP
	SFPSTORE	56, L2, 2
	SFPENCC	3, 10
	TTNOP
	SFPIADD	L0, L0, -13, 5
	TTNOP
	TTNOP
	SFPSETCC	L0, 0, 6
	TTNOP
	SFPSTORE	56, L1, 2
	SFPENCC	3, 10
	TTNOP
	ret
	.size	_Z10generationv, .-_Z10generationv
	.align	2
	.globl	_Z21prop_thru_pseudo_livev
	.type	_Z21prop_thru_pseudo_livev, @function
_Z21prop_thru_pseudo_livev:
	SFPLOADI	L0, 1, 4
	SFPLOADI	L1, 2, 4
	SFPIADD	L2, L0, -4, 5
	TTNOP
	TTNOP
	SFPSETCC	L2, 0, 6
	TTNOP
	SFPMOV	L2, L1, 0
	TTNOP
	TTNOP
	SFPAND	L2, L0
	TTNOP
	TTNOP
	SFPMOV	L0, L2, 0
	TTNOP
	TTNOP
	SFPMOV	L2, L1, 0
	TTNOP
	TTNOP
	SFPOR	L2, L0
	TTNOP
	TTNOP
	SFPMOV	L0, L2, 0
	TTNOP
	TTNOP
	SFPMOV	L2, L0, 0
	TTNOP
	TTNOP
	SFPIADD	L2, L1, 0, 4
	TTNOP
	TTNOP
	SFPMOV	L0, L2, 0
	TTNOP
	TTNOP
	SFPMOV	L2, L0, 0
	TTNOP
	TTNOP
	SFPAND	L2, L1
	TTNOP
	TTNOP
	SFPMOV	L0, L2, 0
	TTNOP
	TTNOP
	SFPMOV	L2, L0, 0
	TTNOP
	TTNOP
	SFPOR	L2, L1
	TTNOP
	TTNOP
	SFPMOV	L0, L2, 0
	TTNOP
	TTNOP
	SFPIADD	L1, L0, 0, 4
	TTNOP
	TTNOP
	SFPMOV	L0, L1, 0
	TTNOP
	TTNOP
	SFPENCC	3, 10
	TTNOP
	SFPSTORE	0, L0, 2
	ret
	.size	_Z21prop_thru_pseudo_livev, .-_Z21prop_thru_pseudo_livev
	.align	2
	.globl	_Z18do_not_fold_assignv
	.type	_Z18do_not_fold_assignv, @function
_Z18do_not_fold_assignv:
	SFPLOADI	L0, 1, 4
	SFPLOADI	L1, 2, 4
	SFPSETCC	L0, 0, 0
	TTNOP
	SFPMOV	L0, L1, 0
	TTNOP
	TTNOP
	SFPENCC	3, 10
	TTNOP
	SFPSTORE	0, L0, 2
	ret
	.size	_Z18do_not_fold_assignv, .-_Z18do_not_fold_assignv
	.align	2
	.globl	_Z20operator_plus_equalsv
	.type	_Z20operator_plus_equalsv, @function
_Z20operator_plus_equalsv:
	SFPLOAD	L1, 0, 1
	SFPLOADI	L0, 16672, 0
	SFPMAD	L0, L0, L11, L1, 0
	TTNOP
	TTNOP
	SFPSETCC	L0, 0, 4
	TTNOP
	SFPLOADI	L0, 1, 4
	SFPPUSHC
	SFPLOADI	L2, 16688, 0
	SFPMAD	L2, L2, L11, L1, 0
	TTNOP
	TTNOP
	SFPSETCC	L2, 0, 2
	TTNOP
	SFPLOADI	L2, 16704, 0
	SFPMAD	L2, L2, L11, L1, 0
	TTNOP
	TTNOP
	SFPSETCC	L2, 0, 2
	TTNOP
	SFPLOADI	L2, 16720, 0
	SFPMAD	L2, L2, L11, L1, 0
	TTNOP
	TTNOP
	SFPSETCC	L2, 0, 2
	TTNOP
	SFPCOMPC
	TTNOP
	SFPLOADI	L0, 0, 4
	SFPPOPC
	TTNOP
	SFPSETCC	L0, 0, 6
	TTNOP
	SFPLOAD	L2, 8, 1
	SFPLOAD	L0, 4, 1
	SFPPUSHC
	SFPMAD	L3, L10, L11, L1, 0
	TTNOP
	TTNOP
	SFPSETCC	L3, 0, 6
	TTNOP
	SFPADD	L0, L10, L0, L2, 0
	TTNOP
	TTNOP
	SFPPOPC
	TTNOP
	SFPPUSHC
	SFPLOADI	L2, 16384, 0
	SFPMAD	L2, L2, L11, L1, 0
	TTNOP
	TTNOP
	SFPSETCC	L2, 0, 6
	TTNOP
	SFPMUL	L0, L0, L1, L4, 0
	TTNOP
	TTNOP
	SFPPOPC
	TTNOP
	SFPSTORE	0, L0, 0
	SFPENCC	3, 10
	TTNOP
	ret
	.size	_Z20operator_plus_equalsv, .-_Z20operator_plus_equalsv
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sw	ra,12(sp)
	call	_Z9abs_setccv
	call	_Z18rename_move_case2av
	call	_Z16copy_move_case2bv
	call	_Z15copy_move_case3v
	call	_Z19internal_move_case4v
	call	_Z19internal_move_case5v
	call	_Z4bb_1v
	call	_Z4bb_2v
	call	_Z4bb_3v
	call	_Z4bb_4v
	call	_Z11bb_not_livev
	call	_Z14popc_unrollingv
	call	_Z18double_assign_evenv
	call	_Z10generationv
	call	_Z21prop_thru_pseudo_livev
	SFPLOADI	L0, 1, 4
	SFPLOADI	L1, 2, 4
	SFPSETCC	L0, 0, 0
	TTNOP
	SFPMOV	L0, L1, 0
	TTNOP
	TTNOP
	SFPENCC	3, 10
	TTNOP
	SFPSTORE	0, L0, 2
	lw	ra,12(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.globl	_ZN7ckernel13instrn_bufferE
	.section	.sbss,"aw",@nobits
	.align	2
	.type	_ZN7ckernel13instrn_bufferE, @object
	.size	_ZN7ckernel13instrn_bufferE, 4
_ZN7ckernel13instrn_bufferE:
	.zero	4
	.ident	"GCC: (g323f2891276) 12.2.0"
