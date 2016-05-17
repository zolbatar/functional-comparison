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
	cmpl	$0,_109
	je	_110
	mov	$0,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_110:
	movl	$1,_109
	movl	$_bbNullObject,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_105,(%esp)
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
	movl	$_99,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Program,(%esp)
	call	_bbObjectNew
	movl	%eax,-4(%ebp)
	movl	$_102,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_104
	call	_brl_blitz_NullObjectError
_104:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*60(%eax)
	mov	$0,%ebx
	jmp	_58
_58:
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
	movl	$_113,(%esp)
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
	movl	$_112,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_61
_61:
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
_64:
	movl	8(%eax),%eax
	decl	4(%eax)
	jnz	_118
	movl	%eax,(%esp)
	call	_bbGCFree
_118:
	mov	$0,%eax
	jmp	_116
_116:
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
	movl	$_122,(%esp)
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
	movl	$_121,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_67
_67:
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
_70:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_126
	movl	%eax,(%esp)
	call	_bbGCFree
_126:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_128
	movl	%eax,(%esp)
	call	_bbGCFree
_128:
	mov	$0,%eax
	jmp	_124
_124:
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
	movl	$_131,(%esp)
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
	movl	$_130,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_73
_73:
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
_76:
	movl	8(%eax),%eax
	decl	4(%eax)
	jnz	_135
	movl	%eax,(%esp)
	call	_bbGCFree
_135:
	mov	$0,%eax
	jmp	_133
_133:
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
	movl	$_139,(%esp)
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
	movl	$_138,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_79
_79:
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
_82:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_142
	movl	%eax,(%esp)
	call	_bbGCFree
_142:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_144
	movl	%eax,(%esp)
	call	_bbGCFree
_144:
	mov	$0,%eax
	jmp	_140
_140:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Program_DistanceBetweenPointsLatLong:
	push	%ebp
	mov	%esp,%ebp
	sub	$120,%esp
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
	movl	%ebp,4(%esp)
	movl	$_158,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_145,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-32(%ebp)
	fsubl	-16(%ebp)
	fstpl	-40(%ebp)
	movl	$_147,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-24(%ebp)
	fsubl	-8(%ebp)
	fstpl	-48(%ebp)
	movl	$_149,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-48(%ebp)
	fldl	_393
	fmulp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSin
	fstpl	-56(%ebp)
	movl	$_151,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-40(%ebp)
	fldl	_394
	fmulp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSin
	fstpl	-64(%ebp)
	movl	$_153,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-56(%ebp)
	fmull	-56(%ebp)
	fstpl	-96(%ebp)
	fldl	-8(%ebp)
	fstpl	(%esp)
	call	_bbCos
	fstpl	-88(%ebp)
	fldl	-24(%ebp)
	fstpl	(%esp)
	call	_bbCos
	fldl	-88(%ebp)
	fmulp	%st(0),%st(1)
	fstpl	-88(%ebp)
	fldl	-88(%ebp)
	fmull	-64(%ebp)
	fmull	-64(%ebp)
	fldl	-96(%ebp)
	faddp	%st(0),%st(1)
	fstpl	-96(%ebp)
	fldl	-96(%ebp)
	fstpl	-72(%ebp)
	movl	$_155,(%esp)
	calll	*_bbOnDebugEnterStm
	fld1
	fsubl	-72(%ebp)
	fstpl	(%esp)
	call	_bbSqr
	fstpl	8(%esp)
	fldl	-72(%ebp)
	fstpl	(%esp)
	call	_bbSqr
	fstpl	(%esp)
	call	_bbATan2
	fldl	_395
	fdivrp	%st(0),%st(1)
	fldl	_396
	fmulp	%st(0),%st(1)
	fstpl	-80(%ebp)
	movl	$_157,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	_397
	fldl	-80(%ebp)
	faddl	-80(%ebp)
	fmulp	%st(0),%st(1)
	fstpl	-104(%ebp)
	jmp	_88
_88:
	calll	*_bbOnDebugLeaveScope
	fldl	-104(%ebp)
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
	movl	$_247,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_169,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_7,(%esp)
	call	_brl_filesystem_ReadFile
	movl	%eax,-8(%ebp)
	movl	$_171,(%esp)
	calll	*_bbOnDebugEnterStm
	jmp	_8
_10:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_242,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_172,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_ReadLine
	movl	%eax,-12(%ebp)
	movl	$_174,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_11,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringSplit
	movl	%eax,-16(%ebp)
	movl	$_176,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	cmp	$4,%eax
	je	_179
	cmp	$3,%eax
	je	_180
	jmp	_178
