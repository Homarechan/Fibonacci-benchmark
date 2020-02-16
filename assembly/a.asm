
main:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    rsp,0x8
    1004:	48 8b 05 dd 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fdd]        # 3fe8 <__gmon_start__>
    100b:	48 85 c0             	test   rax,rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	call   rax
    1012:	48 83 c4 08          	add    rsp,0x8
    1016:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	push   QWORD PTR [rip+0x2fe2]        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmp    QWORD PTR [rip+0x2fe4]        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <printf@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    QWORD PTR [rip+0x2fe2]        # 4018 <printf@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <.plt>

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	ff 25 b2 2f 00 00    	jmp    QWORD PTR [rip+0x2fb2]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1046:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000001050 <_start>:
    1050:	31 ed                	xor    ebp,ebp
    1052:	49 89 d1             	mov    r9,rdx
    1055:	5e                   	pop    rsi
    1056:	48 89 e2             	mov    rdx,rsp
    1059:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    105d:	50                   	push   rax
    105e:	54                   	push   rsp
    105f:	4c 8d 05 7a 01 00 00 	lea    r8,[rip+0x17a]        # 11e0 <__libc_csu_fini>
    1066:	48 8d 0d 13 01 00 00 	lea    rcx,[rip+0x113]        # 1180 <__libc_csu_init>
    106d:	48 8d 3d cc 00 00 00 	lea    rdi,[rip+0xcc]        # 1140 <main>
    1074:	ff 15 66 2f 00 00    	call   QWORD PTR [rip+0x2f66]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    107a:	f4                   	hlt    
    107b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001080 <deregister_tm_clones>:
    1080:	48 8d 3d b1 2f 00 00 	lea    rdi,[rip+0x2fb1]        # 4038 <__TMC_END__>
    1087:	48 8d 05 aa 2f 00 00 	lea    rax,[rip+0x2faa]        # 4038 <__TMC_END__>
    108e:	48 39 f8             	cmp    rax,rdi
    1091:	74 15                	je     10a8 <deregister_tm_clones+0x28>
    1093:	48 8b 05 3e 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f3e]        # 3fd8 <_ITM_deregisterTMCloneTable>
    109a:	48 85 c0             	test   rax,rax
    109d:	74 09                	je     10a8 <deregister_tm_clones+0x28>
    109f:	ff e0                	jmp    rax
    10a1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10a8:	c3                   	ret    
    10a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010b0 <register_tm_clones>:
    10b0:	48 8d 3d 81 2f 00 00 	lea    rdi,[rip+0x2f81]        # 4038 <__TMC_END__>
    10b7:	48 8d 35 7a 2f 00 00 	lea    rsi,[rip+0x2f7a]        # 4038 <__TMC_END__>
    10be:	48 29 fe             	sub    rsi,rdi
    10c1:	48 c1 fe 03          	sar    rsi,0x3
    10c5:	48 89 f0             	mov    rax,rsi
    10c8:	48 c1 e8 3f          	shr    rax,0x3f
    10cc:	48 01 c6             	add    rsi,rax
    10cf:	48 d1 fe             	sar    rsi,1
    10d2:	74 14                	je     10e8 <register_tm_clones+0x38>
    10d4:	48 8b 05 15 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f15]        # 3ff0 <_ITM_registerTMCloneTable>
    10db:	48 85 c0             	test   rax,rax
    10de:	74 08                	je     10e8 <register_tm_clones+0x38>
    10e0:	ff e0                	jmp    rax
    10e2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    10e8:	c3                   	ret    
    10e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010f0 <__do_global_dtors_aux>:
    10f0:	80 3d 3e 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f3e],0x0        # 4035 <_edata>
    10f7:	75 2f                	jne    1128 <__do_global_dtors_aux+0x38>
    10f9:	55                   	push   rbp
    10fa:	48 83 3d f6 2e 00 00 	cmp    QWORD PTR [rip+0x2ef6],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1101:	00 
    1102:	48 89 e5             	mov    rbp,rsp
    1105:	74 0c                	je     1113 <__do_global_dtors_aux+0x23>
    1107:	48 8b 3d 1a 2f 00 00 	mov    rdi,QWORD PTR [rip+0x2f1a]        # 4028 <__dso_handle>
    110e:	e8 2d ff ff ff       	call   1040 <__cxa_finalize@plt>
    1113:	e8 68 ff ff ff       	call   1080 <deregister_tm_clones>
    1118:	c6 05 16 2f 00 00 01 	mov    BYTE PTR [rip+0x2f16],0x1        # 4035 <_edata>
    111f:	5d                   	pop    rbp
    1120:	c3                   	ret    
    1121:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1128:	c3                   	ret    
    1129:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001130 <frame_dummy>:
    1130:	e9 7b ff ff ff       	jmp    10b0 <register_tm_clones>
    1135:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    113c:	00 00 00 
    113f:	90                   	nop

