	.reference	___bb_appstub_appstub
	.reference	___bb_audio_audio
	.reference	___bb_bank_bank
	.reference	___bb_bankstream_bankstream
	.reference	___bb_basic_basic
	.reference	___bb_blitz_blitz
	.reference	___bb_bmploader_bmploader
	.reference	___bb_d3d7max2d_d3d7max2d
	.reference	___bb_d3d9max2d_d3d9max2d
	.reference	___bb_data_data
	.reference	___bb_directsoundaudio_directsoundaudio
	.reference	___bb_dxgraphics_dxgraphics
	.reference	___bb_event_event
	.reference	___bb_eventqueue_eventqueue
	.reference	___bb_font_font
	.reference	___bb_freeaudioaudio_freeaudioaudio
	.reference	___bb_freejoy_freejoy
	.reference	___bb_freeprocess_freeprocess
	.reference	___bb_freetypefont_freetypefont
	.reference	___bb_glew_glew
	.reference	___bb_glgraphics_glgraphics
	.reference	___bb_glmax2d_glmax2d
	.reference	___bb_gnet_gnet
	.reference	___bb_jpgloader_jpgloader
	.reference	___bb_macos_macos
	.reference	___bb_map_map
	.reference	___bb_maxlua_maxlua
	.reference	___bb_maxutil_maxutil
	.reference	___bb_oggloader_oggloader
	.reference	___bb_openalaudio_openalaudio
	.reference	___bb_pngloader_pngloader
	.reference	___bb_retro_retro
	.reference	___bb_tgaloader_tgaloader
	.reference	___bb_threads_threads
	.reference	___bb_timer_timer
	.reference	___bb_wavloader_wavloader
	.reference	___bb_win32_win32
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
	.globl	__bb_TActivity_Delete
	.globl	__bb_TActivity_New
	.globl	__bb_TAllocation_Delete
	.globl	__bb_TAllocation_New
	.globl	__bb_TResource_Delete
	.globl	__bb_TResource_New
	.globl	__bb_main
	.globl	_bb_Program
	.globl	_bb_TActivity
	.globl	_bb_TAllocation
	.globl	_bb_TResource
	.text	
__bb_main:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	cmpl	$0,_111
	je	_112
	mov	$0,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_112:
	movl	$1,_111
	movl	$_bbNullObject,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_107,(%esp)
	calll	*_bbOnDebugEnterScope
	call	___bb_blitz_blitz
	call	___bb_appstub_appstub
	call	___bb_audio_audio
	call	___bb_bank_bank
	call	___bb_bankstream_bankstream
	call	___bb_basic_basic
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_d3d9max2d_d3d9max2d
	call	___bb_data_data
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_dxgraphics_dxgraphics
	call	___bb_event_event
	call	___bb_eventqueue_eventqueue
	call	___bb_font_font
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_glgraphics_glgraphics
	call	___bb_glmax2d_glmax2d
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_map_map
	call	___bb_maxlua_maxlua
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_openalaudio_openalaudio
	call	___bb_pngloader_pngloader
	call	___bb_retro_retro
	call	___bb_tgaloader_tgaloader
	call	___bb_threads_threads
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	call	___bb_win32_win32
	movl	$_bb_TActivity,(%esp)
	call	_bbObjectRegisterType
	movl	$_bb_TAllocation,(%esp)
	call	_bbObjectRegisterType
	movl	$_bb_TResource,(%esp)
	call	_bbObjectRegisterType
	movl	$_bb_Program,(%esp)
	call	_bbObjectRegisterType
	movl	$_101,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Program,(%esp)
	call	_bbObjectNew
	movl	%eax,-4(%ebp)
	movl	$_104,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_106
	call	_brl_blitz_NullObjectError
_106:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*60(%eax)
	mov	$0,%ebx
	jmp	_60
_60:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TActivity_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_115,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_TActivity,(%eax)
	mov	$_bbEmptyString,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	24(%eax)
	movl	%ebp,4(%esp)
	movl	$_114,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_63
_63:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TActivity_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	8(%ebp),%eax
_66:
	movl	8(%eax),%eax
	decl	4(%eax)
	jnz	_120
	movl	%eax,(%esp)
	call	_bbGCFree
_120:
	mov	$0,%eax
	jmp	_118
