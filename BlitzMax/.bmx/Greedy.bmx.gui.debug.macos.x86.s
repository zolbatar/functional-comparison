	.reference	___bb_blitz_blitz
	.reference	___bb_blitzmax_activity
	.reference	___bb_blitzmax_allocation
	.reference	___bb_blitzmax_resource
	.reference	_bbATan2
	.reference	_bbCos
	.reference	_bbEmptyArray
	.reference	_bbEmptyString
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
	.reference	_bbOnDebugEnterScope
	.reference	_bbOnDebugEnterStm
	.reference	_bbOnDebugLeaveScope
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
	.reference	_brl_blitz_ArrayBoundsError
	.reference	_brl_blitz_NullObjectError
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
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	cmpl	$0,_80
	je	_81
	mov	$0,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_81:
	movl	$1,_80
	movl	$_bbNullObject,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_76,(%esp)
	calll	*_bbOnDebugEnterScope
	call	___bb_blitz_blitz
	call	___bb_blitzmax_activity
	call	___bb_blitzmax_resource
	call	___bb_blitzmax_allocation
	movl	$_bb_Program,(%esp)
	call	_bbObjectRegisterType
	movl	$_70,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Program,(%esp)
	call	_bbObjectNew
	movl	%eax,-4(%ebp)
	movl	$_73,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_75
	call	_brl_blitz_NullObjectError
_75:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*60(%eax)
	mov	$0,%ebx
	jmp	_47
_47:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Program_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_85,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_Program,(%eax)
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	-4(%ebp),%edx
	movl	%eax,12(%edx)
	movl	%ebp,4(%esp)
	movl	$_84,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_50
_50:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
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
	jnz	_89
	movl	%eax,(%esp)
	call	_bbGCFree
_89:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_91
	movl	%eax,(%esp)
	call	_bbGCFree
_91:
	mov	$0,%eax
	jmp	_87
_87:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Program_DistanceBetweenPointsLatLong:
	push	%ebp
	mov	%esp,%ebp
	sub	$152,%esp
	fldl	8(%ebp)
	fstpl	-8(%ebp)
	fldl	16(%ebp)
	fstpl	-16(%ebp)
	fldl	24(%ebp)
	fstpl	-24(%ebp)
	fldl	32(%ebp)
	fstpl	-32(%ebp)
	fldz
	fstpl	-40(%ebp)
	fldz
	fstpl	-48(%ebp)
	fldz
	fstpl	-56(%ebp)
	fldz
	fstpl	-64(%ebp)
	fldz
	fstpl	-72(%ebp)
	fldz
	fstpl	-80(%ebp)
	fldz
	fstpl	-88(%ebp)
	fldz
	fstpl	-96(%ebp)
	fldz
	fstpl	-104(%ebp)
	fldz
	fstpl	-112(%ebp)
	movl	%ebp,4(%esp)
	movl	$_113,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_92,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-8(%ebp)
	fldl	_345
	fmulp	%st(0),%st(1)
	fstpl	-40(%ebp)
	movl	$_94,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-16(%ebp)
	fldl	_346
	fmulp	%st(0),%st(1)
	fstpl	-48(%ebp)
	movl	$_96,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-24(%ebp)
	fldl	_347
	fmulp	%st(0),%st(1)
	fstpl	-56(%ebp)
	movl	$_98,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-32(%ebp)
	fldl	_348
	fmulp	%st(0),%st(1)
	fstpl	-64(%ebp)
	movl	$_100,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-64(%ebp)
	fsubl	-48(%ebp)
	fstpl	-72(%ebp)
	movl	$_102,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-56(%ebp)
	fsubl	-40(%ebp)
	fstpl	-80(%ebp)
	movl	$_104,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-80(%ebp)
	fldl	_349
	fmulp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSin
	fstpl	-88(%ebp)
	movl	$_106,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-72(%ebp)
	fldl	_350
	fmulp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSin
	fstpl	-96(%ebp)
	movl	$_108,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-88(%ebp)
	fmull	-88(%ebp)
	fstpl	-128(%ebp)
	fldl	-40(%ebp)
	fstpl	(%esp)
	call	_bbCos
	fstpl	-120(%ebp)
	fldl	-56(%ebp)
	fstpl	(%esp)
	call	_bbCos
	fldl	-120(%ebp)
	fmulp	%st(0),%st(1)
	fstpl	-120(%ebp)
	fldl	-120(%ebp)
	fmull	-96(%ebp)
	fmull	-96(%ebp)
	fldl	-128(%ebp)
	faddp	%st(0),%st(1)
	fstpl	-128(%ebp)
	fldl	-128(%ebp)
	fstpl	-104(%ebp)
	movl	$_110,(%esp)
	calll	*_bbOnDebugEnterStm
	fld1
	fsubl	-104(%ebp)
	fstpl	(%esp)
	call	_bbSqr
	fstpl	8(%esp)
	fldl	-104(%ebp)
	fstpl	(%esp)
	call	_bbSqr
	fstpl	(%esp)
	call	_bbATan2
	fstpl	-112(%ebp)
	movl	$_112,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	_351
	fldl	-112(%ebp)
	faddl	-112(%ebp)
	fmulp	%st(0),%st(1)
	fstpl	-136(%ebp)
	jmp	_59
