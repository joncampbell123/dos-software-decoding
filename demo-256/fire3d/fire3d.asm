00000100  8CCB              mov bx,cs
00000102  FEC7              inc bh
00000104  8EC3              mov es,bx
00000106  BD7798            mov bp,0x9877
00000109  B5C8              mov ch,0xc8
0000010B  F3AB              rep stosw
0000010D  B013              mov al,0x13
0000010F  CD10              int 0x10
00000111  BAD201            mov dx,0x1d2
00000114  B409              mov ah,0x9
00000116  CD21              int 0x21
00000118  8EDB              mov ds,bx
0000011A  BAC903            mov dx,0x3c9
0000011D  91                xchg ax,cx
0000011E  EE                out dx,al
0000011F  EE                out dx,al
00000120  EE                out dx,al
00000121  40                inc ax
00000122  75FA              jnz 0x11e
00000124  BE0614            mov si,0x1406
00000127  93                xchg ax,bx
00000128  95                xchg ax,bp
00000129  BA7B85            mov dx,0x857b
0000012C  0317              add dx,[bx]
0000012E  F7E2              mul dx
00000130  40                inc ax
00000131  8907              mov [bx],ax
00000133  80C302            add bl,0x2
00000136  75F1              jnz 0x129
00000138  95                xchg ax,bp
00000139  FECB              dec bl
0000013B  BF0051            mov di,0x5100
0000013E  0FB64502          movzx ax,[di+0x2]
00000142  0201              add al,[bx+di]
00000144  80D400            adc ah,0x0
00000147  43                inc bx
00000148  0201              add al,[bx+di]
0000014A  80D400            adc ah,0x0
0000014D  43                inc bx
0000014E  0201              add al,[bx+di]
00000150  80D400            adc ah,0x0
00000153  F7DB              neg bx
00000155  78EB              js 0x142
00000157  0245FE            add al,[di-0x2]
0000015A  80D400            adc ah,0x0
0000015D  C1E803            shr ax,byte 0x3
00000160  7405              jz 0x167
00000162  3C20              cmp al,0x20
00000164  7701              ja 0x167
00000166  48                dec ax
00000167  88850002          mov [di+0x200],al
0000016B  4F                dec di
0000016C  75D0              jnz 0x13e
0000016E  6800A0            push word 0xa000
00000171  07                pop es
00000172  99                cwd
00000173  B492              mov ah,0x92
00000175  2AA4FF3E          sub ah,[si+0x3eff]
00000179  B13D              mov cl,0x3d
0000017B  8AF9              mov bh,cl
0000017D  8A40FD            mov al,[bx+si-0x3]
00000180  0414              add al,0x14
00000182  2A4003            sub al,[bx+si+0x3]
00000185  B214              mov dl,0x14
00000187  2AD1              sub dl,cl
00000189  7F02              jg 0x18d
0000018B  32D2              xor dl,dl
0000018D  2AC2              sub al,dl
0000018F  7F02              jg 0x193
00000191  32C0              xor al,al
00000193  B255              mov dl,0x55
00000195  2A10              sub dl,[bx+si]
00000197  02D1              add dl,cl
00000199  32FF              xor bh,bh
0000019B  678D3C92          lea di,[dword edx+edx*4]
0000019F  C1E706            shl di,byte 0x6
000001A2  03FB              add di,bx
000001A4  83C720            add di,byte +0x20
000001A7  3AD4              cmp dl,ah
000001A9  7309              jnc 0x1b4
000001AB  AA                stosb
000001AC  FECC              dec ah
000001AE  81C73F01          add di,0x13f
000001B2  EBF3              jmp short 0x1a7
000001B4  E2C5              loop 0x17b
000001B6  B114              mov cl,0x14
000001B8  32C0              xor al,al
000001BA  AA                stosb
000001BB  81EF4101          sub di,0x141
000001BF  E2F9              loop 0x1ba
000001C1  4B                dec bx
000001C2  75AE              jnz 0x172
000001C4  E460              in al,0x60
000001C6  FEC8              dec al
000001C8  0F855CFF          jnz word 0x128
000001CC  B80300            mov ax,0x3
000001CF  CD10              int 0x10
000001D1  C3                ret
000001D2  46                inc si
000001D3  6972652033        imul si,[bp+si+0x65],word 0x3320
000001D8  44                inc sp
000001D9  24                db 0x24