_118:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TAllocation_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_124,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_TAllocation,(%eax)
	mov	$_bbEmptyString,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	mov	$_bbEmptyString,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,12(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	16(%eax)
	movl	%ebp,4(%esp)
	movl	$_123,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_69
_69:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TAllocation_Delete:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
_72:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_128
	movl	%eax,(%esp)
	call	_bbGCFree
_128:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_130
	movl	%eax,(%esp)
	call	_bbGCFree
_130:
	mov	$0,%eax
	jmp	_126
_126:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TResource_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_133,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_TResource,(%eax)
	mov	$_bbEmptyString,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	24(%eax)
	movl	%ebp,4(%esp)
	movl	$_132,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_75
_75:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TResource_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	8(%ebp),%eax
_78:
	movl	8(%eax),%eax
	decl	4(%eax)
	jnz	_137
	movl	%eax,(%esp)
	call	_bbGCFree
_137:
	mov	$0,%eax
	jmp	_135
_135:
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
	movl	$_141,(%esp)
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
	movl	$_140,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_81
_81:
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
_84:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_144
	movl	%eax,(%esp)
	call	_bbGCFree
_144:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_146
	movl	%eax,(%esp)
	call	_bbGCFree
_146:
	mov	$0,%eax
	jmp	_142
_142:
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
	movl	$_168,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_147,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-8(%ebp)
	fldl	_407
	fmulp	%st(0),%st(1)
	fstpl	-40(%ebp)
	movl	$_149,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-16(%ebp)
	fldl	_408
	fmulp	%st(0),%st(1)
	fstpl	-48(%ebp)
	movl	$_151,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-24(%ebp)
	fldl	_409
	fmulp	%st(0),%st(1)
	fstpl	-56(%ebp)
	movl	$_153,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-32(%ebp)
	fldl	_410
	fmulp	%st(0),%st(1)
	fstpl	-64(%ebp)
	movl	$_155,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-64(%ebp)
	fsubl	-48(%ebp)
	fstpl	-72(%ebp)
	movl	$_157,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-56(%ebp)
	fsubl	-40(%ebp)
	fstpl	-80(%ebp)
	movl	$_159,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-80(%ebp)
	fldl	_411
	fmulp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSin
	fstpl	-88(%ebp)
	movl	$_161,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-72(%ebp)
	fldl	_412
	fmulp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSin
	fstpl	-96(%ebp)
	movl	$_163,(%esp)
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
	movl	$_165,(%esp)
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
	movl	$_167,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	_413
	fldl	-112(%ebp)
	faddl	-112(%ebp)
	fmulp	%st(0),%st(1)
	fstpl	-136(%ebp)
	jmp	_90
_90:
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
	movl	$_261,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_183,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_7,(%esp)
	call	_brl_filesystem_ReadFile
	movl	%eax,-8(%ebp)
	movl	$_185,(%esp)
	calll	*_bbOnDebugEnterStm
	jmp	_8
_10:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_256,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_186,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_ReadLine
	movl	%eax,-12(%ebp)
	movl	$_188,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_11,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringSplit
	movl	%eax,-16(%ebp)
	movl	$_190,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	cmp	$4,%eax
	je	_193
	cmp	$3,%eax
	je	_194
	jmp	_192
_193:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_224,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_195,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_TActivity,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_197,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_199
	call	_brl_blitz_NullObjectError
_199:
	mov	%ebx,%esi
	mov	$0,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_202
	call	_brl_blitz_ArrayBoundsError
_202:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%esi),%eax
	decl	4(%eax)
	jnz	_206
	movl	%eax,(%esp)
	call	_bbGCFree
_206:
	movl	%ebx,8(%esi)
	movl	$_207,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_209
	call	_brl_blitz_NullObjectError
_209:
	mov	%ebx,%esi
	mov	$1,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_212
	call	_brl_blitz_ArrayBoundsError
_212:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_bbStringToDouble
	fstpl	16(%esi)
	movl	$_213,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_215
	call	_brl_blitz_NullObjectError
_215:
	mov	%ebx,%esi
	mov	$2,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_218
	call	_brl_blitz_ArrayBoundsError
_218:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_bbStringToDouble
	fstpl	24(%esi)
	movl	$_219,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_221
	call	_brl_blitz_NullObjectError
