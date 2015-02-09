	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_blitzmax_activity
	extrn	___bb_blitzmax_allocation
	extrn	___bb_blitzmax_resource
	extrn	_bbATan2
	extrn	_bbCos
	extrn	_bbEmptyArray
	extrn	_bbEmptyString
	extrn	_bbGCFree
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDowncast
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbSin
	extrn	_bbSqr
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromDouble
	extrn	_bbStringFromInt
	extrn	_bbStringSplit
	extrn	_bbStringToDouble
	extrn	_bb_TActivity
	extrn	_bb_TAllocation
	extrn	_bb_TResource
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_filesystem_ReadFile
	extrn	_brl_linkedlist_ListRemove
	extrn	_brl_linkedlist_TList
	extrn	_brl_standardio_Print
	extrn	_brl_stream_CloseStream
	extrn	_brl_stream_Eof
	extrn	_brl_stream_ReadLine
	public	__bb_Program_Delete
	public	__bb_Program_DistanceBetweenPointsLatLong
	public	__bb_Program_LoadCSV
	public	__bb_Program_Main
	public	__bb_Program_New
	public	__bb_Program_ScheduleResources
	public	__bb_main
	public	_bb_Program
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	cmp	dword [_95],0
	je	_96
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_96:
	mov	dword [_95],1
	mov	dword [ebp-4],_bbNullObject
	push	ebp
	push	_91
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_blitzmax_activity
	call	___bb_blitzmax_resource
	call	___bb_blitzmax_allocation
	push	_bb_Program
	call	_bbObjectRegisterType
	add	esp,4
	push	_85
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Program
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	push	_88
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_90
	call	_brl_blitz_NullObjectError
_90:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,0
	jmp	_62
_62:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Program_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_100
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Program
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+8],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+12],eax
	push	ebp
	push	_99
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_65
_65:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Program_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_68:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_104
	push	eax
	call	_bbGCFree
	add	esp,4
_104:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_106
	push	eax
	call	_bbGCFree
	add	esp,4
_106:
	mov	eax,0
	jmp	_102
_102:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Program_DistanceBetweenPointsLatLong:
	push	ebp
	mov	ebp,esp
	sub	esp,136
	fld	qword [ebp+8]
	fstp	qword [ebp-8]
	fld	qword [ebp+16]
	fstp	qword [ebp-16]
	fld	qword [ebp+24]
	fstp	qword [ebp-24]
	fld	qword [ebp+32]
	fstp	qword [ebp-32]
	fldz
	fstp	qword [ebp-40]
	fldz
	fstp	qword [ebp-48]
	fldz
	fstp	qword [ebp-56]
	fldz
	fstp	qword [ebp-64]
	fldz
	fstp	qword [ebp-72]
	fldz
	fstp	qword [ebp-80]
	fldz
	fstp	qword [ebp-88]
	fldz
	fstp	qword [ebp-96]
	fldz
	fstp	qword [ebp-104]
	fldz
	fstp	qword [ebp-112]
	push	ebp
	push	_128
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-8]
	fld	qword [_360]
	fmulp	st1,st0
	fstp	qword [ebp-40]
	push	_109
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-16]
	fld	qword [_361]
	fmulp	st1,st0
	fstp	qword [ebp-48]
	push	_111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-24]
	fld	qword [_362]
	fmulp	st1,st0
	fstp	qword [ebp-56]
	push	_113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-32]
	fld	qword [_363]
	fmulp	st1,st0
	fstp	qword [ebp-64]
	push	_115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-64]
	fsub	qword [ebp-48]
	fstp	qword [ebp-72]
	push	_117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-56]
	fsub	qword [ebp-40]
	fstp	qword [ebp-80]
	push	_119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-80]
	fld	qword [_364]
	fmulp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-88]
	push	_121
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-72]
	fld	qword [_365]
	fmulp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-96]
	push	_123
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-88]
	fmul	qword [ebp-88]
	fstp	qword [ebp-128]
	fld	qword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-120]
	fld	qword [ebp-56]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [ebp-120]
	fmulp	st1,st0
	fstp	qword [ebp-120]
	fld	qword [ebp-120]
	fmul	qword [ebp-96]
	fmul	qword [ebp-96]
	fld	qword [ebp-128]
	faddp	st1,st0
	fstp	qword [ebp-128]
	fld	qword [ebp-128]
	fstp	qword [ebp-104]
	push	_125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fsub	qword [ebp-104]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	sub	esp,8
	fstp	qword [esp]
	fld	qword [ebp-104]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fstp	qword [ebp-112]
	push	_127
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_366]
	fld	qword [ebp-112]
	fadd	qword [ebp-112]
	fmulp	st1,st0
	fstp	qword [ebp-136]
	jmp	_74