0000000000001140 <main>:
    1140:	bf 28 00 00 00       	mov    edi,0x28
    1145:	e8 1b 00 00 00       	call   1165 <fib>
    114a:	48 8d 3d df 2e 00 00 	lea    rdi,[rip+0x2edf]        # 4030 <format>
    1151:	48 89 c6             	mov    rsi,rax
    1154:	31 c0                	xor    eax,eax
    1156:	e8 d5 fe ff ff       	call   1030 <printf@plt>
    115b:	b8 3c 00 00 00       	mov    eax,0x3c
    1160:	48 31 ff             	xor    rdi,rdi
    1163:	0f 05                	syscall 

0000000000001165 <fib>:
    1165:	89 f8                	mov    eax,edi
    1167:	83 ef 01             	sub    edi,0x1
    116a:	7e 10                	jle    117c <fib_done>
    116c:	31 c9                	xor    ecx,ecx
    116e:	b8 01 00 00 00       	mov    eax,0x1

0000000000001173 <fib_loop>:
    1173:	48 0f c1 c8          	xadd   rax,rcx
    1177:	83 ef 01             	sub    edi,0x1
    117a:	75 f7                	jne    1173 <fib_loop>

000000000000117c <fib_done>:
    117c:	c3                   	ret    
    117d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001180 <__libc_csu_init>:
    1180:	41 57                	push   r15
    1182:	49 89 d7             	mov    r15,rdx
    1185:	41 56                	push   r14
    1187:	49 89 f6             	mov    r14,rsi
    118a:	41 55                	push   r13
    118c:	41 89 fd             	mov    r13d,edi
    118f:	41 54                	push   r12
    1191:	4c 8d 25 50 2c 00 00 	lea    r12,[rip+0x2c50]        # 3de8 <__frame_dummy_init_array_entry>
    1198:	55                   	push   rbp
    1199:	48 8d 2d 50 2c 00 00 	lea    rbp,[rip+0x2c50]        # 3df0 <__init_array_end>
    11a0:	53                   	push   rbx
    11a1:	4c 29 e5             	sub    rbp,r12
    11a4:	48 83 ec 08          	sub    rsp,0x8
    11a8:	e8 53 fe ff ff       	call   1000 <_init>
    11ad:	48 c1 fd 03          	sar    rbp,0x3
    11b1:	74 1b                	je     11ce <__libc_csu_init+0x4e>
    11b3:	31 db                	xor    ebx,ebx
    11b5:	0f 1f 00             	nop    DWORD PTR [rax]
    11b8:	4c 89 fa             	mov    rdx,r15
    11bb:	4c 89 f6             	mov    rsi,r14
    11be:	44 89 ef             	mov    edi,r13d
    11c1:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    11c5:	48 83 c3 01          	add    rbx,0x1
    11c9:	48 39 dd             	cmp    rbp,rbx
    11cc:	75 ea                	jne    11b8 <__libc_csu_init+0x38>
    11ce:	48 83 c4 08          	add    rsp,0x8
    11d2:	5b                   	pop    rbx
    11d3:	5d                   	pop    rbp
    11d4:	41 5c                	pop    r12
    11d6:	41 5d                	pop    r13
    11d8:	41 5e                	pop    r14
    11da:	41 5f                	pop    r15
    11dc:	c3                   	ret    
    11dd:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000011e0 <__libc_csu_fini>:
    11e0:	c3                   	ret    

Disassembly of section .fini:

00000000000011e4 <_fini>:
    11e4:	48 83 ec 08          	sub    rsp,0x8
    11e8:	48 83 c4 08          	add    rsp,0x8
    11ec:	c3                   	ret    