_221:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_223
	call	_brl_blitz_NullObjectError
_223:
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_192
_194:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_254,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_225,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_TResource,(%esp)
	call	_bbObjectNew
	movl	%eax,-24(%ebp)
	movl	$_227,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_229
	call	_brl_blitz_NullObjectError
_229:
	mov	%ebx,%esi
	mov	$0,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_232
	call	_brl_blitz_ArrayBoundsError
_232:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%esi),%eax
	decl	4(%eax)
	jnz	_236
	movl	%eax,(%esp)
	call	_bbGCFree
_236:
	movl	%ebx,8(%esi)
	movl	$_237,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_239
	call	_brl_blitz_NullObjectError
_239:
	mov	%ebx,%esi
	mov	$1,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_242
	call	_brl_blitz_ArrayBoundsError
_242:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_bbStringToDouble
	fstpl	16(%esi)
	movl	$_243,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_245
	call	_brl_blitz_NullObjectError
_245:
	mov	%ebx,%esi
	mov	$2,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_248
	call	_brl_blitz_ArrayBoundsError
_248:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_bbStringToDouble
	fstpl	24(%esi)
	movl	$_249,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_251
	call	_brl_blitz_NullObjectError
_251:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_253
	call	_brl_blitz_NullObjectError
_253:
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_192
_192:
	calll	*_bbOnDebugLeaveScope
_8:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_Eof
	cmp	$0,%eax
	je	_10
_9:
	movl	$_260,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_CloseStream
	mov	$0,%ebx
	jmp	_93
_93:
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
	movl	$_370,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_264,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_266
	call	_brl_blitz_NullObjectError
_266:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_268
	call	_brl_blitz_NullObjectError
