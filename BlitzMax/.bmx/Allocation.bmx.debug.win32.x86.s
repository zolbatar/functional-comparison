	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_bank_bank
	extrn	___bb_bankstream_bankstream
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_d3d9max2d_d3d9max2d
	extrn	___bb_data_data
	extrn	___bb_directsoundaudio_directsoundaudio
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_freeaudioaudio_freeaudioaudio
	extrn	___bb_freejoy_freejoy
	extrn	___bb_freeprocess_freeprocess
	extrn	___bb_freetypefont_freetypefont
	extrn	___bb_glew_glew
	extrn	___bb_gnet_gnet
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_macos_macos
	extrn	___bb_map_map
	extrn	___bb_maxlua_maxlua
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_openalaudio_openalaudio
	extrn	___bb_pngloader_pngloader
	extrn	___bb_retro_retro
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_threads_threads
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	_bbEmptyString
	extrn	_bbGCFree
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectFree
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugLeaveScope
	public	___bb_blitzmax_allocation
	public	__bb_TAllocation_Delete
	public	__bb_TAllocation_New
	public	_bb_TAllocation
	section	"code" code
___bb_blitzmax_allocation:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_42],0
	je	_43
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_43:
	mov	dword [_42],1
	push	ebp
	push	_40
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
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
	call	___bb_eventqueue_eventqueue
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
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
	push	_bb_TAllocation
	call	_bbObjectRegisterType
	add	esp,4
	mov	ebx,0
	jmp	_32
_32:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAllocation_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_47
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAllocation
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	eax,dword [ebp-4]
	fldz
	fstp	qword [eax+16]
	push	ebp
	push	_46
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_35
_35:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAllocation_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_38:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_52
	push	eax
	call	_bbGCFree
	add	esp,4
_52:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_54
	push	eax
	call	_bbGCFree
	add	esp,4
_54:
	mov	eax,0
	jmp	_50
_50:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_42:
	dd	0
_41:
	db	"Allocation",0
	align	4
_40:
	dd	1
	dd	_41
	dd	0
_23:
	db	"TAllocation",0
_24:
	db	"rid",0
_25:
	db	"$",0
_26:
	db	"aid",0
_27:
	db	"dist",0
_28:
	db	"d",0
_29:
	db	"New",0
_30:
	db	"()i",0
_31:
	db	"Delete",0
	align	4
_22:
	dd	2
	dd	_23
	dd	3
	dd	_24
	dd	_25
	dd	8
	dd	3
	dd	_26
	dd	_25
	dd	12
	dd	3
	dd	_27
	dd	_28
	dd	16
	dd	6
	dd	_29
	dd	_30
	dd	16
	dd	6
	dd	_31
	dd	_30
	dd	20
	dd	0
	align	4
_bb_TAllocation:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_22
	dd	24
	dd	__bb_TAllocation_New
	dd	__bb_TAllocation_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_48:
	db	"Self",0
_49:
	db	":TAllocation",0
	align	4
_47:
	dd	1
	dd	_29
	dd	2
	dd	_48
	dd	_49
	dd	-4
	dd	0
	align	4
_46:
	dd	3
	dd	0
	dd	0
