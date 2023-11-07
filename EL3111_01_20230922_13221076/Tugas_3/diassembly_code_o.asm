
code.o:     file format pe-i386


Disassembly of section .text:

00000000 <_main>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
   6:	83 ec 10             	sub    $0x10,%esp
   9:	e8 00 00 00 00       	call   e <_main+0xe>
   e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  15:	00 
  16:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  1d:	00 
  1e:	eb 0d                	jmp    2d <_main+0x2d>
  20:	8b 44 24 0c          	mov    0xc(%esp),%eax
  24:	01 44 24 08          	add    %eax,0x8(%esp)
  28:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
  2d:	81 7c 24 0c f3 01 00 	cmpl   $0x1f3,0xc(%esp)
  34:	00 
  35:	7e e9                	jle    20 <_main+0x20>
  37:	8b 44 24 08          	mov    0x8(%esp),%eax
  3b:	c9                   	leave  
  3c:	c3                   	ret    
  3d:	90                   	nop
  3e:	90                   	nop
  3f:	90                   	nop
