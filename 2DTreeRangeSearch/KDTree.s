	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI0_0:
	.long	1065353216              ## float 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4NodeC2Eff
	.align	4, 0x90
__ZN4NodeC2Eff:                         ## @_ZN4NodeC2Eff
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	movss	LCPI0_0(%rip), %xmm2    ## xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, (%rdi)
	movss	-12(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%rdi)
	movss	-16(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rdi)
	movss	%xmm3, 12(%rdi)
	movss	%xmm3, 16(%rdi)
	movss	%xmm2, 20(%rdi)
	movss	%xmm2, 24(%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN4NodeC1Eff
	.align	4, 0x90
__ZN4NodeC1Eff:                         ## @_ZN4NodeC1Eff
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rdi
	movss	-12(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	movss	-16(%rbp), %xmm1        ## xmm1 = mem[0],zero,zero,zero
	callq	__ZN4NodeC2Eff
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI2_0:
	.long	1065353216              ## float 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4NodeC2Ev
	.align	4, 0x90
__ZN4NodeC2Ev:                          ## @_ZN4NodeC2Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	movss	LCPI2_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, (%rdi)
	movss	%xmm1, 12(%rdi)
	movss	%xmm1, 16(%rdi)
	movss	%xmm0, 20(%rdi)
	movss	%xmm0, 24(%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN4NodeC1Ev
	.align	4, 0x90
__ZN4NodeC1Ev:                          ## @_ZN4NodeC1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN4NodeC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN4Node8SetvalueEff
	.align	4, 0x90
__ZN4Node8SetvalueEff:                  ## @_ZN4Node8SetvalueEff
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rdi
	movss	-12(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%rdi)
	movss	-16(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN4Node17rectangledistanceEPfS0_
	.align	4, 0x90
__ZN4Node17rectangledistanceEPfS0_:     ## @_ZN4Node17rectangledistanceEPfS0_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movss	%xmm0, -28(%rbp)
	movss	%xmm0, -32(%rbp)
	movss	4(%rdx), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rsi
	movss	(%rsi), %xmm1           ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movq	%rdx, -40(%rbp)         ## 8-byte Spill
	jbe	LBB5_2
## BB#1:
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax         ## 8-byte Reload
	subss	4(%rax), %xmm0
	movss	%xmm0, -28(%rbp)
	jmp	LBB5_5
LBB5_2:
	movq	-40(%rbp), %rax         ## 8-byte Reload
	movss	4(%rax), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rcx
	ucomiss	(%rcx), %xmm0
	jbe	LBB5_4
## BB#3:
	movq	-40(%rbp), %rax         ## 8-byte Reload
	movss	4(%rax), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rcx
	subss	(%rcx), %xmm0
	movss	%xmm0, -28(%rbp)
LBB5_4:
	jmp	LBB5_5
LBB5_5:
	movq	-40(%rbp), %rax         ## 8-byte Reload
	movss	8(%rax), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rcx
	movss	4(%rcx), %xmm1          ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	LBB5_7
## BB#6:
	movq	-16(%rbp), %rax
	movss	4(%rax), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax         ## 8-byte Reload
	subss	8(%rax), %xmm0
	movss	%xmm0, -32(%rbp)
	jmp	LBB5_10
LBB5_7:
	movq	-40(%rbp), %rax         ## 8-byte Reload
	movss	8(%rax), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rcx
	ucomiss	4(%rcx), %xmm0
	jbe	LBB5_9
## BB#8:
	movq	-40(%rbp), %rax         ## 8-byte Reload
	movss	8(%rax), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rcx
	subss	4(%rcx), %xmm0
	movss	%xmm0, -32(%rbp)
LBB5_9:
	jmp	LBB5_10
LBB5_10:
	movss	-28(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	mulss	-28(%rbp), %xmm0
	movss	-32(%rbp), %xmm1        ## xmm1 = mem[0],zero,zero,zero
	mulss	-32(%rbp), %xmm1
	addss	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN4Tree21rectangledistance_posEPfS0_S0_
	.align	4, 0x90
__ZN4Tree21rectangledistance_posEPfS0_S0_: ## @_ZN4Tree21rectangledistance_posEPfS0_S0_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movss	%xmm0, -36(%rbp)
	movss	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rcx
	movss	(%rcx), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rcx
	movss	(%rcx), %xmm1           ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	LBB6_2
## BB#1:
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	subss	(%rax), %xmm0
	movss	%xmm0, -36(%rbp)
	jmp	LBB6_5
LBB6_2:
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	ucomiss	(%rax), %xmm0
	jbe	LBB6_4
## BB#3:
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	subss	(%rax), %xmm0
	movss	%xmm0, -36(%rbp)
LBB6_4:
	jmp	LBB6_5
LBB6_5:
	movq	-16(%rbp), %rax
	movss	4(%rax), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movss	4(%rax), %xmm1          ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	LBB6_7
## BB#6:
	movq	-24(%rbp), %rax
	movss	4(%rax), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	subss	4(%rax), %xmm0
	movss	%xmm0, -40(%rbp)
	jmp	LBB6_10
LBB6_7:
	movq	-16(%rbp), %rax
	movss	4(%rax), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	ucomiss	4(%rax), %xmm0
	jbe	LBB6_9
## BB#8:
	movq	-16(%rbp), %rax
	movss	4(%rax), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	subss	4(%rax), %xmm0
	movss	%xmm0, -40(%rbp)
LBB6_9:
	jmp	LBB6_10
LBB6_10:
	movss	-36(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	mulss	-36(%rbp), %xmm0
	movss	-40(%rbp), %xmm1        ## xmm1 = mem[0],zero,zero,zero
	mulss	-40(%rbp), %xmm1
	addss	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN4Node12nodedistanceEPS_
	.align	4, 0x90
__ZN4Node12nodedistanceEPS_:            ## @_ZN4Node12nodedistanceEPS_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp21:
	.cfi_def_cfa_offset 16
Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp23:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movss	4(%rdi), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	subss	4(%rsi), %xmm0
	movq	-16(%rbp), %rdi
	movss	4(%rdi), %xmm1          ## xmm1 = mem[0],zero,zero,zero
	subss	4(%rsi), %xmm1
	mulss	%xmm1, %xmm0
	movq	-16(%rbp), %rdi
	movss	8(%rdi), %xmm1          ## xmm1 = mem[0],zero,zero,zero
	subss	8(%rsi), %xmm1
	movq	-16(%rbp), %rdi
	movss	8(%rdi), %xmm2          ## xmm2 = mem[0],zero,zero,zero
	subss	8(%rsi), %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN4Node11posdistanceEPf
	.align	4, 0x90
__ZN4Node11posdistanceEPf:              ## @_ZN4Node11posdistanceEPf
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp24:
	.cfi_def_cfa_offset 16
Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp26:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movss	(%rdi), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	subss	4(%rsi), %xmm0
	movq	-16(%rbp), %rdi
	movss	(%rdi), %xmm1           ## xmm1 = mem[0],zero,zero,zero
	subss	4(%rsi), %xmm1
	mulss	%xmm1, %xmm0
	movq	-16(%rbp), %rdi
	movss	4(%rdi), %xmm1          ## xmm1 = mem[0],zero,zero,zero
	subss	8(%rsi), %xmm1
	movq	-16(%rbp), %rdi
	movss	4(%rdi), %xmm2          ## xmm2 = mem[0],zero,zero,zero
	subss	8(%rsi), %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN4TreeC2Ev
	.align	4, 0x90
__ZN4TreeC2Ev:                          ## @_ZN4TreeC2Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 8(%rdi)
	movl	$0, 12(%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN4TreeC1Ev
	.align	4, 0x90
__ZN4TreeC1Ev:                          ## @_ZN4TreeC1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp30:
	.cfi_def_cfa_offset 16
Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN4TreeC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN4Tree7findminEP4Nodeii
	.align	4, 0x90
__ZN4Tree7findminEP4Nodeii:             ## @_ZN4Tree7findminEP4Nodeii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp33:
	.cfi_def_cfa_offset 16
Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	movq	-24(%rbp), %rax
	movss	4(%rax,%rdi,4), %xmm0   ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-32(%rbp), %ecx
	cmpl	-28(%rbp), %ecx
	movq	%rsi, -80(%rbp)         ## 8-byte Spill
	je	LBB11_10
## BB#1:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-80(%rbp), %rcx         ## 8-byte Reload
	cmpq	(%rcx), %rax
	je	LBB11_5
## BB#2:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-28(%rbp), %edx
	cmpl	$0, -32(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	callq	__ZN4Tree7findminEP4Nodeii
	movq	%rax, -56(%rbp)
	movslq	-28(%rbp), %rax
	movq	-56(%rbp), %rsi
	movss	4(%rsi,%rax,4), %xmm0   ## xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1        ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	LBB11_4
## BB#3:
	movslq	-28(%rbp), %rax
	movq	-56(%rbp), %rcx
	movss	4(%rcx,%rax,4), %xmm0   ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
LBB11_4:
	jmp	LBB11_5
LBB11_5:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-80(%rbp), %rcx         ## 8-byte Reload
	cmpq	(%rcx), %rax
	je	LBB11_9
## BB#6:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	movl	-28(%rbp), %edx
	cmpl	$0, -32(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	callq	__ZN4Tree7findminEP4Nodeii
	movq	%rax, -64(%rbp)
	movslq	-28(%rbp), %rax
	movq	-64(%rbp), %rsi
	movss	4(%rsi,%rax,4), %xmm0   ## xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1        ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	LBB11_8
## BB#7:
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
LBB11_8:
	jmp	LBB11_9
LBB11_9:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB11_15
LBB11_10:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-80(%rbp), %rcx         ## 8-byte Reload
	cmpq	(%rcx), %rax
	je	LBB11_14
## BB#11:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-28(%rbp), %edx
	cmpl	$0, -32(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	callq	__ZN4Tree7findminEP4Nodeii
	movq	%rax, -72(%rbp)
	movslq	-28(%rbp), %rax
	movq	-72(%rbp), %rsi
	movss	4(%rsi,%rax,4), %xmm0   ## xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1        ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	LBB11_13
## BB#12:
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB11_15
LBB11_13:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB11_15
LBB11_14:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB11_15:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN4Tree10insertnodeER4Node
	.align	4, 0x90
__ZN4Tree10insertnodeER4Node:           ## @_ZN4Tree10insertnodeER4Node
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp36:
	.cfi_def_cfa_offset 16
Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp38:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, 12(%rsi)
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	jne	LBB12_2
## BB#1:
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movq	%rax, (%rcx)
	movl	$1, 12(%rcx)
	movq	(%rcx), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	(%rcx), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 40(%rdx)
	jmp	LBB12_20
LBB12_2:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 32(%rdx)
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 40(%rdx)
	movl	$0, -20(%rbp)
	movq	(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movl	$0, -36(%rbp)
LBB12_3:                                ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	cmpl	12(%rcx), %eax
	jge	LBB12_19
## BB#4:                                ##   in Loop: Header=BB12_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movss	4(%rcx,%rax,4), %xmm0   ## xmm0 = mem[0],zero,zero,zero
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movss	4(%rcx,%rax,4), %xmm1   ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	LBB12_11
## BB#5:                                ##   in Loop: Header=BB12_3 Depth=1
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	cmpq	(%rcx), %rax
	je	LBB12_7
## BB#6:                                ##   in Loop: Header=BB12_3 Depth=1
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB12_10
LBB12_7:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movss	4(%rcx,%rax,4), %xmm0   ## xmm0 = mem[0],zero,zero,zero
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movss	%xmm0, 12(%rcx,%rax,4)
	cmpl	$0, -20(%rbp)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, %eax
	movq	-32(%rbp), %rcx
	movss	12(%rcx,%rax,4), %xmm0  ## xmm0 = mem[0],zero,zero,zero
	cmpl	$0, -20(%rbp)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, %eax
	movq	-16(%rbp), %rcx
	movss	%xmm0, 12(%rcx,%rax,4)
	movq	-32(%rbp), %rax
	movss	20(%rax), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	%xmm0, 20(%rax)
	movq	-32(%rbp), %rax
	movss	24(%rax), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	%xmm0, 24(%rax)
	movl	-36(%rbp), %esi
	addl	$2, %esi
	movq	-16(%rbp), %rax
	movl	%esi, (%rax)
	movl	-36(%rbp), %esi
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movl	12(%rax), %edi
	subl	$1, %edi
	cmpl	%edi, %esi
	jne	LBB12_9
## BB#8:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
LBB12_9:
	jmp	LBB12_19
LBB12_10:                               ##   in Loop: Header=BB12_3 Depth=1
	jmp	LBB12_17
LBB12_11:                               ##   in Loop: Header=BB12_3 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	cmpq	(%rcx), %rax
	je	LBB12_13
## BB#12:                               ##   in Loop: Header=BB12_3 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB12_16
LBB12_13:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movss	4(%rcx,%rax,4), %xmm0   ## xmm0 = mem[0],zero,zero,zero
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movss	%xmm0, 20(%rcx,%rax,4)
	cmpl	$0, -20(%rbp)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, %eax
	movq	-32(%rbp), %rcx
	movss	20(%rcx,%rax,4), %xmm0  ## xmm0 = mem[0],zero,zero,zero
	cmpl	$0, -20(%rbp)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, %eax
	movq	-16(%rbp), %rcx
	movss	%xmm0, 20(%rcx,%rax,4)
	movq	-32(%rbp), %rax
	movss	12(%rax), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	%xmm0, 12(%rax)
	movq	-32(%rbp), %rax
	movss	16(%rax), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	%xmm0, 16(%rax)
	movl	-36(%rbp), %esi
	addl	$2, %esi
	movq	-16(%rbp), %rax
	movl	%esi, (%rax)
	movl	-36(%rbp), %esi
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movl	12(%rax), %edi
	subl	$1, %edi
	cmpl	%edi, %esi
	jne	LBB12_15
## BB#14:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
LBB12_15:
	jmp	LBB12_19
LBB12_16:                               ##   in Loop: Header=BB12_3 Depth=1
	jmp	LBB12_17
LBB12_17:                               ##   in Loop: Header=BB12_3 Depth=1
	cmpl	$0, -20(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -20(%rbp)
## BB#18:                               ##   in Loop: Header=BB12_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB12_3
LBB12_19:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movl	8(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%rax)
LBB12_20:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN4Tree18postswapinitiationEP4Node
	.align	4, 0x90
__ZN4Tree18postswapinitiationEP4Node:   ## @_ZN4Tree18postswapinitiationEP4Node
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp39:
	.cfi_def_cfa_offset 16
Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	(%rdi), %ecx
	addl	$1, %ecx
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-24(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	cmpq	(%rsi), %rdi
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	je	LBB13_2
## BB#1:
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movss	4(%rcx,%rax,4), %xmm0   ## xmm0 = mem[0],zero,zero,zero
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movss	%xmm0, 12(%rcx,%rax,4)
	cmpl	$0, -20(%rbp)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, %eax
	movq	-16(%rbp), %rcx
	movss	12(%rcx,%rax,4), %xmm0  ## xmm0 = mem[0],zero,zero,zero
	cmpl	$0, -20(%rbp)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, %eax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movss	%xmm0, 12(%rcx,%rax,4)
	movq	-16(%rbp), %rax
	movss	20(%rax), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movss	%xmm0, 20(%rax)
	movq	-16(%rbp), %rax
	movss	24(%rax), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movss	%xmm0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	callq	__ZN4Tree18postswapinitiationEP4Node
LBB13_2:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rcx         ## 8-byte Reload
	cmpq	(%rcx), %rax
	je	LBB13_4
## BB#3:
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movss	4(%rcx,%rax,4), %xmm0   ## xmm0 = mem[0],zero,zero,zero
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movss	%xmm0, 20(%rcx,%rax,4)
	cmpl	$0, -20(%rbp)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, %eax
	movq	-16(%rbp), %rcx
	movss	20(%rcx,%rax,4), %xmm0  ## xmm0 = mem[0],zero,zero,zero
	cmpl	$0, -20(%rbp)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movss	%xmm0, 20(%rcx,%rax,4)
	movq	-16(%rbp), %rax
	movss	12(%rax), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movss	%xmm0, 12(%rax)
	movq	-16(%rbp), %rax
	movss	16(%rax), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movss	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	callq	__ZN4Tree18postswapinitiationEP4Node
LBB13_4:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN4Tree8swapnodeEP4Node
	.align	4, 0x90
__ZN4Tree8swapnodeEP4Node:              ## @_ZN4Tree8swapnodeEP4Node
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp42:
	.cfi_def_cfa_offset 16
Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	(%rdi), %ecx
	addl	$1, %ecx
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-44(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	cmpq	(%rsi), %rdi
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	je	LBB14_2
## BB#1:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	movl	-20(%rbp), %edx
	cmpl	$0, -20(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	callq	__ZN4Tree7findminEP4Nodeii
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movss	4(%rax), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-32(%rbp), %rax
	movss	8(%rax), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	callq	__ZN4Tree8swapnodeEP4Node
	jmp	LBB14_6
LBB14_2:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	cmpq	(%rcx), %rax
	je	LBB14_4
## BB#3:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-20(%rbp), %edx
	cmpl	$0, -20(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	callq	__ZN4Tree7findminEP4Nodeii
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movss	4(%rax), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-40(%rbp), %rax
	movss	8(%rax), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, 32(%rdi)
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	__ZN4Tree8swapnodeEP4Node
	jmp	LBB14_5
LBB14_4:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	8(%rax), %edx
	addl	$-1, %edx
	movl	%edx, 8(%rax)
	jmp	LBB14_6
LBB14_5:
	jmp	LBB14_6
LBB14_6:
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN4Tree10deletenodeEP4Node
	.align	4, 0x90
__ZN4Tree10deletenodeEP4Node:           ## @_ZN4Tree10deletenodeEP4Node
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp45:
	.cfi_def_cfa_offset 16
Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rax         ## 8-byte Reload
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	movq	%rax, %rsi
	callq	__ZN4Tree8swapnodeEP4Node
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	callq	__ZN4Tree18postswapinitiationEP4Node
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN4Tree11rangesearchERNSt3__14listIP4NodeNS0_9allocatorIS3_EEEES3_PfS8_
	.align	4, 0x90
__ZN4Tree11rangesearchERNSt3__14listIP4NodeNS0_9allocatorIS3_EEEES3_PfS8_: ## @_ZN4Tree11rangesearchERNSt3__14listIP4NodeNS0_9allocatorIS3_EEEES3_PfS8_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp48:
	.cfi_def_cfa_offset 16
Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movss	(%rdx), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	movss	4(%rdx), %xmm1          ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movq	%rcx, -48(%rbp)         ## 8-byte Spill
	jb	LBB16_5
## BB#1:
	movq	-24(%rbp), %rax
	movss	4(%rax), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm1           ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	LBB16_5
## BB#2:
	movq	-32(%rbp), %rax
	movss	4(%rax), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movss	8(%rax), %xmm1          ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	LBB16_5
## BB#3:
	movq	-24(%rbp), %rax
	movss	8(%rax), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movss	4(%rax), %xmm1          ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	LBB16_5
## BB#4:
	leaq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__14listIP4NodeNS_9allocatorIS2_EEE9push_backERKS2_
LBB16_5:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	cmpq	(%rcx), %rax
	je	LBB16_12
## BB#6:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movss	12(%rax), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm1           ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	LBB16_11
## BB#7:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movss	16(%rax), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movss	4(%rax), %xmm1          ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	LBB16_11
## BB#8:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movss	20(%rax), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	ucomiss	(%rax), %xmm0
	jbe	LBB16_11
## BB#9:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movss	24(%rax), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	ucomiss	4(%rax), %xmm0
	jbe	LBB16_11
## BB#10:
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	callq	__ZN4Tree11rangesearchERNSt3__14listIP4NodeNS0_9allocatorIS3_EEEES3_PfS8_
LBB16_11:
	jmp	LBB16_12
LBB16_12:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	cmpq	(%rcx), %rax
	je	LBB16_19
## BB#13:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movss	12(%rax), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm1           ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	LBB16_18
## BB#14:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movss	16(%rax), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movss	4(%rax), %xmm1          ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	LBB16_18
## BB#15:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movss	20(%rax), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	ucomiss	(%rax), %xmm0
	jbe	LBB16_18
## BB#16:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movss	24(%rax), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	ucomiss	4(%rax), %xmm0
	jbe	LBB16_18
## BB#17:
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	callq	__ZN4Tree11rangesearchERNSt3__14listIP4NodeNS0_9allocatorIS3_EEEES3_PfS8_
LBB16_18:
	jmp	LBB16_19
LBB16_19:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZNSt3__14listIP4NodeNS_9allocatorIS2_EEE9push_backERKS2_
	.weak_def_can_be_hidden	__ZNSt3__14listIP4NodeNS_9allocatorIS2_EEE9push_backERKS2_
	.align	4, 0x90
__ZNSt3__14listIP4NodeNS_9allocatorIS2_EEE9push_backERKS2_: ## @_ZNSt3__14listIP4NodeNS_9allocatorIS2_EEE9push_backERKS2_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp51:
	.cfi_def_cfa_offset 16
Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp53:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$1040, %rsp             ## imm = 0x410
Ltmp54:
	.cfi_offset %rbx, -32
Ltmp55:
	.cfi_offset %r14, -24
	movq	%rdi, -960(%rbp)
	movq	%rsi, -968(%rbp)
	movq	-960(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -952(%rbp)
	movq	-952(%rbp), %rdi
	addq	$16, %rdi
	movq	%rdi, -944(%rbp)
	movq	-944(%rbp), %rdi
	movq	%rdi, -936(%rbp)
	movq	-936(%rbp), %rdi
	movq	%rdi, -976(%rbp)
	movq	-976(%rbp), %rdi
	movq	%rdi, -920(%rbp)
	movq	$1, -928(%rbp)
	movq	-920(%rbp), %rdi
	movq	-928(%rbp), %rax
	movq	%rdi, -896(%rbp)
	movq	%rax, -904(%rbp)
	movq	$0, -912(%rbp)
	imulq	$24, -904(%rbp), %rax
	movq	%rax, -888(%rbp)
	movq	-888(%rbp), %rdi
	movq	%rsi, -1040(%rbp)       ## 8-byte Spill
	callq	__Znwm
	leaq	-1000(%rbp), %rsi
	leaq	-464(%rbp), %rdi
	leaq	-480(%rbp), %rcx
	leaq	-504(%rbp), %rdx
	leaq	-520(%rbp), %r8
	leaq	-592(%rbp), %r9
	leaq	-608(%rbp), %r10
	leaq	-1016(%rbp), %r11
	movq	-976(%rbp), %rbx
	movq	%r11, -864(%rbp)
	movq	%rbx, -872(%rbp)
	movq	$1, -880(%rbp)
	movq	-864(%rbp), %r11
	movq	-880(%rbp), %rbx
	movq	-872(%rbp), %r14
	movq	%r11, -840(%rbp)
	movq	%r14, -848(%rbp)
	movq	%rbx, -856(%rbp)
	movq	-840(%rbp), %r11
	movq	-848(%rbp), %rbx
	movq	%rbx, (%r11)
	movq	-856(%rbp), %rbx
	movq	%rbx, 8(%r11)
	movq	-1016(%rbp), %r11
	movq	-1008(%rbp), %rbx
	movq	%r11, -640(%rbp)
	movq	%rbx, -632(%rbp)
	movq	%rsi, -648(%rbp)
	movq	%rax, -656(%rbp)
	movq	-648(%rbp), %rax
	movq	-656(%rbp), %r11
	movq	-640(%rbp), %rbx
	movq	-632(%rbp), %r14
	movq	%rbx, -592(%rbp)
	movq	%r14, -584(%rbp)
	movq	%rax, -600(%rbp)
	movq	%r11, -608(%rbp)
	movq	-600(%rbp), %rax
	movq	%r10, -576(%rbp)
	movq	-576(%rbp), %r10
	movq	(%r10), %r10
	movq	%r9, -424(%rbp)
	movq	-424(%rbp), %r9
	movq	(%r9), %r11
	movq	%r11, -624(%rbp)
	movq	8(%r9), %r9
	movq	%r9, -616(%rbp)
	movq	-624(%rbp), %r9
	movq	-616(%rbp), %r11
	movq	%r9, -552(%rbp)
	movq	%r11, -544(%rbp)
	movq	%rax, -560(%rbp)
	movq	%r10, -568(%rbp)
	movq	-560(%rbp), %rax
	movq	-568(%rbp), %r9
	movq	-552(%rbp), %r10
	movq	-544(%rbp), %r11
	movq	%r10, -504(%rbp)
	movq	%r11, -496(%rbp)
	movq	%rax, -512(%rbp)
	movq	%r9, -520(%rbp)
	movq	-512(%rbp), %rax
	movq	%r8, -488(%rbp)
	movq	-488(%rbp), %r8
	movq	(%r8), %r8
	movq	%rdx, -432(%rbp)
	movq	-432(%rbp), %rdx
	movq	(%rdx), %r9
	movq	%r9, -536(%rbp)
	movq	8(%rdx), %rdx
	movq	%rdx, -528(%rbp)
	movq	-536(%rbp), %rdx
	movq	-528(%rbp), %r9
	movq	%rdx, -464(%rbp)
	movq	%r9, -456(%rbp)
	movq	%rax, -472(%rbp)
	movq	%r8, -480(%rbp)
	movq	-472(%rbp), %rax
	movq	%rcx, -448(%rbp)
	movq	-448(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	%rdi, -440(%rbp)
	movq	-440(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 16(%rax)
	movq	-976(%rbp), %rax
	movq	%rsi, -240(%rbp)
	movq	-240(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	movq	-224(%rbp), %rcx
	movq	(%rcx), %rcx
	addq	$16, %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-968(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
## BB#1:
	leaq	-1000(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-1040(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	%rax, -144(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rcx
	movq	%rcx, -120(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	-144(%rbp), %rsi
	movq	%rcx, 8(%rsi)
	movq	(%rax), %rcx
	movq	-136(%rbp), %rsi
	movq	%rcx, (%rsi)
	movq	-136(%rbp), %rcx
	movq	-136(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rcx, 8(%rsi)
	movq	-144(%rbp), %rcx
	movq	%rcx, (%rax)
## BB#2:
	leaq	-1000(%rbp), %rax
	movq	-1040(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -168(%rbp)
	movq	-168(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -160(%rbp)
	movq	-160(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	(%rcx), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rcx)
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movq	-200(%rbp), %rdx
	movq	%rdx, -192(%rbp)
	movq	-192(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -216(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-184(%rbp), %rcx
	movq	%rcx, -176(%rbp)
	movq	-176(%rbp), %rcx
	movq	$0, (%rcx)
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	$0, -392(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rcx
	movq	%rcx, -368(%rbp)
	movq	-368(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -400(%rbp)
	movq	-392(%rbp), %rcx
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rdx
	movq	%rdx, -264(%rbp)
	movq	-264(%rbp), %rdx
	movq	%rcx, (%rdx)
	cmpq	$0, -400(%rbp)
	movq	%rax, -1048(%rbp)       ## 8-byte Spill
	je	LBB17_4
## BB#3:
	movq	-1048(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rcx
	movq	%rcx, -248(%rbp)
	movq	-248(%rbp), %rcx
	addq	$8, %rcx
	movq	-400(%rbp), %rdx
	movq	%rcx, -352(%rbp)
	movq	%rdx, -360(%rbp)
	movq	-352(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-360(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -328(%rbp)
	movq	%rsi, -336(%rbp)
	movq	%rcx, -344(%rbp)
	movq	-328(%rbp), %rcx
	movq	-336(%rbp), %rdx
	movq	-344(%rbp), %rsi
	movq	%rcx, -288(%rbp)
	movq	%rdx, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	-296(%rbp), %rcx
	movq	%rcx, -280(%rbp)
	movq	-280(%rbp), %rdi
	callq	__ZdlPv
LBB17_4:                                ## %_ZNSt3__110unique_ptrINS_11__list_nodeIP4NodePvEENS_22__allocator_destructorINS_9allocatorIS5_EEEEED1Ev.exit2
	addq	$1040, %rsp             ## imm = 0x410
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4Tree21nearestneighborsearchEP4NodeS1_RfRS1_
	.align	4, 0x90
__ZN4Tree21nearestneighborsearchEP4NodeS1_RfRS1_: ## @_ZN4Tree21nearestneighborsearchEP4NodeS1_RfRS1_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp56:
	.cfi_def_cfa_offset 16
Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rcx, -48(%rbp)         ## 8-byte Spill
	callq	__ZN4Node12nodedistanceEPS_
	movq	-32(%rbp), %rcx
	movss	(%rcx), %xmm1           ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	LBB18_3
## BB#1:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	__ZN4Node12nodedistanceEPS_
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	LBB18_2
	jp	LBB18_2
	jmp	LBB18_3
LBB18_2:
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	__ZN4Node12nodedistanceEPS_
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
LBB18_3:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	addq	$12, %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	addq	$20, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	__ZN4Node17rectangledistanceEPfS0_
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm1           ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	LBB18_6
## BB#4:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	cmpq	(%rcx), %rax
	je	LBB18_6
## BB#5:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	callq	__ZN4Tree21nearestneighborsearchEP4NodeS1_RfRS1_
LBB18_6:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	addq	$12, %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	addq	$20, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	__ZN4Node17rectangledistanceEPfS0_
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm1           ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	LBB18_9
## BB#7:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	cmpq	(%rcx), %rax
	je	LBB18_9
## BB#8:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	callq	__ZN4Tree21nearestneighborsearchEP4NodeS1_RfRS1_
LBB18_9:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN4Tree25nearestneighborsearch_posEP4NodePfRfRS1_
	.align	4, 0x90
__ZN4Tree25nearestneighborsearch_posEP4NodePfRfRS1_: ## @_ZN4Tree25nearestneighborsearch_posEP4NodePfRfRS1_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp59:
	.cfi_def_cfa_offset 16
Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rcx, -48(%rbp)         ## 8-byte Spill
	callq	__ZN4Node11posdistanceEPf
	movq	-32(%rbp), %rcx
	movss	(%rcx), %xmm1           ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	LBB19_2
## BB#1:
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	__ZN4Node11posdistanceEPf
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
LBB19_2:
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	addq	$12, %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	addq	$20, %rcx
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZN4Tree21rectangledistance_posEPfS0_S0_
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm1           ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	LBB19_5
## BB#3:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	cmpq	(%rcx), %rax
	je	LBB19_5
## BB#4:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	callq	__ZN4Tree25nearestneighborsearch_posEP4NodePfRfRS1_
LBB19_5:
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	addq	$12, %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	addq	$20, %rcx
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZN4Tree21rectangledistance_posEPfS0_S0_
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm1           ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	LBB19_8
## BB#6:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	cmpq	(%rcx), %rax
	je	LBB19_8
## BB#7:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	callq	__ZN4Tree25nearestneighborsearch_posEP4NodePfRfRS1_
LBB19_8:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.private_extern	___clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## BB#0:
	pushq	%rax
	callq	___cxa_begin_catch
	movq	%rax, (%rsp)            ## 8-byte Spill
	callq	__ZSt9terminatev


.subsections_via_symbols
