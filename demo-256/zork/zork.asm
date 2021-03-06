00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  BAC803            mov dx,0x3c8
00000107  B080              mov al,0x80
00000109  EE                out dx,al
0000010A  42                inc dx
0000010B  B140              mov cl,0x40
0000010D  8AC3              mov al,bl
0000010F  EE                out dx,al
00000110  33C0              xor ax,ax
00000112  EE                out dx,al
00000113  EE                out dx,al
00000114  43                inc bx
00000115  E2F6              loop 0x10d
00000117  B140              mov cl,0x40
00000119  4B                dec bx
0000011A  8AC3              mov al,bl
0000011C  EE                out dx,al
0000011D  33C0              xor ax,ax
0000011F  EE                out dx,al
00000120  EE                out dx,al
00000121  E2F6              loop 0x119
00000123  BD1900            mov bp,0x19
00000126  680090            push word 0x9000
00000129  07                pop es
0000012A  33FF              xor di,di
0000012C  B9C800            mov cx,0xc8
0000012F  BB4001            mov bx,0x140
00000132  8BC1              mov ax,cx
00000134  F7E6              mul si
00000136  F7E3              mul bx
00000138  C1F808            sar ax,byte 0x8
0000013B  3C80              cmp al,0x80
0000013D  7702              ja 0x141
0000013F  33C0              xor ax,ax
00000141  AA                stosb
00000142  4B                dec bx
00000143  75ED              jnz 0x132
00000145  E2E8              loop 0x12f
00000147  81FE000A          cmp si,0xa00
0000014B  7202              jc 0x14f
0000014D  F7DD              neg bp
0000014F  03F5              add si,bp
00000151  60                pushaw
00000152  26C606202609      mov byte [es:0x2620],0x9
00000158  0E                push cs
00000159  07                pop es
0000015A  BFF901            mov di,0x1f9
0000015D  B9A000            mov cx,0xa0
00000160  33C0              xor ax,ax
00000162  F3AB              rep stosw
00000164  26C606990201      mov byte [es:0x299],0x1
0000016A  BD0100            mov bp,0x1
0000016D  2E8A86F801        mov al,[cs:bp+0x1f8]
00000172  2E3286FA01        xor al,[cs:bp+0x1fa]
00000177  7413              jz 0x18c
00000179  680090            push word 0x9000
0000017C  07                pop es
0000017D  BF1F00            mov di,0x1f
00000180  03FB              add di,bx
00000182  69FF4001          imul di,di,word 0x140
00000186  03FD              add di,bp
00000188  26C60509          mov byte [es:di],0x9
0000018C  2E88863903        mov [cs:bp+0x339],al
00000191  45                inc bp
00000192  81FD3F01          cmp bp,0x13f
00000196  72D5              jc 0x16d
00000198  0E                push cs
00000199  07                pop es
0000019A  BFF901            mov di,0x1f9
0000019D  47                inc di
0000019E  0E                push cs
0000019F  1F                pop ds
000001A0  BE3903            mov si,0x339
000001A3  46                inc si
000001A4  B99F00            mov cx,0x9f
000001A7  F3A5              rep movsw
000001A9  43                inc bx
000001AA  83FB7F            cmp bx,byte +0x7f
000001AD  72BB              jc 0x16a
000001AF  BADA03            mov dx,0x3da
000001B2  EC                in al,dx
000001B3  2408              and al,0x8
000001B5  75FB              jnz 0x1b2
000001B7  EC                in al,dx
000001B8  2408              and al,0x8
000001BA  74FB              jz 0x1b7
000001BC  680090            push word 0x9000
000001BF  1F                pop ds
000001C0  33F6              xor si,si
000001C2  6800A0            push word 0xa000
000001C5  07                pop es
000001C6  33FF              xor di,di
000001C8  B9007D            mov cx,0x7d00
000001CB  F3A5              rep movsw
000001CD  61                popaw
000001CE  E460              in al,0x60
000001D0  48                dec ax
000001D1  7403              jz 0x1d6
000001D3  E950FF            jmp word 0x126
000001D6  B003              mov al,0x3
000001D8  CD10              int 0x10
000001DA  0E                push cs
000001DB  1F                pop ds
000001DC  BAE401            mov dx,0x1e4
000001DF  B409              mov ah,0x9
000001E1  CD21              int 0x21
000001E3  C3                ret
000001E4  43                inc bx
000001E5  6F                outsw
000001E6  64653A20          cmp ah,[gs:bx+si]
000001EA  46                inc si
000001EB  7573              jnz 0x260
000001ED  7469              jz 0x258
000001EF  632F              arpl [bx],bp
000001F1  50                push ax
000001F2  6C                insb
000001F3  61                popaw
000001F4  746F              jz 0x265
000001F6  6F                outsw
000001F7  6E                outsb
000001F8  24                db 0x24