_59:
	calll	*_bbOnDebugLeaveScope
	fldl	-136(%ebp)
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Program_LoadCSV:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	push	%ebx
	push	%esi
	sub	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$_bbNullObject,-8(%ebp)
	movl	$_bbEmptyString,-12(%ebp)
	movl	$_bbEmptyArray,-16(%ebp)
	movl	$_bbNullObject,-20(%ebp)
	movl	$_bbNullObject,-24(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_209,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_128,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_7,(%esp)
	call	_brl_filesystem_ReadFile
	movl	%eax,-8(%ebp)
	movl	$_130,(%esp)
	calll	*_bbOnDebugEnterStm
	jmp	_8
_10:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_203,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_131,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_ReadLine
	movl	%eax,-12(%ebp)
	movl	$_133,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_11,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringSplit
	movl	%eax,-16(%ebp)
	movl	$_135,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	cmp	$4,%eax
	je	_138
	cmp	$3,%eax
	je	_139
	jmp	_137
_138:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_169,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_140,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_TActivity,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_142,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_144
	call	_brl_blitz_NullObjectError
_144:
	mov	%ebx,%esi
	mov	$0,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_147
	call	_brl_blitz_ArrayBoundsError
_147:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%esi),%eax
	decl	4(%eax)
	jnz	_151
	movl	%eax,(%esp)
	call	_bbGCFree
_151:
	movl	%ebx,8(%esi)
	movl	$_152,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_154
	call	_brl_blitz_NullObjectError
_154:
	mov	%ebx,%esi
	mov	$1,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_157
	call	_brl_blitz_ArrayBoundsError
_157:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_bbStringToDouble
	fstpl	16(%esi)
	movl	$_158,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_160
	call	_brl_blitz_NullObjectError
_160:
	mov	%ebx,%esi
	mov	$2,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_163
	call	_brl_blitz_ArrayBoundsError
_163:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_bbStringToDouble
	fstpl	24(%esi)
	movl	$_164,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_166
	call	_brl_blitz_NullObjectError
_166:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_168
	call	_brl_blitz_NullObjectError
_168:
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_137
_139:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_200,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_171,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_TResource,(%esp)
	call	_bbObjectNew
	movl	%eax,-24(%ebp)
	movl	$_173,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_175
	call	_brl_blitz_NullObjectError
_175:
	mov	%ebx,%esi
	mov	$0,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_178
	call	_brl_blitz_ArrayBoundsError
_178:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%esi),%eax
	decl	4(%eax)
	jnz	_182
	movl	%eax,(%esp)
	call	_bbGCFree
_182:
	movl	%ebx,8(%esi)
	movl	$_183,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_185
	call	_brl_blitz_NullObjectError
_185:
	mov	%ebx,%esi
	mov	$1,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_188
	call	_brl_blitz_ArrayBoundsError
_188:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_bbStringToDouble
	fstpl	16(%esi)
	movl	$_189,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_191
	call	_brl_blitz_NullObjectError
_191:
	mov	%ebx,%esi
	mov	$2,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_194
	call	_brl_blitz_ArrayBoundsError
_194:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_bbStringToDouble
	fstpl	24(%esi)
	movl	$_195,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_197
	call	_brl_blitz_NullObjectError
_197:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_199
	call	_brl_blitz_NullObjectError
_199:
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_137
_137:
	calll	*_bbOnDebugLeaveScope
_8:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_Eof
	cmp	$0,%eax
	je	_10
_9:
	movl	$_208,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_CloseStream
	mov	$0,%ebx
	jmp	_62