_74:
	call	dword [_bbOnDebugLeaveScope]
	fld	qword [ebp-136]
	mov	esp,ebp
	pop	ebp
	ret
__bb_Program_LoadCSV:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],_bbEmptyArray
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	push	ebp
	push	_224
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_143
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_22
	call	_brl_filesystem_ReadFile
	add	esp,4
	mov	dword [ebp-8],eax
	push	_145
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_23
_25:
	push	ebp
	push	_218
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_brl_stream_ReadLine
	add	esp,4
	mov	dword [ebp-12],eax
	push	_148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_26
	push	dword [ebp-12]
	call	_bbStringSplit
	add	esp,8
	mov	dword [ebp-16],eax
	push	_150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	mov	eax,dword [eax+20]
	cmp	eax,4
	je	_153
	cmp	eax,3
	je	_154
	jmp	_152
_153:
	push	ebp
	push	_184
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_155
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TActivity
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-20],eax
	push	_157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_159
	call	_brl_blitz_NullObjectError
_159:
	mov	ebx,0
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_162
	call	_brl_blitz_ArrayBoundsError
_162:
	mov	eax,dword [ebp-16]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_166
	push	eax
	call	_bbGCFree
	add	esp,4
_166:
	mov	dword [esi+8],ebx
	push	_167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_169
	call	_brl_blitz_NullObjectError
_169:
	mov	esi,1
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_172
	call	_brl_blitz_ArrayBoundsError
_172:
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbStringToDouble
	add	esp,4
	fstp	qword [ebx+16]
	push	_173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_175
	call	_brl_blitz_NullObjectError
_175:
	mov	esi,2
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_178
	call	_brl_blitz_ArrayBoundsError
_178:
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbStringToDouble
	add	esp,4
	fstp	qword [ebx+24]
	push	_179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_181
	call	_brl_blitz_NullObjectError
_181:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_183
	call	_brl_blitz_NullObjectError
_183:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_152
_154:
	push	ebp
	push	_215
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TResource
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-24],eax
	push	_188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_190
	call	_brl_blitz_NullObjectError
_190:
	mov	ebx,0
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_193
	call	_brl_blitz_ArrayBoundsError
_193:
	mov	eax,dword [ebp-16]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_197
	push	eax
	call	_bbGCFree
	add	esp,4
_197:
	mov	dword [esi+8],ebx
	push	_198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_200
	call	_brl_blitz_NullObjectError
_200:
	mov	esi,1
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_203
	call	_brl_blitz_ArrayBoundsError
_203:
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbStringToDouble
	add	esp,4
	fstp	qword [ebx+16]
	push	_204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_206
	call	_brl_blitz_NullObjectError
_206:
	mov	esi,2
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_209
	call	_brl_blitz_ArrayBoundsError
_209:
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbStringToDouble
	add	esp,4
	fstp	qword [ebx+24]
	push	_210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_212
	call	_brl_blitz_NullObjectError
_212:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_214
	call	_brl_blitz_NullObjectError
_214:
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_152
_152:
	call	dword [_bbOnDebugLeaveScope]
_23:
	push	dword [ebp-8]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_25
_24:
	push	_223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_brl_stream_CloseStream
	add	esp,4
	mov	ebx,0
	jmp	_77
_77:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Program_ScheduleResources:
	push	ebp
	mov	ebp,esp
	sub	esp,88
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],0
	fldz
	fstp	qword [ebp-36]
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-48],_bbNullObject
	fldz
	fstp	qword [ebp-56]
	mov	dword [ebp-44],_bbNullObject
	fldz
	fstp	qword [ebp-20]
	mov	dword [ebp-60],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_335
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_227
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_229
	call	_brl_blitz_NullObjectError
_229:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_231
	call	_brl_blitz_NullObjectError