_179:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_210,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_181,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_TActivity,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_183,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_185
	call	_brl_blitz_NullObjectError
_185:
	mov	%ebx,%esi
	mov	$0,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_188
	call	_brl_blitz_ArrayBoundsError
_188:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%esi),%eax
	decl	4(%eax)
	jnz	_192
	movl	%eax,(%esp)
	call	_bbGCFree
_192:
	movl	%ebx,8(%esi)
	movl	$_193,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_195
	call	_brl_blitz_NullObjectError
_195:
	mov	%ebx,%esi
	mov	$1,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_198
	call	_brl_blitz_ArrayBoundsError
_198:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_bbStringToDouble
	fstpl	16(%esi)
	movl	$_199,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_201
	call	_brl_blitz_NullObjectError
_201:
	mov	%ebx,%esi
	mov	$2,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_204
	call	_brl_blitz_ArrayBoundsError
_204:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_bbStringToDouble
	fstpl	24(%esi)
	movl	$_205,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_207
	call	_brl_blitz_NullObjectError
_207:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_209
	call	_brl_blitz_NullObjectError
_209:
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_178
_180:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_240,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_211,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_TResource,(%esp)
	call	_bbObjectNew
	movl	%eax,-24(%ebp)
	movl	$_213,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_215
	call	_brl_blitz_NullObjectError
_215:
	mov	%ebx,%esi
	mov	$0,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_218
	call	_brl_blitz_ArrayBoundsError
_218:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%esi),%eax
	decl	4(%eax)
	jnz	_222
	movl	%eax,(%esp)
	call	_bbGCFree
_222:
	movl	%ebx,8(%esi)
	movl	$_223,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_225
	call	_brl_blitz_NullObjectError
_225:
	mov	%ebx,%esi
	mov	$1,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_228
	call	_brl_blitz_ArrayBoundsError
_228:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_bbStringToDouble
	fstpl	16(%esi)
	movl	$_229,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_231
	call	_brl_blitz_NullObjectError
_231:
	mov	%ebx,%esi
	mov	$2,%ebx
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_234
	call	_brl_blitz_ArrayBoundsError
_234:
	movl	-16(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_bbStringToDouble
	fstpl	24(%esi)
	movl	$_235,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_237
	call	_brl_blitz_NullObjectError
_237:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_239
	call	_brl_blitz_NullObjectError
_239:
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_178
_178:
	calll	*_bbOnDebugLeaveScope
_8:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_Eof
	cmp	$0,%eax
	je	_10
_9:
	movl	$_246,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_CloseStream
	mov	$0,%ebx
	jmp	_91
_91:
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
	movl	$_356,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_250,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_252
	call	_brl_blitz_NullObjectError
_252:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_254
	call	_brl_blitz_NullObjectError
_254:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*124(%eax)
	movl	%eax,-8(%ebp)
	movl	$_256,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	movl	%eax,-12(%ebp)
	movl	$_258,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-24(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_261
	call	_brl_blitz_NullObjectError
_261:
	movl	12(%ebx),%eax
	movl	%eax,-88(%ebp)
	movl	-88(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_264
	call	_brl_blitz_NullObjectError
_264:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	movl	%eax,-84(%ebp)
	jmp	_12
_14:
	movl	-84(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_269
	call	_brl_blitz_NullObjectError
_269:
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
	movl	$_338,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_270,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-28(%ebp)
	movl	$0,-28(%ebp)
	jmp	_272
_17:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_333,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_273,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	_421
	fstpl	-36(%ebp)
	movl	$_275,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-40(%ebp)
	movl	$_277,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-48(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	-72(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_281
	call	_brl_blitz_NullObjectError
_281:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	movl	%eax,-68(%ebp)
	jmp	_18
_20:
	movl	-68(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_286
	call	_brl_blitz_NullObjectError
_286:
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
	movl	$_302,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_287,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%eax
	movl	%eax,-64(%ebp)
	cmpl	$_bbNullObject,-64(%ebp)
	jne	_289
	call	_brl_blitz_NullObjectError
_289:
	movl	-24(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_291
	call	_brl_blitz_NullObjectError
_291:
	movl	-48(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_293
	call	_brl_blitz_NullObjectError
_293:
	movl	-48(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_295
	call	_brl_blitz_NullObjectError
_295:
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
	movl	$_297,(%esp)
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
	jne	_298
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_301,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_299,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-56(%ebp)
	fstpl	-36(%ebp)
	movl	$_300,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-48(%ebp),%eax
	movl	%eax,-40(%ebp)
	calll	*_bbOnDebugLeaveScope
_298:
	calll	*_bbOnDebugLeaveScope
_18:
	movl	-68(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_284
	call	_brl_blitz_NullObjectError
_284:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_20
_19:
	movl	$_303,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_TAllocation,(%esp)
	call	_bbObjectNew
	movl	%eax,-44(%ebp)
	movl	$_305,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-44(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_307
	call	_brl_blitz_NullObjectError
_307:
	mov	%ebx,%esi
	movl	-40(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_310
	call	_brl_blitz_NullObjectError
_310:
	movl	8(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	12(%esi),%eax
	decl	4(%eax)
	jnz	_314
	movl	%eax,(%esp)
	call	_bbGCFree
_314:
	movl	%ebx,12(%esi)
	movl	$_315,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-44(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_317
	call	_brl_blitz_NullObjectError
_317:
	mov	%ebx,%esi
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_320
	call	_brl_blitz_NullObjectError
_320:
	movl	8(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%esi),%eax
	decl	4(%eax)
	jnz	_324
	movl	%eax,(%esp)
	call	_bbGCFree
_324:
	movl	%ebx,8(%esi)
	movl	$_325,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-44(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_327
	call	_brl_blitz_NullObjectError
_327:
	fldl	-36(%ebp)
	fstpl	16(%ebx)
	movl	$_329,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_331
	call	_brl_blitz_NullObjectError
_331:
	movl	-44(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	$_332,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-40(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_linkedlist_ListRemove
	calll	*_bbOnDebugLeaveScope
_15:
	addl	$1,-28(%ebp)
_272:
	cmpl	$50,-28(%ebp)
	jl	_17
_16:
	calll	*_bbOnDebugLeaveScope
_12:
	movl	-84(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_267
	call	_brl_blitz_NullObjectError
_267:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_14
_13:
	movl	$_339,(%esp)
	calll	*_bbOnDebugEnterStm
	fldz
	fstpl	-20(%ebp)
	movl	$_341,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-60(%ebp)
	movl	-12(%ebp),%edi
	mov	%edi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_345
	call	_brl_blitz_NullObjectError
_345:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	mov	%eax,%esi
	jmp	_21
_23:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_350
	call	_brl_blitz_NullObjectError
_350:
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
	movl	$_354,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_351,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-60(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_353
	call	_brl_blitz_NullObjectError
_353:
	fldl	-20(%ebp)
	faddl	16(%ebx)
	fstpl	-20(%ebp)
	calll	*_bbOnDebugLeaveScope
_21:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_348
	call	_brl_blitz_NullObjectError
_348:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_23
_22:
	movl	$_355,(%esp)
	calll	*_bbOnDebugEnterStm
	fldl	-20(%ebp)
	fstpl	-80(%ebp)
	jmp	_94
_94:
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
	movl	$_372,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_360,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_362
	call	_brl_blitz_NullObjectError
_362:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_363,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-8(%ebp)
	movl	$0,-8(%ebp)
	jmp	_365
_26:
	movl	%ebp,4(%esp)
	movl	$_371,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_366,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_368
	call	_brl_blitz_NullObjectError
_368:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	fstpl	-16(%ebp)
	movl	$_370,(%esp)
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
_365:
	cmpl	$10,-8(%ebp)
	jl	_26
_25:
	mov	$0,%ebx
	jmp	_97
_97:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_109:
	.long	0
_106:
	.asciz	"Greedy"
_107:
	.asciz	"p"
_108:
	.asciz	":Program"
	.align	4
_105:
	.long	1
	.long	_106
	.long	2
	.long	_107
	.long	_108
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
	.asciz	"la"
_50:
	.asciz	":TList"
_51:
	.asciz	"lr"
_52:
	.asciz	"DistanceBetweenPointsLatLong"
_53:
	.asciz	"(d,d,d,d)d"
_54:
	.asciz	"LoadCSV"
_55:
	.asciz	"ScheduleResources"
_56:
	.asciz	"()d"
_57:
	.asciz	"Main"
	.align	4
_45:
	.long	2
	.long	_46
	.long	1
	.long	_47
	.long	_33
	.long	_48
	.long	3
	.long	_49
	.long	_50
	.long	8
	.long	3
	.long	_51
	.long	_50
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
	.long	_52
	.long	_53
	.long	48
	.long	6
	.long	_54
	.long	_36
	.long	52
	.long	6
	.long	_55
	.long	_56
	.long	56
	.long	6
	.long	_57
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
_100:
	.asciz	"/Users/daryl/Development/Projects/FunctionalComparison/Proprietary/BlitzMax/Greedy.bmx"
	.align	4
_99:
	.long	_100
	.long	3
	.long	1
	.align	4
_102:
	.long	_100
	.long	4
	.long	1
_114:
	.asciz	"Self"
_115:
	.asciz	":TActivity"
	.align	4
_113:
	.long	1
	.long	_35
	.long	2
	.long	_114
	.long	_115
	.long	-4
	.long	0
	.align	4
_112:
	.long	3
	.long	0
	.long	0
_123:
	.asciz	":TAllocation"
	.align	4
_122:
	.long	1
	.long	_35
	.long	2
	.long	_114
	.long	_123
	.long	-4
	.long	0
	.align	4
_121:
	.long	3
	.long	0
	.long	0
_132:
	.asciz	":TResource"
	.align	4
_131:
	.long	1
	.long	_35
	.long	2
	.long	_114
	.long	_132
	.long	-4
	.long	0
	.align	4
_130:
	.long	3
	.long	0
	.long	0
	.align	4
_139:
	.long	1
	.long	_35
	.long	2
	.long	_114
	.long	_108
	.long	-4
	.long	0
	.align	4
_138:
	.long	3
	.long	0
	.long	0
_159:
	.asciz	"lat1"
_160:
	.asciz	"lon1"
_161:
	.asciz	"lat2"
_162:
	.asciz	"lon2"
_163:
	.asciz	"dLongitude"
_164:
	.asciz	"dLatitude"
_165:
	.asciz	"dSinHalfLatitude"
_166:
	.asciz	"dSinHalfLongitude"
_167:
	.asciz	"a"
_168:
	.asciz	"c"
	.align	4
_158:
	.long	1
	.long	_52
	.long	2
	.long	_159
	.long	_33
	.long	-8
	.long	2
	.long	_160
	.long	_33
	.long	-16
	.long	2
	.long	_161
	.long	_33
	.long	-24
	.long	2
	.long	_162
	.long	_33
	.long	-32
	.long	2
	.long	_163
	.long	_33
	.long	-40
	.long	2
	.long	_164
	.long	_33
	.long	-48
	.long	2
	.long	_165
	.long	_33
	.long	-56
	.long	2
	.long	_166
	.long	_33
	.long	-64
	.long	2
	.long	_167
	.long	_33
	.long	-72
	.long	2
	.long	_168
	.long	_33
	.long	-80
	.long	0
	.align	4
_145:
	.long	_100
	.long	24
	.long	3
	.align	4
_147:
	.long	_100
	.long	25
	.long	3
	.align	4
_149:
	.long	_100
	.long	26
	.long	3
	.align	8
_393:
	.long	0x0,0x3fe00000
	.align	4
_151:
	.long	_100
	.long	27
	.long	3
	.align	8
_394:
	.long	0x0,0x3fe00000
	.align	4
_153:
	.long	_100
	.long	28
	.long	3
	.align	4
_155:
	.long	_100
	.long	29
	.long	3
	.align	8
_395:
	.long	0x0,0x40668000
	.align	8
_396:
	.long	0x54442d18,0x400921fb
	.align	4
_157:
	.long	_100
	.long	30
	.long	3
	.align	8
_397:
	.long	0x80000000,0x41584a36
_248:
	.asciz	"in"
_249:
	.asciz	":TStream"
	.align	4
_247:
	.long	1
	.long	_54
	.long	2
	.long	_114
	.long	_108
	.long	-4
	.long	2
	.long	_248
	.long	_249
	.long	-8
	.long	0
	.align	4
_169:
	.long	_100
	.long	34
	.long	3
	.align	4
_7:
	.long	_bbStringClass
	.long	2147483647
	.long	23
	.short	46,46,47,46,46,47,68,97,116,97,47,68,97,116,97,83
	.short	80,73,70,46,99,115,118
	.align	4
_171:
	.long	_100
	.long	35
	.long	3
_243:
	.asciz	"l"
_244:
	.asciz	"s"
_245:
	.asciz	"[]$"
	.align	4
_242:
	.long	3
	.long	0
	.long	2
	.long	_243
	.long	_31
	.long	-12
	.long	2
	.long	_244
	.long	_245
	.long	-16
	.long	0
	.align	4
_172:
	.long	_100
	.long	36
	.long	10
	.align	4
_174:
	.long	_100
	.long	37
	.long	4
	.align	4
_11:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	44
	.align	4
_176:
	.long	_100
	.long	38
	.long	4
	.align	4
_210:
	.long	3
	.long	0
	.long	2
	.long	_167
	.long	_115
	.long	-20
	.long	0
	.align	4
_181:
	.long	_100
	.long	40
	.long	6
	.align	4
_183:
	.long	_100
	.long	41
	.long	6
	.align	4
_193:
	.long	_100
	.long	42
	.long	6
	.align	4
_199:
	.long	_100
	.long	43
	.long	6
	.align	4
_205:
	.long	_100
	.long	44
	.long	6
_241:
	.asciz	"r"
	.align	4
_240:
	.long	3
	.long	0
	.long	2
	.long	_241
	.long	_132
	.long	-24
	.long	0
	.align	4
_211:
	.long	_100
	.long	46
	.long	6
	.align	4
_213:
	.long	_100
	.long	47
	.long	6
	.align	4
_223:
	.long	_100
	.long	48
	.long	6
	.align	4
_229:
	.long	_100
	.long	49
	.long	6
	.align	4
_235:
	.long	_100
	.long	50
	.long	6
	.align	4
_246:
	.long	_100
	.long	53
	.long	3
_357:
	.asciz	"lla"
_358:
	.asciz	"lal"
_359:
	.asciz	"res"
	.align	4
_356:
	.long	1
	.long	_55
	.long	2
	.long	_114
	.long	_108
	.long	-4
	.long	2
	.long	_357
	.long	_50
	.long	-8
	.long	2
	.long	_358
	.long	_50
	.long	-12
	.long	2
	.long	_359
	.long	_33
	.long	-20
	.long	0
	.align	4
_250:
	.long	_100
	.long	57
	.long	3
	.align	4
_256:
	.long	_100
	.long	58
	.long	3
	.align	4
_258:
	.long	_100
	.long	59
	.long	3
	.align	4
_338:
	.long	3
	.long	0
	.long	2
	.long	_241
	.long	_132
	.long	-24
	.long	0
	.align	4
_270:
	.long	_100
	.long	60
	.long	4
_334:
	.asciz	"i"
_335:
	.asciz	"lowest"
_336:
	.asciz	"lowest_item"
_337:
	.asciz	"al"
	.align	4
_333:
	.long	3
	.long	0
	.long	2
	.long	_334
	.long	_334
	.long	-28
	.long	2
	.long	_335
	.long	_33
	.long	-36
	.long	2
	.long	_336
	.long	_115
	.long	-40
	.long	2
	.long	_337
	.long	_123
	.long	-44
	.long	0
	.align	4
_273:
	.long	_100
	.long	61
	.long	5
	.align	8
_421:
	.long	0x85ebc8a0,0x7fe1ccf3
	.align	4
_275:
	.long	_100
	.long	62
	.long	5
	.align	4
_277:
	.long	_100
	.long	63
	.long	5
	.align	4
_302:
	.long	3
	.long	0
	.long	2
	.long	_167
	.long	_115
	.long	-48
	.long	2
	.long	_42
	.long	_33
	.long	-56
	.long	0
	.align	4
_287:
	.long	_100
	.long	64
	.long	6
	.align	4
_297:
	.long	_100
	.long	65
	.long	6
	.align	4
_301:
	.long	3
	.long	0
	.long	0
	.align	4
_299:
	.long	_100
	.long	66
	.long	7
	.align	4
_300:
	.long	_100
	.long	67
	.long	7
	.align	4
_303:
	.long	_100
	.long	70
	.long	5
	.align	4
_305:
	.long	_100
	.long	71
	.long	5
	.align	4
_315:
	.long	_100
	.long	72
	.long	5
	.align	4
_325:
	.long	_100
	.long	73
	.long	5
	.align	4
_329:
	.long	_100
	.long	74
	.long	5
	.align	4
_332:
	.long	_100
	.long	75
	.long	5
	.align	4
_339:
	.long	_100
	.long	78
	.long	3
	.align	4
_341:
	.long	_100
	.long	79
	.long	3
	.align	4
_354:
	.long	3
	.long	0
	.long	2
	.long	_167
	.long	_123
	.long	-60
	.long	0
	.align	4
_351:
	.long	_100
	.long	80
	.long	4
	.align	4
_355:
	.long	_100
	.long	82
	.long	3
	.align	4
_372:
	.long	1
	.long	_57
	.long	2
	.long	_114
	.long	_108
	.long	-4
	.long	0
	.align	4
_360:
	.long	_100
	.long	86
	.long	3
	.align	4
_363:
	.long	_100
	.long	87
	.long	3
	.align	4
_371:
	.long	3
	.long	0
	.long	2
	.long	_334
	.long	_334
	.long	-8
	.long	2
	.long	_241
	.long	_33
	.long	-16
	.long	0
	.align	4
_366:
	.long	_100
	.long	88
	.long	4
	.align	4
_370:
	.long	_100
	.long	89
	.long	4
	.align	4
_27:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	58,32
