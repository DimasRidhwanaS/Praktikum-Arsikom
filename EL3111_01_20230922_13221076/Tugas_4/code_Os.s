
code_Os.o:     file format pe-i386


Disassembly of section .text.startup:

00000000 <_main>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
   6:	e8 00 00 00 00       	call   b <_main+0xb>
   b:	b8 4e e7 01 00       	mov    $0x1e74e,%eax
  10:	c9                   	leave  
  11:	c3                   	ret    
  12:	90                   	nop
  13:	90                   	nop