_231:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,4
	mov	dword [ebp-8],eax
	push	_233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-12],eax
	push	_235
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_238
	call	_brl_blitz_NullObjectError
_238:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-84],eax
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_241
	call	_brl_blitz_NullObjectError
_241:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-88],eax
	jmp	_27
_29:
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_246
	call	_brl_blitz_NullObjectError
_246:
	push	_bb_TResource
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_27
	mov	eax,ebp
	push	eax
	push	_317
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],0
	jmp	_249
_32:
	mov	eax,ebp
	push	eax
	push	_311
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_390]
	fstp	qword [ebp-36]
	push	_252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	push	_254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbNullObject
	mov	eax,dword [ebp-8]
	mov	dword [ebp-72],eax
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_258
	call	_brl_blitz_NullObjectError
_258:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-68],eax
	jmp	_33
_35:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_263
	call	_brl_blitz_NullObjectError
_263:
	push	_bb_TActivity
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-48],eax
	cmp	dword [ebp-48],_bbNullObject
	je	_33
	mov	eax,ebp
	push	eax
	push	_279
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_264
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	mov	dword [ebp-64],eax
	cmp	dword [ebp-64],_bbNullObject
	jne	_266
	call	_brl_blitz_NullObjectError
_266:
	mov	edi,dword [ebp-24]
	cmp	edi,_bbNullObject
	jne	_268
	call	_brl_blitz_NullObjectError
_268:
	mov	esi,dword [ebp-48]
	cmp	esi,_bbNullObject
	jne	_270
	call	_brl_blitz_NullObjectError
_270:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_272
	call	_brl_blitz_NullObjectError
_272:
	fld	qword [ebx+24]
	sub	esp,8
	fstp	qword [esp]
	fld	qword [esi+16]
	sub	esp,8
	fstp	qword [esp]
	fld	qword [edi+24]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-64]
	fld	qword [eax+16]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,32
	fstp	qword [ebp-56]
	push	_274
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-56]
	fld	qword [ebp-36]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_275
	mov	eax,ebp
	push	eax
	push	_278
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_276
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-56]
	fstp	qword [ebp-36]
	push	_277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	mov	dword [ebp-40],eax
	call	dword [_bbOnDebugLeaveScope]
_275:
	call	dword [_bbOnDebugLeaveScope]
_33:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_261
	call	_brl_blitz_NullObjectError
_261:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_35
_34:
	push	_281
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAllocation
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-44],eax
	push	_283
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-44]
	cmp	esi,_bbNullObject
	jne	_285
	call	_brl_blitz_NullObjectError
_285:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_288
	call	_brl_blitz_NullObjectError
_288:
	mov	ebx,dword [ebx+8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_292
	push	eax
	call	_bbGCFree
	add	esp,4
_292:
	mov	dword [esi+12],ebx
	push	_293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-44]
	cmp	esi,_bbNullObject
	jne	_295
	call	_brl_blitz_NullObjectError
_295:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_298
	call	_brl_blitz_NullObjectError
_298:
	mov	ebx,dword [ebx+8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_302
	push	eax
	call	_bbGCFree
	add	esp,4
_302:
	mov	dword [esi+8],ebx
	push	_303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_305
	call	_brl_blitz_NullObjectError
_305:
	fld	qword [ebp-36]
	fstp	qword [ebx+16]
	push	_307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_309
	call	_brl_blitz_NullObjectError
_309:
	push	dword [ebp-44]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_310
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-40]
	push	dword [ebp-8]
	call	_brl_linkedlist_ListRemove
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_30:
	add	dword [ebp-28],1
_249:
	cmp	dword [ebp-28],50
	jl	_32
_31:
	call	dword [_bbOnDebugLeaveScope]
_27:
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_244
	call	_brl_blitz_NullObjectError
_244:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_29
_28:
	push	_318
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	qword [ebp-20]
	push	_320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],_bbNullObject
	mov	edi,dword [ebp-12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_324
	call	_brl_blitz_NullObjectError
_324:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_36
_38:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_329
	call	_brl_blitz_NullObjectError
_329:
	push	_bb_TAllocation
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-60],eax
	cmp	dword [ebp-60],_bbNullObject
	je	_36
	mov	eax,ebp
	push	eax
	push	_333
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_332
	call	_brl_blitz_NullObjectError
_332:
	fld	qword [ebp-20]
	fadd	qword [ebx+16]
	fstp	qword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_36:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_327
	call	_brl_blitz_NullObjectError
_327:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_38
_37:
	push	_334
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-20]
	fstp	qword [ebp-80]
	jmp	_80
_80:
	call	dword [_bbOnDebugLeaveScope]
	fld	qword [ebp-80]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Program_Main:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	fldz
	fstp	qword [ebp-16]
	push	ebp
	push	_351
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_339
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_341
	call	_brl_blitz_NullObjectError
_341:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	jmp	_344
_41:
	push	ebp
	push	_350
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_345
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_347
	call	_brl_blitz_NullObjectError
_347:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	fstp	qword [ebp-16]
	push	_349
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbStringFromDouble
	add	esp,8
	push	eax
	push	_42
	push	dword [ebp-8]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_39:
	add	dword [ebp-8],1
_344:
	cmp	dword [ebp-8],100
	jl	_41
_40:
	mov	ebx,0
	jmp	_83
_83:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_95:
	dd	0
_92:
	db	"Greedy",0
_93:
	db	"p",0
_94:
	db	":Program",0
	align	4
_91:
	dd	1
	dd	_92
	dd	2
	dd	_93
	dd	_94
	dd	-4
	dd	0
_44:
	db	"Program",0
_45:
	db	"earthRadius",0
_46:
	db	"d",0
	align	4
_47:
	dd	_bbStringClass
	dd	2147483646
	dd	18
	dw	54,51,54,55,52,53,48,46,48,48,48,48,48,48,48,48
	dw	48,48
_48:
	db	"convert2Rad",0
	align	4
_49:
	dd	_bbStringClass
	dd	2147483646
	dd	20
	dw	48,46,48,49,55,52,53,51,50,57,50,53,49,57,57,52
	dw	51,50,57,53
_50:
	db	"la",0
_51:
	db	":TList",0
_52:
	db	"lr",0
_53:
	db	"New",0
_54:
	db	"()i",0
_55:
	db	"Delete",0
_56:
	db	"DistanceBetweenPointsLatLong",0
_57:
	db	"(d,d,d,d)d",0
_58:
	db	"LoadCSV",0
_59:
	db	"ScheduleResources",0
_60:
	db	"()d",0
_61:
	db	"Main",0
	align	4
_43:
	dd	2
	dd	_44
	dd	1
	dd	_45
	dd	_46
	dd	_47
	dd	1
	dd	_48
	dd	_46
	dd	_49
	dd	3
	dd	_50
	dd	_51
	dd	8
	dd	3
	dd	_52
	dd	_51
	dd	12
	dd	6
	dd	_53
	dd	_54
	dd	16
	dd	6
	dd	_55
	dd	_54
	dd	20
	dd	7
	dd	_56
	dd	_57
	dd	48
	dd	6
	dd	_58
	dd	_54
	dd	52
	dd	6
	dd	_59
	dd	_60
	dd	56
	dd	6
	dd	_61
	dd	_54
	dd	60
	dd	0
	align	4
_bb_Program:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_43
	dd	16
	dd	__bb_Program_New
	dd	__bb_Program_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_Program_DistanceBetweenPointsLatLong
	dd	__bb_Program_LoadCSV
	dd	__bb_Program_ScheduleResources
	dd	__bb_Program_Main
_86:
	db	"C:/Data/Development/FunctionalComparison/BlitzMax/Greedy.bmx",0
	align	4
_85:
	dd	_86
	dd	7
	dd	1
	align	4
_88:
	dd	_86
	dd	8
	dd	1
_101:
	db	"Self",0
	align	4
_100:
	dd	1
	dd	_53
	dd	2
	dd	_101
	dd	_94
	dd	-4
	dd	0
	align	4
_99:
	dd	3
	dd	0
	dd	0
_129:
	db	"lat1",0
_130:
	db	"lon1",0
_131:
	db	"lat2",0
_132:
	db	"lon2",0
_133:
	db	"dStartLatInRad",0
_134:
	db	"dStartLongInRad",0
_135:
	db	"dEndLatInRad",0
_136:
	db	"dEndLongInRad",0
_137:
	db	"dLongitude",0
_138:
	db	"dLatitude",0
_139:
	db	"dSinHalfLatitude",0
_140:
	db	"dSinHalfLongitude",0