_268:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*124(%eax)
	movl	%eax,-8(%ebp)
	movl	$_270,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	movl	%eax,-12(%ebp)
	movl	$_272,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-24(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_275
	call	_brl_blitz_NullObjectError
_275:
	movl	12(%ebx),%eax
	movl	%eax,-88(%ebp)
	movl	-88(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_278
	call	_brl_blitz_NullObjectError
_278:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	movl	%eax,-84(%ebp)
	jmp	_12
_14:
	movl	-84(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_283
	call	_brl_blitz_NullObjectError
_283:
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
	movl	$_352,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_284,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-28(%ebp)
	movl	$0,-28(%ebp)
	jmp	_286
_17:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_347,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_287,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	_437
	fstpl	-36(%ebp)
	movl	$_289,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-40(%ebp)
	movl	$_291,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-48(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	-72(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_295
	call	_brl_blitz_NullObjectError
_295:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	movl	%eax,-68(%ebp)
	jmp	_18
_20:
	movl	-68(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_300
	call	_brl_blitz_NullObjectError
_300:
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
	movl	$_316,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_301,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%eax
	movl	%eax,-64(%ebp)
	cmpl	$_bbNullObject,-64(%ebp)
	jne	_303
	call	_brl_blitz_NullObjectError
_303:
	movl	-24(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_305
	call	_brl_blitz_NullObjectError
_305:
	movl	-48(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_307
	call	_brl_blitz_NullObjectError
_307:
	movl	-48(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_309
	call	_brl_blitz_NullObjectError
_309:
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
	movl	$_311,(%esp)
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
	jne	_312
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_315,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_313,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-56(%ebp)
	fstpl	-36(%ebp)
	movl	$_314,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-48(%ebp),%eax
	movl	%eax,-40(%ebp)
	calll	*_bbOnDebugLeaveScope
_312:
	calll	*_bbOnDebugLeaveScope
_18:
	movl	-68(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_298
	call	_brl_blitz_NullObjectError
_298:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_20
_19:
	movl	$_317,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_TAllocation,(%esp)
	call	_bbObjectNew
	movl	%eax,-44(%ebp)
	movl	$_319,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-44(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_321
	call	_brl_blitz_NullObjectError
_321:
	mov	%ebx,%esi
	movl	-40(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_324
	call	_brl_blitz_NullObjectError
_324:
	movl	8(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	12(%esi),%eax
	decl	4(%eax)
	jnz	_328
	movl	%eax,(%esp)
	call	_bbGCFree
_328:
	movl	%ebx,12(%esi)
	movl	$_329,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-44(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_331
	call	_brl_blitz_NullObjectError
_331:
	mov	%ebx,%esi
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_334
	call	_brl_blitz_NullObjectError
_334:
	movl	8(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%esi),%eax
	decl	4(%eax)
	jnz	_338
	movl	%eax,(%esp)
	call	_bbGCFree
_338:
	movl	%ebx,8(%esi)
	movl	$_339,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-44(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_341
	call	_brl_blitz_NullObjectError
_341:
	fldl	-36(%ebp)
	fstpl	16(%ebx)
	movl	$_343,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_345
	call	_brl_blitz_NullObjectError
_345:
	movl	-44(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	$_346,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-40(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_linkedlist_ListRemove
	calll	*_bbOnDebugLeaveScope
_15:
	addl	$1,-28(%ebp)
_286:
	cmpl	$50,-28(%ebp)
	jl	_17
_16:
	calll	*_bbOnDebugLeaveScope
_12:
	movl	-84(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_281
	call	_brl_blitz_NullObjectError
_281:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_14
_13:
	movl	$_353,(%esp)
	calll	*_bbOnDebugEnterStm
	fldz
	fstpl	-20(%ebp)
	movl	$_355,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-60(%ebp)
	movl	-12(%ebp),%edi
	mov	%edi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_359
	call	_brl_blitz_NullObjectError
_359:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	mov	%eax,%esi
	jmp	_21
_23:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_364
	call	_brl_blitz_NullObjectError
_364:
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
	movl	$_368,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_365,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-60(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_367
	call	_brl_blitz_NullObjectError
_367:
	fldl	-20(%ebp)
	faddl	16(%ebx)
	fstpl	-20(%ebp)
	calll	*_bbOnDebugLeaveScope
_21:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_362
	call	_brl_blitz_NullObjectError
_362:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_23
_22:
	movl	$_369,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-20(%ebp)
	fstpl	-80(%ebp)
	jmp	_96
_96:
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
	movl	$_386,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_374,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_376
	call	_brl_blitz_NullObjectError
_376:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_377,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-8(%ebp)
	movl	$0,-8(%ebp)
	jmp	_379
_26:
	movl	%ebp,4(%esp)
	movl	$_385,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_380,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_382
	call	_brl_blitz_NullObjectError
_382:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	fstpl	-16(%ebp)
	movl	$_384,(%esp)
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
_379:
	cmpl	$100,-8(%ebp)
	jl	_26
_25:
	mov	$0,%ebx
	jmp	_99
_99:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_111:
	.long	0
_108:
	.asciz	"Greedy"
_109:
	.asciz	"p"
_110:
	.asciz	":Program"
	.align	4
_107:
	.long	1
	.long	_108
	.long	2
	.long	_109
	.long	_110
	.long	-4
	.long	0
_29:
	.asciz	"TActivity"
_30:
	.asciz	"id"
_31:
	.asciz	"$"
_32:
	.asciz	"lat"
_33:
	.asciz	"d"
_34:
	.asciz	"lon"
_35:
	.asciz	"New"
_36:
	.asciz	"()i"
_37:
	.asciz	"Delete"
	.align	4
_28:
	.long	2
	.long	_29
	.long	3
	.long	_30
	.long	_31
	.long	8
	.long	3
	.long	_32
	.long	_33
	.long	16
	.long	3
	.long	_34
	.long	_33
	.long	24
	.long	6
	.long	_35
	.long	_36
	.long	16
	.long	6
	.long	_37
	.long	_36
	.long	20
	.long	0
	.align	4
_bb_TActivity:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_28
	.long	32
	.long	__bb_TActivity_New
	.long	__bb_TActivity_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
_39:
	.asciz	"TAllocation"
_40:
	.asciz	"rid"
_41:
	.asciz	"aid"
_42:
	.asciz	"dist"
	.align	4
_38:
	.long	2
	.long	_39
	.long	3
	.long	_40
	.long	_31
	.long	8
	.long	3
	.long	_41
	.long	_31
	.long	12
	.long	3
	.long	_42
	.long	_33
	.long	16
	.long	6
	.long	_35
	.long	_36
	.long	16
	.long	6
	.long	_37
	.long	_36
	.long	20
	.long	0
	.align	4
_bb_TAllocation:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_38
	.long	24
	.long	__bb_TAllocation_New
	.long	__bb_TAllocation_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
_44:
	.asciz	"TResource"
	.align	4
_43:
	.long	2
	.long	_44
	.long	3
	.long	_30
	.long	_31
	.long	8
	.long	3
	.long	_32
	.long	_33
	.long	16
	.long	3
	.long	_34
	.long	_33
	.long	24
	.long	6
	.long	_35
	.long	_36
	.long	16
	.long	6
	.long	_37
	.long	_36
	.long	20
	.long	0
	.align	4
_bb_TResource:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_43
	.long	32
	.long	__bb_TResource_New
	.long	__bb_TResource_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
_46:
	.asciz	"Program"
_47:
	.asciz	"earthRadius"
	.align	4
_48:
	.long	_bbStringClass
	.long	2147483646
	.long	18
	.short	54,51,54,55,52,53,48,46,48,48,48,48,48,48,48,48
	.short	48,48
_49:
	.asciz	"convert2Rad"
	.align	4
_50:
	.long	_bbStringClass
	.long	2147483646
	.long	20
	.short	48,46,48,49,55,52,53,51,50,57,50,53,49,57,57,52
	.short	51,50,57,53
_51:
	.asciz	"la"
_52:
	.asciz	":TList"
_53:
	.asciz	"lr"
_54:
	.asciz	"DistanceBetweenPointsLatLong"
_55:
	.asciz	"(d,d,d,d)d"
_56:
	.asciz	"LoadCSV"
_57:
	.asciz	"ScheduleResources"
_58:
	.asciz	"()d"
_59:
	.asciz	"Main"
	.align	4
_45:
	.long	2
	.long	_46
	.long	1
	.long	_47
	.long	_33
	.long	_48
	.long	1
	.long	_49
	.long	_33
	.long	_50
	.long	3
	.long	_51
	.long	_52
	.long	8
	.long	3
	.long	_53
	.long	_52
	.long	12
	.long	6
	.long	_35
	.long	_36
	.long	16
	.long	6
	.long	_37
	.long	_36
	.long	20
	.long	7
	.long	_54
	.long	_55
	.long	48
	.long	6
	.long	_56
	.long	_36
	.long	52
	.long	6
	.long	_57
	.long	_58
	.long	56
	.long	6
	.long	_59
	.long	_36
	.long	60
	.long	0
	.align	4
_bb_Program:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_45
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
_102:
	.asciz	"/Users/daryl/Development/Projects/FunctionalComparison/Proprietary/BlitzMax/Greedy.bmx"
	.align	4
_101:
	.long	_102
	.long	3
	.long	1
	.align	4
_104:
	.long	_102
	.long	4
	.long	1
_116:
	.asciz	"Self"
_117:
	.asciz	":TActivity"
	.align	4
_115:
	.long	1
	.long	_35
	.long	2
	.long	_116
	.long	_117
	.long	-4
	.long	0
	.align	4
_114:
	.long	3
	.long	0
	.long	0
_125:
	.asciz	":TAllocation"
	.align	4
_124:
	.long	1
	.long	_35
	.long	2
	.long	_116
	.long	_125
	.long	-4
	.long	0
	.align	4
_123:
	.long	3
	.long	0
	.long	0
_134:
	.asciz	":TResource"
	.align	4
_133:
	.long	1
	.long	_35
	.long	2
	.long	_116
	.long	_134
	.long	-4
	.long	0
	.align	4
_132:
	.long	3
	.long	0
	.long	0
	.align	4
_141:
	.long	1
	.long	_35
	.long	2
	.long	_116
	.long	_110
	.long	-4
	.long	0
	.align	4
_140:
	.long	3
	.long	0
	.long	0
_169:
	.asciz	"lat1"
_170:
	.asciz	"lon1"
_171:
	.asciz	"lat2"
_172:
	.asciz	"lon2"
_173:
	.asciz	"dStartLatInRad"
_174:
	.asciz	"dStartLongInRad"
_175:
	.asciz	"dEndLatInRad"
_176:
	.asciz	"dEndLongInRad"
_177:
	.asciz	"dLongitude"
_178:
	.asciz	"dLatitude"
_179:
	.asciz	"dSinHalfLatitude"
_180:
	.asciz	"dSinHalfLongitude"
_181:
	.asciz	"a"
_182:
	.asciz	"c"
	.align	4
_168:
	.long	1
	.long	_54
	.long	2
	.long	_169
	.long	_33
	.long	-8
	.long	2
	.long	_170
	.long	_33
	.long	-16
	.long	2
	.long	_171
	.long	_33
	.long	-24
	.long	2
	.long	_172
	.long	_33
	.long	-32
	.long	2
	.long	_173
	.long	_33
	.long	-40
	.long	2
	.long	_174
	.long	_33
	.long	-48
	.long	2
	.long	_175
	.long	_33
	.long	-56
	.long	2
	.long	_176
	.long	_33
	.long	-64
	.long	2
	.long	_177
	.long	_33
	.long	-72
	.long	2
	.long	_178
	.long	_33
	.long	-80
	.long	2
	.long	_179
	.long	_33
	.long	-88
	.long	2
	.long	_180
	.long	_33
	.long	-96
	.long	2
	.long	_181
	.long	_33
	.long	-104
	.long	2
	.long	_182
	.long	_33
	.long	-112
	.long	0
	.align	4
_147:
	.long	_102
	.long	25
	.long	3
	.align	8
_407:
	.long	0xa2529d39,0x3f91df46
	.align	4
_149:
	.long	_102
	.long	26
	.long	3
	.align	8
_408:
	.long	0xa2529d39,0x3f91df46
	.align	4
_151:
	.long	_102
	.long	27
	.long	3
	.align	8
_409:
	.long	0xa2529d39,0x3f91df46
	.align	4
_153:
	.long	_102
	.long	28
	.long	3
	.align	8
_410:
	.long	0xa2529d39,0x3f91df46
	.align	4
_155:
	.long	_102
	.long	29
	.long	3
	.align	4
_157:
	.long	_102
	.long	30
	.long	3
	.align	4
_159:
	.long	_102
	.long	31
	.long	3
	.align	8
_411:
	.long	0x0,0x3fe00000
	.align	4
_161:
	.long	_102
	.long	32
	.long	3
	.align	8
_412:
	.long	0x0,0x3fe00000
	.align	4
_163:
	.long	_102
	.long	33
	.long	3
	.align	4
_165:
	.long	_102
	.long	34
	.long	3
	.align	4
_167:
	.long	_102
	.long	35
	.long	3
	.align	8
_413:
	.long	0x80000000,0x41584a36
_262:
	.asciz	"in"
_263:
	.asciz	":TStream"
	.align	4
_261:
	.long	1
	.long	_56
	.long	2
	.long	_116
	.long	_110
	.long	-4
	.long	2
	.long	_262
	.long	_263
	.long	-8
	.long	0
	.align	4
_183:
	.long	_102
	.long	40
	.long	3
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
_185:
	.long	_102
	.long	41
	.long	3
_257:
	.asciz	"l"
_258:
	.asciz	"s"
_259:
	.asciz	"[]$"
	.align	4
_256:
	.long	3
	.long	0
	.long	2
	.long	_257
	.long	_31
	.long	-12
	.long	2
	.long	_258
	.long	_259
	.long	-16
	.long	0
	.align	4
_186:
	.long	_102
	.long	42
	.long	10
	.align	4
_188:
	.long	_102
	.long	43
	.long	4
	.align	4
_11:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	44
	.align	4
_190:
	.long	_102
	.long	44
	.long	4
	.align	4
_224:
	.long	3
	.long	0
	.long	2
	.long	_181
	.long	_117
	.long	-20
	.long	0
	.align	4
_195:
	.long	_102
	.long	46
	.long	6
	.align	4
_197:
	.long	_102
	.long	47
	.long	6
	.align	4
_207:
	.long	_102
	.long	48
	.long	6
	.align	4
_213:
	.long	_102
	.long	49
	.long	6
	.align	4
_219:
	.long	_102
	.long	50
	.long	6
_255:
	.asciz	"r"
	.align	4
_254:
	.long	3
	.long	0
	.long	2
	.long	_255
	.long	_134
	.long	-24
	.long	0
	.align	4
_225:
	.long	_102
	.long	52
	.long	6
	.align	4
_227:
	.long	_102
	.long	53
	.long	6
	.align	4
_237:
	.long	_102
	.long	54
	.long	6
	.align	4
_243:
	.long	_102
	.long	55
	.long	6
	.align	4
_249:
	.long	_102
	.long	56
	.long	6
	.align	4
_260:
	.long	_102
	.long	59
	.long	3
_371:
	.asciz	"lla"
_372:
	.asciz	"lal"
_373:
	.asciz	"res"
	.align	4
_370:
	.long	1
	.long	_57
	.long	2
	.long	_116
	.long	_110
	.long	-4
	.long	2
	.long	_371
	.long	_52
	.long	-8
	.long	2
	.long	_372
	.long	_52
	.long	-12
	.long	2
	.long	_373
	.long	_33
	.long	-20
	.long	0
	.align	4
_264:
	.long	_102
	.long	63
	.long	3
	.align	4
_270:
	.long	_102
	.long	64
	.long	3
	.align	4
_272:
	.long	_102
	.long	65
	.long	3
	.align	4
_352:
	.long	3
	.long	0
	.long	2
	.long	_255
	.long	_134
	.long	-24
	.long	0
	.align	4
_284:
	.long	_102
	.long	66
	.long	4
_348:
	.asciz	"i"
_349:
	.asciz	"lowest"
_350:
	.asciz	"lowest_item"
_351:
	.asciz	"al"
	.align	4
_347:
	.long	3
	.long	0
	.long	2
	.long	_348
	.long	_348
	.long	-28
	.long	2
	.long	_349
	.long	_33
	.long	-36
	.long	2
	.long	_350
	.long	_117
	.long	-40
	.long	2
	.long	_351
	.long	_125
	.long	-44
	.long	0
	.align	4
_287:
	.long	_102
	.long	67
	.long	5
	.align	8
_437:
	.long	0x85ebc8a0,0x7fe1ccf3
	.align	4
_289:
	.long	_102
	.long	68
	.long	5
	.align	4
_291:
	.long	_102
	.long	69
	.long	5
	.align	4
_316:
	.long	3
	.long	0
	.long	2
	.long	_181
	.long	_117
	.long	-48
	.long	2
	.long	_42
	.long	_33
	.long	-56
	.long	0
	.align	4
_301:
	.long	_102
	.long	70
	.long	6
	.align	4
_311:
	.long	_102
	.long	71
	.long	6
	.align	4
_315:
	.long	3
	.long	0
	.long	0
	.align	4
_313:
	.long	_102
	.long	72
	.long	7
	.align	4
_314:
	.long	_102
	.long	73
	.long	7
	.align	4
_317:
	.long	_102
	.long	76
	.long	5
	.align	4
_319:
	.long	_102
	.long	77
	.long	5
	.align	4
_329:
	.long	_102
	.long	78
	.long	5
	.align	4
_339:
	.long	_102
	.long	79
	.long	5
	.align	4
_343:
	.long	_102
	.long	80
	.long	5
	.align	4
_346:
	.long	_102
	.long	81
	.long	5
	.align	4
_353:
	.long	_102
	.long	84
	.long	3
	.align	4
_355:
	.long	_102
	.long	85
	.long	3
	.align	4
_368:
	.long	3
	.long	0
	.long	2
	.long	_181
	.long	_125
	.long	-60
	.long	0
	.align	4
_365:
	.long	_102
	.long	86
	.long	4
	.align	4
_369:
	.long	_102
	.long	88
	.long	3
	.align	4
_386:
	.long	1
	.long	_59
	.long	2
	.long	_116
	.long	_110
	.long	-4
	.long	0
	.align	4
_374:
	.long	_102
	.long	92
	.long	3
	.align	4
_377:
	.long	_102
	.long	93
	.long	3
	.align	4
_385:
	.long	3
	.long	0
	.long	2
	.long	_348
	.long	_348
	.long	-8
	.long	2
	.long	_255
	.long	_33
	.long	-16
	.long	0
	.align	4
_380:
	.long	_102
	.long	94
	.long	4
	.align	4
_384:
	.long	_102
	.long	95
	.long	4
	.align	4
_27:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	58,32
