	.reference	___bb_blitz_blitz
	.reference	___bb_blitzmax_activity
	.reference	___bb_blitzmax_allocation
	.reference	___bb_blitzmax_resource
	.reference	_bbATan2
	.reference	_bbCos
	.reference	_bbGCFree
	.reference	_bbNullObject
	.reference	_bbObjectClass
	.reference	_bbObjectCompare
	.reference	_bbObjectCtor
	.reference	_bbObjectDowncast
	.reference	_bbObjectFree
	.reference	_bbObjectNew
	.reference	_bbObjectRegisterType
	.reference	_bbObjectReserved
	.reference	_bbObjectSendMessage
	.reference	_bbObjectToString
	.reference	_bbSin
	.reference	_bbSqr
	.reference	_bbStringClass
	.reference	_bbStringConcat
	.reference	_bbStringFromDouble
	.reference	_bbStringFromInt
	.reference	_bbStringSplit
	.reference	_bbStringToDouble
	.reference	_bb_TActivity
	.reference	_bb_TAllocation
	.reference	_bb_TResource
	.reference	_brl_filesystem_ReadFile
	.reference	_brl_linkedlist_ListRemove
	.reference	_brl_linkedlist_TList
	.reference	_brl_standardio_Print
	.reference	_brl_stream_CloseStream
	.reference	_brl_stream_Eof
	.reference	_brl_stream_ReadLine
	.globl	__bb_Program_Delete
	.globl	__bb_Program_DistanceBetweenPointsLatLong
	.globl	__bb_Program_LoadCSV
	.globl	__bb_Program_Main
	.globl	__bb_Program_New
	.globl	__bb_Program_ScheduleResources
	.globl	__bb_main
	.globl	_bb_Program
	.text	
__bb_main:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	cmpl	$0,_72
	je	_73
	mov	$0,%eax
	mov	%ebp,%esp
	pop	%ebp
	ret
_73:
	movl	$1,_72
	call	___bb_blitz_blitz
	call	___bb_blitzmax_activity
	call	___bb_blitzmax_resource
	call	___bb_blitzmax_allocation
	movl	$_bb_Program,(%esp)
	call	_bbObjectRegisterType
	movl	$_bb_Program,(%esp)
	call	_bbObjectNew
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*60(%eax)
	mov	$0,%eax
	jmp	_47
_47:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Program_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_Program,(%ebx)
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,8(%ebx)
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,12(%ebx)
	mov	$0,%eax
	jmp	_50
_50:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Program_Delete:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
_53:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_78
	movl	%eax,(%esp)
	call	_bbGCFree
_78:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_80
	movl	%eax,(%esp)
	call	_bbGCFree
_80:
	mov	$0,%eax
	jmp	_76
_76:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Program_DistanceBetweenPointsLatLong:
	push	%ebp
	mov	%esp,%ebp
	sub	$88,%esp
	fldl	8(%ebp)
	fldl	16(%ebp)
	fldl	24(%ebp)
	fldl	32(%ebp)
	fldl	_160
	fmulp	%st(0),%st(4)
	fxch	%st(3)
	fstpl	-40(%ebp)
	fldl	_161
	fmulp	%st(0),%st(2)
	fldl	_162
	fmulp	%st(0),%st(1)
	fstpl	-56(%ebp)
	fldl	_163
	fmulp	%st(0),%st(2)
	fsubrp	%st(0),%st(1)
	fstpl	-64(%ebp)
	fldl	-56(%ebp)
	fsubl	-40(%ebp)
	fldl	_164
	fmulp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSin
	fstpl	-32(%ebp)
	fldl	-64(%ebp)
	fldl	_165
	fmulp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSin
	fstpl	-48(%ebp)
	fldl	-32(%ebp)
	fmull	-32(%ebp)
	fstpl	-8(%ebp)
	fldl	-40(%ebp)
	fstpl	(%esp)
	call	_bbCos
	fstpl	-16(%ebp)
	fldl	-56(%ebp)
	fstpl	(%esp)
	call	_bbCos
	fldl	-16(%ebp)
	fmulp	%st(0),%st(1)
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	fmull	-48(%ebp)
	fmull	-48(%ebp)
	fldl	-8(%ebp)
	faddp	%st(0),%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	fstpl	-24(%ebp)
	fld1
	fsubl	-24(%ebp)
	fstpl	(%esp)
	call	_bbSqr
	fstpl	8(%esp)
	fldl	-24(%ebp)
	fstpl	(%esp)
	call	_bbSqr
	fstpl	(%esp)
	call	_bbATan2
	fldl	_166
	fxch	%st(1)
	fadd	%st(0),%st(0)
	fmulp	%st(0),%st(1)
	jmp	_59