_141:
	db	"a",0
_142:
	db	"c",0
	align	4
_128:
	dd	1
	dd	_56
	dd	2
	dd	_129
	dd	_46
	dd	-8
	dd	2
	dd	_130
	dd	_46
	dd	-16
	dd	2
	dd	_131
	dd	_46
	dd	-24
	dd	2
	dd	_132
	dd	_46
	dd	-32
	dd	2
	dd	_133
	dd	_46
	dd	-40
	dd	2
	dd	_134
	dd	_46
	dd	-48
	dd	2
	dd	_135
	dd	_46
	dd	-56
	dd	2
	dd	_136
	dd	_46
	dd	-64
	dd	2
	dd	_137
	dd	_46
	dd	-72
	dd	2
	dd	_138
	dd	_46
	dd	-80
	dd	2
	dd	_139
	dd	_46
	dd	-88
	dd	2
	dd	_140
	dd	_46
	dd	-96
	dd	2
	dd	_141
	dd	_46
	dd	-104
	dd	2
	dd	_142
	dd	_46
	dd	-112
	dd	0
	align	4
_107:
	dd	_86
	dd	17
	dd	3
	align	8
_360:
	dd	0xa2529d39,0x3f91df46
	align	4
_109:
	dd	_86
	dd	18
	dd	3
	align	8
_361:
	dd	0xa2529d39,0x3f91df46
	align	4
_111:
	dd	_86
	dd	19
	dd	3
	align	8
_362:
	dd	0xa2529d39,0x3f91df46
	align	4
_113:
	dd	_86
	dd	20
	dd	3
	align	8
_363:
	dd	0xa2529d39,0x3f91df46
	align	4
_115:
	dd	_86
	dd	21
	dd	3
	align	4
_117:
	dd	_86
	dd	22
	dd	3
	align	4
_119:
	dd	_86
	dd	23
	dd	3
	align	8
_364:
	dd	0x0,0x3fe00000
	align	4
_121:
	dd	_86
	dd	24
	dd	3
	align	8
_365:
	dd	0x0,0x3fe00000
	align	4
_123:
	dd	_86
	dd	25
	dd	3
	align	4
_125:
	dd	_86
	dd	26
	dd	3
	align	4
_127:
	dd	_86
	dd	27
	dd	3
	align	8
_366:
	dd	0x80000000,0x41584a36
_225:
	db	"in",0
_226:
	db	":TStream",0
	align	4
_224:
	dd	1
	dd	_58
	dd	2
	dd	_101
	dd	_94
	dd	-4
	dd	2
	dd	_225
	dd	_226
	dd	-8
	dd	0
	align	4
_143:
	dd	_86
	dd	31
	dd	3
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	58
	dw	67,58,92,68,97,116,97,92,68,101,118,101,108,111,112,109
	dw	101,110,116,92,70,117,110,99,116,105,111,110,97,108,67,111
	dw	109,112,97,114,105,115,111,110,92,68,97,116,97,92,68,97
	dw	116,97,83,80,73,70,46,99,115,118
	align	4
_145:
	dd	_86
	dd	32
	dd	3
_219:
	db	"l",0
_220:
	db	"$",0
_221:
	db	"s",0
_222:
	db	"[]$",0
	align	4
_218:
	dd	3
	dd	0
	dd	2
	dd	_219
	dd	_220
	dd	-12
	dd	2
	dd	_221
	dd	_222
	dd	-16
	dd	0
	align	4
_146:
	dd	_86
	dd	33
	dd	10
	align	4
_148:
	dd	_86
	dd	34
	dd	4
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	44
	align	4
_150:
	dd	_86
	dd	35
	dd	4
_185:
	db	":TActivity",0
	align	4
_184:
	dd	3
	dd	0
	dd	2
	dd	_141
	dd	_185
	dd	-20
	dd	0
	align	4
_155:
	dd	_86
	dd	37
	dd	6
	align	4
_157:
	dd	_86
	dd	38
	dd	6
	align	4
_167:
	dd	_86
	dd	39
	dd	6
	align	4
_173:
	dd	_86
	dd	40
	dd	6
	align	4
_179:
	dd	_86
	dd	41
	dd	6
_216:
	db	"r",0
_217:
	db	":TResource",0
	align	4