_62:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Program_ScheduleResources:
	push	%ebp
	mov	%esp,%ebp
	sub	$88,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$36,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$_bbNullObject,-8(%ebp)
	movl	$_bbNullObject,-12(%ebp)
	movl	$_bbNullObject,-24(%ebp)
	movl	$0,-28(%ebp)
	fldz
	fstpl	-36(%ebp)
	movl	$_bbNullObject,-40(%ebp)
	movl	$_bbNullObject,-48(%ebp)
	fldz
	fstpl	-56(%ebp)
	movl	$_bbNullObject,-44(%ebp)
	fldz
	fstpl	-20(%ebp)
	movl	$_bbNullObject,-60(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_320,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_212,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_214
	call	_brl_blitz_NullObjectError
_214:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_216
	call	_brl_blitz_NullObjectError
_216:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*124(%eax)
	movl	%eax,-8(%ebp)
	movl	$_218,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	movl	%eax,-12(%ebp)
	movl	$_220,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-24(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_223
	call	_brl_blitz_NullObjectError
_223:
	movl	12(%ebx),%eax
	movl	%eax,-88(%ebp)
	movl	-88(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_226
	call	_brl_blitz_NullObjectError
_226:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	movl	%eax,-84(%ebp)
	jmp	_12
_14:
	movl	-84(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_231
	call	_brl_blitz_NullObjectError
_231:
	movl	$_bb_TResource,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	movl	%eax,-24(%ebp)
	cmpl	$_bbNullObject,-24(%ebp)
	je	_12
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_302,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_232,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-28(%ebp)
	movl	$0,-28(%ebp)
	jmp	_234
_17:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_296,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_235,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	_375
	fstpl	-36(%ebp)
	movl	$_237,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-40(%ebp)
	movl	$_239,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-48(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	-72(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_243
	call	_brl_blitz_NullObjectError
_243:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	movl	%eax,-68(%ebp)
	jmp	_18
_20:
	movl	-68(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_248
	call	_brl_blitz_NullObjectError
_248:
	movl	$_bb_TActivity,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	movl	%eax,-48(%ebp)
	cmpl	$_bbNullObject,-48(%ebp)
	je	_18
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_264,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_249,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%eax
	movl	%eax,-64(%ebp)
	cmpl	$_bbNullObject,-64(%ebp)
	jne	_251
	call	_brl_blitz_NullObjectError
_251:
	movl	-24(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_253
	call	_brl_blitz_NullObjectError
_253:
	movl	-48(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_255
	call	_brl_blitz_NullObjectError
_255:
	movl	-48(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_257
	call	_brl_blitz_NullObjectError
_257:
	fldl	24(%ebx)
	fstpl	24(%esp)
	fldl	16(%esi)
	fstpl	16(%esp)
	fldl	24(%edi)
	fstpl	8(%esp)
	movl	-64(%ebp),%eax
	fldl	16(%eax)
	fstpl	(%esp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	calll	*48(%eax)
	fstpl	-56(%ebp)
	movl	$_259,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-56(%ebp)
	fldl	-36(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_260
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_263,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_261,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-56(%ebp)
	fstpl	-36(%ebp)
	movl	$_262,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-48(%ebp),%eax
	movl	%eax,-40(%ebp)
	calll	*_bbOnDebugLeaveScope
_260:
	calll	*_bbOnDebugLeaveScope
_18:
	movl	-68(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_246
	call	_brl_blitz_NullObjectError
_246:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_20
_19:
	movl	$_266,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_TAllocation,(%esp)
	call	_bbObjectNew
	movl	%eax,-44(%ebp)
	movl	$_268,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-44(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_270
	call	_brl_blitz_NullObjectError
_270:
	mov	%ebx,%esi
	movl	-40(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_273
	call	_brl_blitz_NullObjectError
_273:
	movl	8(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	12(%esi),%eax
	decl	4(%eax)
	jnz	_277
	movl	%eax,(%esp)
	call	_bbGCFree
_277:
	movl	%ebx,12(%esi)
	movl	$_278,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-44(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_280
	call	_brl_blitz_NullObjectError
_280:
	mov	%ebx,%esi
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_283
	call	_brl_blitz_NullObjectError
_283:
	movl	8(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%esi),%eax
	decl	4(%eax)
	jnz	_287
	movl	%eax,(%esp)
	call	_bbGCFree
_287:
	movl	%ebx,8(%esi)
	movl	$_288,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-44(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_290
	call	_brl_blitz_NullObjectError
_290:
	fldl	-36(%ebp)
	fstpl	16(%ebx)
	movl	$_292,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_294
	call	_brl_blitz_NullObjectError
_294:
	movl	-44(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	$_295,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-40(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_linkedlist_ListRemove
	calll	*_bbOnDebugLeaveScope
_15:
	addl	$1,-28(%ebp)
_234:
	cmpl	$50,-28(%ebp)
	jl	_17
_16:
	calll	*_bbOnDebugLeaveScope
_12:
	movl	-84(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_229
	call	_brl_blitz_NullObjectError
_229:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_14
_13:
	movl	$_303,(%esp)
	calll	*_bbOnDebugEnterStm
	fldz
	fstpl	-20(%ebp)
	movl	$_305,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-60(%ebp)
	movl	-12(%ebp),%edi
	mov	%edi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_309
	call	_brl_blitz_NullObjectError
_309:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	mov	%eax,%esi
	jmp	_21
_23:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_314
	call	_brl_blitz_NullObjectError
_314:
	movl	$_bb_TAllocation,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	movl	%eax,-60(%ebp)
	cmpl	$_bbNullObject,-60(%ebp)
	je	_21
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_318,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_315,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-60(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_317
	call	_brl_blitz_NullObjectError
_317:
	fldl	-20(%ebp)
	faddl	16(%ebx)
	fstpl	-20(%ebp)
	calll	*_bbOnDebugLeaveScope
_21:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_312
	call	_brl_blitz_NullObjectError
_312:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_23
_22:
	movl	$_319,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-20(%ebp)
	fstpl	-80(%ebp)
	jmp	_65
_65:
	calll	*_bbOnDebugLeaveScope
	fldl	-80(%ebp)
	add	$36,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Program_Main:
	push	%ebp
	mov	%esp,%ebp
	sub	$16,%esp
	push	%ebx
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	fldz
	fstpl	-16(%ebp)
	movl	%ebp,4(%esp)
	movl	$_336,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_324,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_326
	call	_brl_blitz_NullObjectError
_326:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_327,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-8(%ebp)
	movl	$0,-8(%ebp)
	jmp	_329
_26:
	movl	%ebp,4(%esp)
	movl	$_335,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_330,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_332
	call	_brl_blitz_NullObjectError
_332:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	fstpl	-16(%ebp)
	movl	$_334,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-16(%ebp)
	fstpl	(%esp)
	call	_bbStringFromDouble
	mov	%eax,%ebx
	movl	$_27,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringFromInt
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_brl_standardio_Print
	calll	*_bbOnDebugLeaveScope
_24:
	addl	$1,-8(%ebp)
_329:
	cmpl	$100,-8(%ebp)
	jl	_26
_25:
	mov	$0,%ebx
	jmp	_68
_68:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_80:
	.long	0
_77:
	.asciz	"Greedy"
_78:
	.asciz	"p"
_79:
	.asciz	":Program"
	.align	4
_76:
	.long	1
	.long	_77
	.long	2
	.long	_78
	.long	_79
	.long	-4
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
_71:
	.asciz	"/Users/daryl/Development/Projects/FunctionalComparison/BlitzMax/Greedy.bmx"
	.align	4
_70:
	.long	_71
	.long	7
	.long	1
	.align	4
_73:
	.long	_71
	.long	8
	.long	1
_86:
	.asciz	"Self"
	.align	4
_85:
	.long	1
	.long	_38
	.long	2
	.long	_86
	.long	_79
	.long	-4
	.long	0
	.align	4
_84:
	.long	3
	.long	0
	.long	0
_114:
	.asciz	"lat1"
_115:
	.asciz	"lon1"
_116:
	.asciz	"lat2"
_117:
	.asciz	"lon2"
_118:
	.asciz	"dStartLatInRad"
_119:
	.asciz	"dStartLongInRad"
_120:
	.asciz	"dEndLatInRad"
_121:
	.asciz	"dEndLongInRad"
_122:
	.asciz	"dLongitude"
_123:
	.asciz	"dLatitude"
_124:
	.asciz	"dSinHalfLatitude"
_125:
	.asciz	"dSinHalfLongitude"
_126:
	.asciz	"a"
_127:
	.asciz	"c"
	.align	4
_113:
	.long	1
	.long	_41
	.long	2
	.long	_114
	.long	_31
	.long	-8
	.long	2
	.long	_115
	.long	_31
	.long	-16
	.long	2
	.long	_116
	.long	_31
	.long	-24
	.long	2
	.long	_117
	.long	_31
	.long	-32
	.long	2
	.long	_118
	.long	_31
	.long	-40
	.long	2
	.long	_119
	.long	_31
	.long	-48
	.long	2
	.long	_120
	.long	_31
	.long	-56
	.long	2
	.long	_121
	.long	_31
	.long	-64
	.long	2
	.long	_122
	.long	_31
	.long	-72
	.long	2
	.long	_123
	.long	_31
	.long	-80
	.long	2
	.long	_124
	.long	_31
	.long	-88
	.long	2
	.long	_125
	.long	_31
	.long	-96
	.long	2
	.long	_126
	.long	_31
	.long	-104
	.long	2
	.long	_127
	.long	_31
	.long	-112
	.long	0
	.align	4
_92:
	.long	_71
	.long	17
	.long	3
	.align	8
_345:
	.long	0xa2529d39,0x3f91df46
	.align	4
_94:
	.long	_71
	.long	18
	.long	3
	.align	8
_346:
	.long	0xa2529d39,0x3f91df46
	.align	4
_96:
	.long	_71
	.long	19
	.long	3
	.align	8
_347:
	.long	0xa2529d39,0x3f91df46
	.align	4
_98:
	.long	_71
	.long	20
	.long	3
	.align	8
_348:
	.long	0xa2529d39,0x3f91df46
	.align	4
_100:
	.long	_71
	.long	21
	.long	3
	.align	4
_102:
	.long	_71
	.long	22
	.long	3
	.align	4
_104:
	.long	_71
	.long	23
	.long	3
	.align	8
_349:
	.long	0x0,0x3fe00000
	.align	4
_106:
	.long	_71
	.long	24
	.long	3
	.align	8
_350:
	.long	0x0,0x3fe00000
	.align	4
_108:
	.long	_71
	.long	25
	.long	3
	.align	4
_110:
	.long	_71
	.long	26
	.long	3
	.align	4
_112:
	.long	_71
	.long	27
	.long	3
	.align	8
_351:
	.long	0x80000000,0x41584a36
_210:
	.asciz	"in"
_211:
	.asciz	":TStream"
	.align	4
_209:
	.long	1
	.long	_43
	.long	2
	.long	_86
	.long	_79
	.long	-4
	.long	2
	.long	_210
	.long	_211
	.long	-8
	.long	0
	.align	4
_128:
	.long	_71
	.long	31
	.long	3
	.align	4
_7:
	.long	_bbStringClass
	.long	2147483647
	.long	58
	.short	67,58,92,68,97,116,97,92,68,101,118,101,108,111,112,109
	.short	101,110,116,92,70,117,110,99,116,105,111,110,97,108,67,111
	.short	109,112,97,114,105,115,111,110,92,68,97,116,97,92,68,97
	.short	116,97,83,80,73,70,46,99,115,118
	.align	4
_130:
	.long	_71
	.long	32
	.long	3
_204:
	.asciz	"l"
_205:
	.asciz	"$"
_206:
	.asciz	"s"
_207:
	.asciz	"[]$"
	.align	4
_203:
	.long	3
	.long	0
	.long	2
	.long	_204
	.long	_205
	.long	-12
	.long	2
	.long	_206
	.long	_207
	.long	-16
	.long	0
	.align	4
_131:
	.long	_71
	.long	33
	.long	10
	.align	4
_133:
	.long	_71
	.long	34
	.long	4
	.align	4
_11:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	44
	.align	4
_135:
	.long	_71
	.long	35
	.long	4
_170:
	.asciz	":TActivity"
	.align	4
_169:
	.long	3
	.long	0
	.long	2
	.long	_126
	.long	_170
	.long	-20
	.long	0
	.align	4
_140:
	.long	_71
	.long	37
	.long	6
	.align	4
_142:
	.long	_71
	.long	38
	.long	6
	.align	4
_152:
	.long	_71
	.long	39
	.long	6
	.align	4
_158:
	.long	_71
	.long	40
	.long	6
	.align	4
_164:
	.long	_71
	.long	41
	.long	6
_201:
	.asciz	"r"
_202:
	.asciz	":TResource"
	.align	4
_200:
	.long	3
	.long	0
	.long	2
	.long	_201
	.long	_202
	.long	-24
	.long	0
	.align	4
_171:
	.long	_71
	.long	43
	.long	6
	.align	4
_173:
	.long	_71
	.long	44
	.long	6
	.align	4
_183:
	.long	_71
	.long	45
	.long	6
	.align	4
_189:
	.long	_71
	.long	46
	.long	6
	.align	4
_195:
	.long	_71
	.long	47
	.long	6
	.align	4
_208:
	.long	_71
	.long	50
	.long	3
_321:
	.asciz	"lla"
_322:
	.asciz	"lal"
_323:
	.asciz	"res"
	.align	4
_320:
	.long	1
	.long	_44
	.long	2
	.long	_86
	.long	_79
	.long	-4
	.long	2
	.long	_321
	.long	_36
	.long	-8
	.long	2
	.long	_322
	.long	_36
	.long	-12
	.long	2
	.long	_323
	.long	_31
	.long	-20
	.long	0
	.align	4
_212:
	.long	_71
	.long	54
	.long	3
	.align	4
_218:
	.long	_71
	.long	55
	.long	3
	.align	4
_220:
	.long	_71
	.long	56
	.long	3
	.align	4
_302:
	.long	3
	.long	0
	.long	2
	.long	_201
	.long	_202
	.long	-24
	.long	0
	.align	4
_232:
	.long	_71
	.long	57
	.long	4
_297:
	.asciz	"i"
_298:
	.asciz	"lowest"
_299:
	.asciz	"lowest_item"
_300:
	.asciz	"al"
_301:
	.asciz	":TAllocation"
	.align	4
_296:
	.long	3
	.long	0
	.long	2
	.long	_297
	.long	_297
	.long	-28
	.long	2
	.long	_298
	.long	_31
	.long	-36
	.long	2
	.long	_299
	.long	_170
	.long	-40
	.long	2
	.long	_300
	.long	_301
	.long	-44
	.long	0
	.align	4
_235:
	.long	_71
	.long	58
	.long	5
	.align	8
_375:
	.long	0x85ebc8a0,0x7fe1ccf3
	.align	4
_237:
	.long	_71
	.long	59
	.long	5
	.align	4
_239:
	.long	_71
	.long	60
	.long	5
_265:
	.asciz	"dist"
	.align	4
_264:
	.long	3
	.long	0
	.long	2
	.long	_126
	.long	_170
	.long	-48
	.long	2
	.long	_265
	.long	_31
	.long	-56
	.long	0
	.align	4
_249:
	.long	_71
	.long	61
	.long	6
	.align	4
_259:
	.long	_71
	.long	62
	.long	6
	.align	4
_263:
	.long	3
	.long	0
	.long	0
	.align	4
_261:
	.long	_71
	.long	63
	.long	7
	.align	4
_262:
	.long	_71
	.long	64
	.long	7
	.align	4
_266:
	.long	_71
	.long	67
	.long	5
	.align	4
_268:
	.long	_71
	.long	68
	.long	5
	.align	4
_278:
	.long	_71
	.long	69
	.long	5
	.align	4
_288:
	.long	_71
	.long	70
	.long	5
	.align	4
_292:
	.long	_71
	.long	71
	.long	5
	.align	4
_295:
	.long	_71
	.long	72
	.long	5
	.align	4
_303:
	.long	_71
	.long	75
	.long	3
	.align	4
_305:
	.long	_71
	.long	76
	.long	3
	.align	4
_318:
	.long	3
	.long	0
	.long	2
	.long	_126
	.long	_301
	.long	-60
	.long	0
	.align	4
_315:
	.long	_71
	.long	77
	.long	4
	.align	4
_319:
	.long	_71
	.long	79
	.long	3
	.align	4
_336:
	.long	1
	.long	_46
	.long	2
	.long	_86
	.long	_79
	.long	-4
	.long	0
	.align	4
_324:
	.long	_71
	.long	83
	.long	3
	.align	4
_327:
	.long	_71
	.long	84
	.long	3
	.align	4
_335:
	.long	3
	.long	0
	.long	2
	.long	_297
	.long	_297
	.long	-8
	.long	2
	.long	_201
	.long	_31
	.long	-16
	.long	0
	.align	4
_330:
	.long	_71
	.long	85
	.long	4
	.align	4
_334:
	.long	_71
	.long	86
	.long	4
	.align	4
_27:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	58,32