_59:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Program_LoadCSV:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$8,%esp
	movl	$_7,(%esp)
	call	_brl_filesystem_ReadFile
	movl	%eax,-4(%ebp)
	jmp	_8
_10:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_ReadLine
	movl	$_11,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringSplit
	mov	%eax,%edi
	movl	20(%edi),%eax
	cmp	$4,%eax
	je	_96
	cmp	$3,%eax
	je	_97
	jmp	_95
_96:
	movl	$_bb_TActivity,(%esp)
	call	_bbObjectNew
	mov	%eax,%ebx
	movl	24(%edi),%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_102
	movl	%eax,(%esp)
	call	_bbGCFree
_102:
	movl	%esi,8(%ebx)
	movl	4+24(%edi),%eax
	movl	%eax,(%esp)
	call	_bbStringToDouble
	fstpl	16(%ebx)
	movl	8+24(%edi),%eax
	movl	%eax,(%esp)
	call	_bbStringToDouble
	fstpl	24(%ebx)
	movl	8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*68(%eax)
	jmp	_95
_97:
	movl	$_bb_TResource,(%esp)
	call	_bbObjectNew
	mov	%eax,%ebx
	movl	24(%edi),%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_108
	movl	%eax,(%esp)
	call	_bbGCFree
_108:
	movl	%esi,8(%ebx)
	movl	4+24(%edi),%eax
	movl	%eax,(%esp)
	call	_bbStringToDouble
	fstpl	16(%ebx)
	movl	8+24(%edi),%eax
	movl	%eax,(%esp)
	call	_bbStringToDouble
	fstpl	24(%ebx)
	movl	8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*68(%eax)
	jmp	_95
_95:
_8:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_Eof
	cmp	$0,%eax
	je	_10
_9:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_CloseStream
	mov	$0,%eax
	jmp	_62
_62:
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Program_ScheduleResources:
	push	%ebp
	mov	%esp,%ebp
	sub	$44,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$32,%esp
	movl	8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*124(%eax)
	movl	%eax,-32(%ebp)
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	movl	%eax,-36(%ebp)
	movl	8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*140(%eax)
	movl	%eax,-40(%ebp)
	jmp	_12
_14:
	movl	-40(%ebp),%eax
	movl	$_bb_TResource,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	movl	%eax,-16(%ebp)
	cmpl	$_bbNullObject,-16(%ebp)
	je	_12
	movl	$0,-20(%ebp)
	jmp	_120
_17:
	fldl	_174
	fstpl	-8(%ebp)
	movl	$_bbNullObject,-12(%ebp)
	movl	-32(%ebp),%esi
	mov	%esi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*140(%eax)
	mov	%eax,%edi
	jmp	_18