_215:
	dd	3
	dd	0
	dd	2
	dd	_216
	dd	_217
	dd	-24
	dd	0
	align	4
_186:
	dd	_86
	dd	43
	dd	6
	align	4
_188:
	dd	_86
	dd	44
	dd	6
	align	4
_198:
	dd	_86
	dd	45
	dd	6
	align	4
_204:
	dd	_86
	dd	46
	dd	6
	align	4
_210:
	dd	_86
	dd	47
	dd	6
	align	4
_223:
	dd	_86
	dd	50
	dd	3
_336:
	db	"lla",0
_337:
	db	"lal",0
_338:
	db	"res",0
	align	4
_335:
	dd	1
	dd	_59
	dd	2
	dd	_101
	dd	_94
	dd	-4
	dd	2
	dd	_336
	dd	_51
	dd	-8
	dd	2
	dd	_337
	dd	_51
	dd	-12
	dd	2
	dd	_338
	dd	_46
	dd	-20
	dd	0
	align	4
_227:
	dd	_86
	dd	54
	dd	3
	align	4
_233:
	dd	_86
	dd	55
	dd	3
	align	4
_235:
	dd	_86
	dd	56
	dd	3
	align	4
_317:
	dd	3
	dd	0
	dd	2
	dd	_216
	dd	_217
	dd	-24
	dd	0
	align	4
_247:
	dd	_86
	dd	57
	dd	4
_312:
	db	"i",0
_313:
	db	"lowest",0
_314:
	db	"lowest_item",0
_315:
	db	"al",0
_316:
	db	":TAllocation",0
	align	4
_311:
	dd	3
	dd	0
	dd	2
	dd	_312
	dd	_312
	dd	-28
	dd	2
	dd	_313
	dd	_46
	dd	-36
	dd	2
	dd	_314
	dd	_185
	dd	-40
	dd	2
	dd	_315
	dd	_316
	dd	-44
	dd	0
	align	4
_250:
	dd	_86
	dd	58
	dd	5
	align	8
_390:
	dd	0x85ebc8a0,0x7fe1ccf3
	align	4
_252:
	dd	_86
	dd	59
	dd	5
	align	4
_254:
	dd	_86
	dd	60
	dd	5
_280:
	db	"dist",0
	align	4
_279:
	dd	3
	dd	0
	dd	2
	dd	_141
	dd	_185
	dd	-48
	dd	2
	dd	_280
	dd	_46
	dd	-56
	dd	0
	align	4
_264:
	dd	_86
	dd	61
	dd	6
	align	4
_274:
	dd	_86
	dd	62
	dd	6
	align	4
_278:
	dd	3
	dd	0
	dd	0
	align	4
_276:
	dd	_86
	dd	63
	dd	7
	align	4
_277:
	dd	_86
	dd	64
	dd	7
	align	4
_281:
	dd	_86
	dd	67
	dd	5
	align	4
_283:
	dd	_86
	dd	68
	dd	5
	align	4
_293:
	dd	_86
	dd	69
	dd	5
	align	4
_303:
	dd	_86
	dd	70
	dd	5
	align	4
_307:
	dd	_86
	dd	71
	dd	5
	align	4
_310:
	dd	_86
	dd	72
	dd	5
	align	4
_318:
	dd	_86
	dd	75
	dd	3
	align	4
_320:
	dd	_86
	dd	76
	dd	3
	align	4
_333:
	dd	3
	dd	0
	dd	2
	dd	_141
	dd	_316
	dd	-60
	dd	0
	align	4
_330:
	dd	_86
	dd	77
	dd	4
	align	4
_334:
	dd	_86
	dd	79
	dd	3
	align	4
_351:
	dd	1
	dd	_61
	dd	2
	dd	_101
	dd	_94
	dd	-4
	dd	0
	align	4
_339:
	dd	_86
	dd	83
	dd	3
	align	4
_342:
	dd	_86
	dd	84
	dd	3
	align	4
_350:
	dd	3
	dd	0
	dd	2
	dd	_312
	dd	_312
	dd	-8
	dd	2
	dd	_216
	dd	_46
	dd	-16
	dd	0
	align	4
_345:
	dd	_86
	dd	85
	dd	4
	align	4
_349:
	dd	_86
	dd	86
	dd	4
	align	4
_42:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	58,32
