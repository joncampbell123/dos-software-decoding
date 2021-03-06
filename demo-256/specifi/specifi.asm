00000100  BDFF01            mov bp,0x1ff
00000103  BF0002            mov di,0x200
00000106  B91B00            mov cx,0x1b
00000109  F3AB              rep stosw
0000010B  B81300            mov ax,0x13
0000010E  CD10              int 0x10
00000110  8CD8              mov ax,ds
00000112  050010            add ax,0x1000
00000115  8EC0              mov es,ax
00000117  E83A00            call word 0x154
0000011A  2403              and al,0x3
0000011C  AA                stosb
0000011D  E2F8              loop 0x117
0000011F  C6067201BF        mov byte [0x172],0xbf
00000124  B07F              mov al,0x7f
00000126  BAC803            mov dx,0x3c8
00000129  EE                out dx,al
0000012A  42                inc dx
0000012B  8AD8              mov bl,al
0000012D  D0E8              shr al,1
0000012F  EE                out dx,al
00000130  EE                out dx,al
00000131  8AC3              mov al,bl
00000133  C0E802            shr al,byte 0x2
00000136  3404              xor al,0x4
00000138  EE                out dx,al
00000139  4A                dec dx
0000013A  8AC3              mov al,bl
0000013C  F6D0              not al
0000013E  EE                out dx,al
0000013F  42                inc dx
00000140  8AC3              mov al,bl
00000142  D0E8              shr al,1
00000144  EE                out dx,al
00000145  EE                out dx,al
00000146  EE                out dx,al
00000147  4A                dec dx
00000148  8AC3              mov al,bl
0000014A  48                dec ax
0000014B  79DC              jns 0x129
0000014D  06                push es
0000014E  1F                pop ds
0000014F  B800A0            mov ax,0xa000
00000152  8EC0              mov es,ax
00000154  8776FC            xchg si,[bp-0x4]
00000157  877EFE            xchg di,[bp-0x2]
0000015A  8A02              mov al,[bp+si]
0000015C  0203              add al,[bp+di]
0000015E  8803              mov [bp+di],al
00000160  4E                dec si
00000161  7903              jns 0x166
00000163  BE3700            mov si,0x37
00000166  4F                dec di
00000167  7903              jns 0x16c
00000169  BF3700            mov di,0x37
0000016C  8776FC            xchg si,[bp-0x4]
0000016F  877EFE            xchg di,[bp-0x2]
00000172  C3                ret
00000173  0100              add [bx+si],ax
00000175  BB4001            mov bx,0x140
00000178  2403              and al,0x3
0000017A  740E              jz 0x18a
0000017C  87FB              xchg di,bx
0000017E  A801              test al,0x1
00000180  7402              jz 0x184
00000182  F7DB              neg bx
00000184  A802              test al,0x2
00000186  7402              jz 0x18a
00000188  F7DF              neg di
0000018A  33ED              xor bp,bp
0000018C  89BE7601          mov [bp+0x176],di
00000190  899E7301          mov [bp+0x173],bx
00000194  8D990000          lea bx,[bx+di+0x0]
00000198  BF0000            mov di,0x0
0000019B  899E9601          mov [bp+0x196],bx
0000019F  8A4505            mov al,[di+0x5]
000001A2  8A4DFF            mov cl,[di-0x1]
000001A5  800703            add byte [bx],0x3
000001A8  8A95BEFE          mov dl,[di-0x142]
000001AC  8A9D4001          mov bl,[di+0x140]
000001B0  B400              mov ah,0x0
000001B2  B700              mov bh,0x0
000001B4  B500              mov ch,0x0
000001B6  B600              mov dh,0x0
000001B8  01D8              add ax,bx
000001BA  01D1              add cx,dx
000001BC  03C1              add ax,cx
000001BE  C1E802            shr ax,byte 0x2
000001C1  2C01              sub al,0x1
000001C3  1400              adc al,0x0
000001C5  3401              xor al,0x1
000001C7  8805              mov [di],al
000001C9  FF869901          inc word [bp+0x199]
000001CD  BDFF01            mov bp,0x1ff
000001D0  7582              jnz 0x154
000001D2  FE4EFB            dec byte [bp-0x5]
000001D5  7501              jnz 0x1d8
000001D7  C3                ret
000001D8  50                push ax
000001D9  BADA03            mov dx,0x3da
000001DC  EC                in al,dx
000001DD  2408              and al,0x8
000001DF  75FB              jnz 0x1dc
000001E1  EC                in al,dx
000001E2  2408              and al,0x8
000001E4  74FB              jz 0x1e1
000001E6  58                pop ax
000001E7  B9007D            mov cx,0x7d00
000001EA  33FF              xor di,di
000001EC  33F6              xor si,si
000001EE  E460              in al,0x60
000001F0  F3A5              rep movsw
000001F2  84C0              test al,al
000001F4  7903              jns 0x1f9
000001F6  E95BFF            jmp word 0x154
000001F9  C3                ret
000001FA  803700            xor byte [bx],0x0
000001FD  1800              sbb [bx+si],al
000001FF  01                db 0x01