_20:
	mov	%edi,%eax
	movl	$_bb_TActivity,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	mov	%eax,%ebx
	cmp	$_bbNullObject,%ebx
	je	_18
	fldl	24(%ebx)
	fstpl	24(%esp)
	fldl	16(%ebx)
	fstpl	16(%esp)
	movl	-16(%ebp),%eax
	fldl	24(%eax)
	fstpl	8(%esp)
	movl	-16(%ebp),%eax
	fldl	16(%eax)
	fstpl	(%esp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	calll	*48(%eax)
	fldl	-8(%ebp)
	fxch	%st(1)
	fucom	%st(1)
	fxch	%st(1)
	fstp	%st(0)
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_182
	fstp	%st(0)
	jmp	_130
_182:
	fstpl	-8(%ebp)
	movl	%ebx,-12(%ebp)
_130:
_18:
	mov	%edi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_20
_19:
	movl	$_bb_TAllocation,(%esp)
	call	_bbObjectNew
	mov	%eax,%ebx
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_135
	movl	%eax,(%esp)
	call	_bbGCFree
_135:
	movl	%esi,12(%ebx)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_139
	movl	%eax,(%esp)
	call	_bbGCFree
_139:
	movl	%esi,8(%ebx)
	fldl	-8(%ebp)
	fstpl	16(%ebx)
	movl	-36(%ebp),%eax
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*68(%eax)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_linkedlist_ListRemove
_15:
	addl	$1,-20(%ebp)
_120:
	cmpl	$50,-20(%ebp)
	jl	_17
_16:
_12:
	movl	-40(%ebp),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_14
_13:
	fldz
	fstpl	-28(%ebp)
	movl	-36(%ebp),%ebx
	mov	%ebx,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*140(%eax)
	mov	%eax,%esi
	jmp	_21
_23:
	mov	%esi,%eax
	movl	$_bb_TAllocation,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	cmp	$_bbNullObject,%eax
	je	_21
	fldl	-28(%ebp)
	faddl	16(%eax)
	fstpl	-28(%ebp)
_21:
	mov	%esi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_23
_22:
	fldl	-28(%ebp)
	jmp	_65
_65:
	add	$32,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Program_Main:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	8(%ebp),%edi
	mov	%edi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	mov	$0,%esi
	jmp	_150
_26:
	mov	%edi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	fstpl	(%esp)
	call	_bbStringFromDouble
	mov	%eax,%ebx
	movl	$_27,4(%esp)
	movl	%esi,(%esp)
	call	_bbStringFromInt
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_brl_standardio_Print
_24:
	add	$1,%esi
_150:
	cmp	$100,%esi
	jl	_26
_25:
	mov	$0,%eax
	jmp	_68
_68:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_72:
	.long	0
_29:
	.asciz	"Program"
_30:
	.asciz	"earthRadius"
_31:
	.asciz	"d"
	.align	4
_32:
	.long	_bbStringClass
	.long	2147483646
	.long	18
	.short	54,51,54,55,52,53,48,46,48,48,48,48,48,48,48,48
	.short	48,48
_33:
	.asciz	"convert2Rad"
	.align	4
_34:
	.long	_bbStringClass
	.long	2147483646
	.long	20
	.short	48,46,48,49,55,52,53,51,50,57,50,53,49,57,57,52
	.short	51,50,57,53
_35:
	.asciz	"la"
_36:
	.asciz	":TList"
_37:
	.asciz	"lr"
_38:
	.asciz	"New"
_39:
	.asciz	"()i"
_40:
	.asciz	"Delete"
_41:
	.asciz	"DistanceBetweenPointsLatLong"
_42:
	.asciz	"(d,d,d,d)d"
_43:
	.asciz	"LoadCSV"
_44:
	.asciz	"ScheduleResources"
_45:
	.asciz	"()d"
_46:
	.asciz	"Main"
	.align	4
_28:
	.long	2
	.long	_29
	.long	1
	.long	_30
	.long	_31
	.long	_32
	.long	1
	.long	_33
	.long	_31
	.long	_34
	.long	3
	.long	_35
	.long	_36
	.long	8
	.long	3
	.long	_37
	.long	_36
	.long	12
	.long	6
	.long	_38
	.long	_39
	.long	16
	.long	6
	.long	_40
	.long	_39
	.long	20
	.long	7
	.long	_41
	.long	_42
	.long	48
	.long	6
	.long	_43
	.long	_39
	.long	52
	.long	6
	.long	_44
	.long	_45
	.long	56
	.long	6
	.long	_46
	.long	_39
	.long	60
	.long	0
	.align	4
_bb_Program:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_28
	.long	16
	.long	__bb_Program_New
	.long	__bb_Program_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Program_DistanceBetweenPointsLatLong
	.long	__bb_Program_LoadCSV
	.long	__bb_Program_ScheduleResources
	.long	__bb_Program_Main
	.align	8
_160:
	.long	0xa2529d39,0x3f91df46
	.align	8
_161:
	.long	0xa2529d39,0x3f91df46
	.align	8
_162:
	.long	0xa2529d39,0x3f91df46
	.align	8
_163:
	.long	0xa2529d39,0x3f91df46
	.align	8
_164:
	.long	0x0,0x3fe00000
	.align	8
_165:
	.long	0x0,0x3fe00000
	.align	8
_166:
	.long	0x80000000,0x41584a36
	.align	4
_7:
	.long	_bbStringClass
	.long	2147483647
	.long	72
	.short	47,85,115,101,114,115,47,100,97,114,121,108,47,68,101,118
	.short	101,108,111,112,109,101,110,116,47,80,114,111,106,101,99,116
	.short	115,47,70,117,110,99,116,105,111,110,97,108,67,111,109,112
	.short	97,114,105,115,111,110,47,68,97,116,97,47,68,97,116,97
	.short	83,80,73,70,46,99,115,118
	.align	4
_11:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	44
	.align	8
_174:
	.long	0x85ebc8a0,0x7fe1ccf3
	.align	4
_27:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	58,32
