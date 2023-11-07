
code_O1.o:     file format pe-i386


Disassembly of section .text:

00000000 <_main>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
   6:	e8 00 00 00 00       	call   b <_main+0xb>
   b:	b8 00 00 00 00       	mov    $0x0,%eax
  10:	83 c0 01             	add    $0x1,%eax
  13:	3d f4 01 00 00       	cmp    $0x1f4,%eax
  18:	75 f6                	jne    10 <_main+0x10>
  1a:	b8 4e e7 01 00       	mov    $0x1e74e,%eax
  1f:	c9                   	leave  
  20:	c3                   	ret    
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop
