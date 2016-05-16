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
	.reference	_bbSin
	.reference	_bbSqr
	.reference	_bbStringClass
	.reference	_bbStringConcat
	.reference	_bbStringFromDouble
	.reference	_bbStringFromInt
	.reference	_bbStringSplit
	.reference	_bbStringToDouble
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
	sub	$8,%esp
	cmpl	$0,_103
	je	_104
	mov	$0,%eax
	mov	%ebp,%esp
	pop	%ebp
	ret
_104:
	movl	$1,_103
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
	movl	$_bb_Program,(%esp)
	call	_bbObjectNew
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*60(%eax)
	mov	$0,%eax
	jmp	_60
_60:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TActivity_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_TActivity,(%ebx)
	mov	$_bbEmptyString,%eax
	incl	4(%eax)
	movl	%eax,8(%ebx)
	fldz
	fstpl	16(%ebx)
	fldz
	fstpl	24(%ebx)
	mov	$0,%eax
	jmp	_63
_63:
	add	$4,%esp
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
	jnz	_108
	movl	%eax,(%esp)
	call	_bbGCFree
_108:
	mov	$0,%eax
	jmp	_106
_106:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TAllocation_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_TAllocation,(%ebx)
	mov	$_bbEmptyString,%eax
	incl	4(%eax)
	movl	%eax,8(%ebx)
	mov	$_bbEmptyString,%eax
	incl	4(%eax)
	movl	%eax,12(%ebx)
	fldz
	fstpl	16(%ebx)
	mov	$0,%eax
	jmp	_69
_69:
	add	$4,%esp
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
	jnz	_113
	movl	%eax,(%esp)
	call	_bbGCFree
_113:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_115
	movl	%eax,(%esp)
	call	_bbGCFree
_115:
	mov	$0,%eax
	jmp	_111
_111:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TResource_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_TResource,(%ebx)
	mov	$_bbEmptyString,%eax
	incl	4(%eax)
	movl	%eax,8(%ebx)
	fldz
	fstpl	16(%ebx)
	fldz
	fstpl	24(%ebx)
	mov	$0,%eax
	jmp	_75
_75:
	add	$4,%esp
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
	jnz	_119
	movl	%eax,(%esp)
	call	_bbGCFree
_119:
	mov	$0,%eax
	jmp	_117
_117:
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
	jmp	_81
_81:
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
_84:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_124
	movl	%eax,(%esp)
	call	_bbGCFree
_124:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_126
	movl	%eax,(%esp)
	call	_bbGCFree
_126:
	mov	$0,%eax
	jmp	_122
_122:
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
	fldl	_218
	fmulp	%st(0),%st(4)
	fxch	%st(3)
	fstpl	-40(%ebp)
	fldl	_219
	fmulp	%st(0),%st(2)
	fldl	_220
	fmulp	%st(0),%st(1)
	fstpl	-56(%ebp)
	fldl	_221
	fmulp	%st(0),%st(2)
	fsubrp	%st(0),%st(1)
	fstpl	-64(%ebp)
	fldl	-56(%ebp)
	fsubl	-40(%ebp)
	fldl	_222
	fmulp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSin
	fstpl	-32(%ebp)
	fldl	-64(%ebp)
	fldl	_223
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
	fldl	_224
	fxch	%st(1)
	fadd	%st(0),%st(0)
	fmulp	%st(0),%st(1)
	jmp	_90
_90:
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
	je	_142
	cmp	$3,%eax
	je	_143
	jmp	_141
_142:
	movl	$_bb_TActivity,(%esp)
	call	_bbObjectNew
	mov	%eax,%ebx
	movl	24(%edi),%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_148
	movl	%eax,(%esp)
	call	_bbGCFree
_148:
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
	jmp	_141
_143:
	movl	$_bb_TResource,(%esp)
	call	_bbObjectNew
	mov	%eax,%ebx
	movl	24(%edi),%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_154
	movl	%eax,(%esp)
	call	_bbGCFree
_154:
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
	jmp	_141
_141:
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
	jmp	_93
_93:
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
	jmp	_166
_17:
	fldl	_232
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
	je	_240
	fstp	%st(0)
	jmp	_176
_240:
	fstpl	-8(%ebp)
	movl	%ebx,-12(%ebp)
_176:
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
	jnz	_181
	movl	%eax,(%esp)
	call	_bbGCFree
_181:
	movl	%esi,12(%ebx)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_185
	movl	%eax,(%esp)
	call	_bbGCFree
_185:
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
_166:
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
	jmp	_96
_96:
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
	jmp	_196
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
_196:
	cmp	$100,%esi
	jl	_26
_25:
	mov	$0,%eax
	jmp	_99
_99:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_103:
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
	.align	8
_218:
	.long	0xa2529d39,0x3f91df46
	.align	8
_219:
	.long	0xa2529d39,0x3f91df46
	.align	8
_220:
	.long	0xa2529d39,0x3f91df46
	.align	8
_221:
	.long	0xa2529d39,0x3f91df46
	.align	8
_222:
	.long	0x0,0x3fe00000
	.align	8
_223:
	.long	0x0,0x3fe00000
	.align	8
_224:
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
_232:
	.long	0x85ebc8a0,0x7fe1ccf3
	.align	4
_27:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	58,32
