00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  BAD403            mov dx,0x3d4
00000108  B80903            mov ax,0x309
0000010B  EF                out dx,ax
0000010C  6800A0            push word 0xa000
0000010F  07                pop es
00000110  B03F              mov al,0x3f
00000112  B503              mov ch,0x3
00000114  BFC000            mov di,0xc0
00000117  F3AA              rep stosb
00000119  BEBF00            mov si,0xbf
0000011C  33C0              xor ax,ax
0000011E  E87700            call word 0x198
00000121  43                inc bx
00000122  E87300            call word 0x198
00000125  BEBE00            mov si,0xbe
00000128  E86D00            call word 0x198
0000012B  33F6              xor si,si
0000012D  E86800            call word 0x198
00000130  B81210            mov ax,0x1012
00000133  B1FF              mov cl,0xff
00000135  33D2              xor dx,dx
00000137  CD10              int 0x10
00000139  33FF              xor di,di
0000013B  BEA901            mov si,0x1a9
0000013E  B9803E            mov cx,0x3e80
00000141  F3A5              rep movsw
00000143  B94001            mov cx,0x140
00000146  BF6987            mov di,0x8769
00000149  A1A701            mov ax,[0x1a7]
0000014C  8ADC              mov bl,ah
0000014E  F7E6              mul si
00000150  40                inc ax
00000151  3C20              cmp al,0x20
00000153  7302              jnc 0x157
00000155  8ADC              mov bl,ah
00000157  881D              mov [di],bl
00000159  889DC0FE          mov [di-0x140],bl
0000015D  47                inc di
0000015E  E2EE              loop 0x14e
00000160  A3A701            mov [0x1a7],ax
00000163  BFA901            mov di,0x1a9
00000166  33C0              xor ax,ax
00000168  33D2              xor dx,dx
0000016A  B90087            mov cx,0x8700
0000016D  8A858002          mov al,[di+0x280]
00000171  8A15              mov dl,[di]
00000173  03C2              add ax,dx
00000175  8A954101          mov dl,[di+0x141]
00000179  03C2              add ax,dx
0000017B  8A953F01          mov dl,[di+0x13f]
0000017F  03C2              add ax,dx
00000181  C1E802            shr ax,byte 0x2
00000184  7401              jz 0x187
00000186  48                dec ax
00000187  8805              mov [di],al
00000189  47                inc di
0000018A  E2E1              loop 0x16d
0000018C  B401              mov ah,0x1
0000018E  CD16              int 0x16
00000190  74A7              jz 0x139
00000192  B80300            mov ax,0x3
00000195  CD10              int 0x10
00000197  C3                ret
00000198  B140              mov cl,0x40
0000019A  33C0              xor ax,ax
0000019C  268804            mov [es:si],al
0000019F  02C3              add al,bl
000001A1  83C603            add si,byte +0x3
000001A4  E2F6              loop 0x19c
000001A6  C3                ret
