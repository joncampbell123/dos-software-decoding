00000100  EB1B              jmp short 0x11d
00000102  90                nop
00000103  A1D101            mov ax,[0x1d1]
00000106  02C4              add al,ah
00000108  C1C806            ror ax,byte 0x6
0000010B  A3D101            mov [0x1d1],ax
0000010E  C3                ret
0000010F  BADA03            mov dx,0x3da
00000112  EC                in al,dx
00000113  A808              test al,0x8
00000115  75FB              jnz 0x112
00000117  EC                in al,dx
00000118  A808              test al,0x8
0000011A  74FB              jz 0x117
0000011C  C3                ret
0000011D  B81300            mov ax,0x13
00000120  CD10              int 0x10
00000122  6800A0            push word 0xa000
00000125  07                pop es
00000126  BB3F00            mov bx,0x3f
00000129  8AC3              mov al,bl
0000012B  BAC803            mov dx,0x3c8
0000012E  EE                out dx,al
0000012F  42                inc dx
00000130  B90300            mov cx,0x3
00000133  EE                out dx,al
00000134  E2FD              loop 0x133
00000136  4B                dec bx
00000137  75F0              jnz 0x129
00000139  B92C01            mov cx,0x12c
0000013C  BF823E            mov di,0x3e82
0000013F  E8CDFF            call word 0x10f
00000142  E8BEFF            call word 0x103
00000145  8AE0              mov ah,al
00000147  80C410            add ah,0x10
0000014A  253030            and ax,0x3030
0000014D  AB                stosw
0000014E  268985803E        mov [es:di+0x3e80],ax
00000153  268985007D        mov [es:di+0x7d00],ax
00000158  26898580BB        mov [es:di-0x4480],ax
0000015D  83EF04            sub di,byte +0x4
00000160  75E0              jnz 0x142
00000162  E2D8              loop 0x13c
00000164  B93F00            mov cx,0x3f
00000167  BAC803            mov dx,0x3c8
0000016A  8AC1              mov al,cl
0000016C  EE                out dx,al
0000016D  42                inc dx
0000016E  EE                out dx,al
0000016F  B040              mov al,0x40
00000171  2AC1              sub al,cl
00000173  EE                out dx,al
00000174  B03F              mov al,0x3f
00000176  EE                out dx,al
00000177  FEC9              dec cl
00000179  75EC              jnz 0x167
0000017B  B94000            mov cx,0x40
0000017E  E88EFF            call word 0x10f
00000181  BFFEF9            mov di,0xf9fe
00000184  268A05            mov al,[es:di]
00000187  2602854001        add al,[es:di+0x140]
0000018C  2C03              sub al,0x3
0000018E  D0E8              shr al,1
00000190  243F              and al,0x3f
00000192  268805            mov [es:di],al
00000195  4F                dec di
00000196  75EC              jnz 0x184
00000198  E2E4              loop 0x17e
0000019A  B80300            mov ax,0x3
0000019D  CD10              int 0x10
0000019F  BAAA01            mov dx,0x1aa
000001A2  B409              mov ah,0x9
000001A4  CD21              int 0x21
000001A6  B44C              mov ah,0x4c
000001A8  CD21              int 0x21
000001AA  22496E            and cl,[bx+di+0x6e]
000001AD  61                popaw
000001AE  206761            and [bx+0x61],ah
000001B1  646461            fs popaw
000001B4  206461            and [si+0x61],ah
000001B7  7669              jna 0x222
000001B9  6461              fs popaw
000001BB  2C20              sub al,0x20
000001BD  626162            bound sp,[bx+di+0x62]
000001C0  7922              jns 0x1e4
000001C2  202D              and [di],ch
000001C4  20506C            and [bx+si+0x6c],dl
000001C7  7563              jnz 0x22c
000001C9  6B792044          imul di,[bx+di+0x20],byte +0x44
000001CD  7563              jnz 0x232
000001CF  6B2401            imul sp,[si],byte +0x1
