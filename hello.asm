section   .text
tak:
      mov	[str+240],rdi
      mov	[str+248],rsi
      mov	[str+256],rdx
      mov	rax,[str+240]
      mov	rcx,[str+248]
      mov	rdx,[str+256]
      cmp	rcx,rax
      jl	_0cmp
      mov	rbx,0
      jmp	_0cmpback
_0cmp:
      mov	rbx,1
_0cmpback:
      cmp	rbx,0
      je	_0else
_0if:
      mov	rbx,rax
      sub	rbx,1
      push	rax
      mov	[str+24],rax
      push	rcx
      mov	[str+32],rcx
      push	rdx
      mov	[str+40],rdx
      push	rbx
      mov	[str+48],rbx
      mov	rdi,[str+48]
      mov	rsi,[str+32]
      mov	rdx,[str+40]
      call	tak
      mov	rbp,rax
      pop	rbx
      pop	rdx
      pop	rcx
      pop	rax
      mov	rsi,rcx
      sub	rsi,1
      push	rax
      mov	[str+56],rax
      push	rcx
      mov	[str+64],rcx
      push	rdx
      mov	[str+72],rdx
      push	rbx
      mov	[str+80],rbx
      push	rbp
      mov	[str+88],rbp
      push	rsi
      mov	[str+96],rsi
      mov	rdi,[str+96]
      mov	rsi,[str+72]
      mov	rdx,[str+56]
      call	tak
      mov	rdi,rax
      pop	rsi
      pop	rbp
      pop	rbx
      pop	rdx
      pop	rcx
      pop	rax
      mov	r8,rdx
      sub	r8,1
      push	rax
      mov	[str+104],rax
      push	rcx
      mov	[str+112],rcx
      push	rdx
      mov	[str+120],rdx
      push	rbx
      mov	[str+128],rbx
      push	rbp
      mov	[str+136],rbp
      push	rsi
      mov	[str+144],rsi
      push	rdi
      mov	[str+152],rdi
      push	r8
      mov	[str+160],r8
      mov	rdi,[str+160]
      mov	rsi,[str+104]
      mov	rdx,[str+112]
      call	tak
      mov	r9,rax
      pop	r8
      pop	rdi
      pop	rsi
      pop	rbp
      pop	rbx
      pop	rdx
      pop	rcx
      pop	rax
      push	rax
      mov	[str+168],rax
      push	rcx
      mov	[str+176],rcx
      push	rdx
      mov	[str+184],rdx
      push	rbx
      mov	[str+192],rbx
      push	rbp
      mov	[str+200],rbp
      push	rsi
      mov	[str+208],rsi
      push	rdi
      mov	[str+216],rdi
      push	r8
      mov	[str+224],r8
      push	r9
      mov	[str+232],r9
      mov	rdi,[str+200]
      mov	rsi,[str+216]
      mov	rdx,[str+232]
      call	tak
      mov	r10,rax
      pop	r9
      pop	r8
      pop	rdi
      pop	rsi
      pop	rbp
      pop	rbx
      pop	rdx
      pop	rcx
      pop	rax
      mov	r11,1
      add	r11,r10
      mov	rax,r11
      ret
      jmp	_0ifback
_0else:
      mov	rax,rdx
      ret
_0ifback:
main:
      mov	rdi,18
      mov	rsi,12
      mov	rdx,6
      call	tak
      mov	rdi,rax
      mov	rax,60
      syscall
section   .bss
str:      resb      64  
