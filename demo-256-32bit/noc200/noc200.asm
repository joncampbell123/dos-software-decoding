00000100  0E                push cs
00000101  1F                pop ds
00000102  B40F              mov ah,0xf
00000104  CD10              int 0x10
00000106  A2C801            mov [0x1c8],al
00000109  B81300            mov ax,0x13
0000010C  CD10              int 0x10
0000010E  6800A0            push word 0xa000
00000111  07                pop es
00000112  E87000            call word 0x185
00000115  E89200            call word 0x1aa
00000118  25FF7F            and ax,0x7fff
0000011B  05C078            add ax,0x78c0
0000011E  8904              mov [si],ax
00000120  8BF8              mov di,ax
00000122  E88500            call word 0x1aa
00000125  268805            mov [es:di],al
00000128  B401              mov ah,0x1
0000012A  CD16              int 0x16
0000012C  750A              jnz 0x138
0000012E  BADA03            mov dx,0x3da
00000131  EC                in al,dx
00000132  A808              test al,0x8
00000134  74F2              jz 0x128
00000136  EBDA              jmp short 0x112
00000138  32E4              xor ah,ah
0000013A  CD16              int 0x16
0000013C  32E4              xor ah,ah
0000013E  A0C801            mov al,[0x1c8]
00000141  CD10              int 0x10
00000143  B80113            mov ax,0x1301
00000146  B92B00            mov cx,0x2b
00000149  0E                push cs
0000014A  07                pop es
0000014B  BD5A01            mov bp,0x15a
0000014E  33D2              xor dx,dx
00000150  BB0E00            mov bx,0xe
00000153  CD10              int 0x10
00000155  B8004C            mov ax,0x4c00
00000158  CD21              int 0x21
0000015A  54                push sp
0000015B  6F                outsw
0000015C  746F              jz 0x1cd
0000015E  20496E            and [bx+di+0x6e],cl
00000161  7472              jz 0x1d5
00000163  6F                outsw
00000164  206D61            and [di+0x61],ch
00000167  206A65            and [bp+si+0x65],ch
0000016A  6E                outsb
0000016B  2032              and [bp+si],dh
0000016D  3030              xor [bx+si],dh
0000016F  206279            and [bp+si+0x79],ah
00000172  7475              jz 0x1e9
00000174  202D              and [di],ch
00000176  2028              and [bx+si],ch
00000178  6329              arpl [bx+di],bp
0000017A  204461            and [si+0x61],al
0000017D  7665              jna 0x1e4
0000017F  204B65            and [bp+di+0x65],cl
00000182  7072              jo 0x1f6
00000184  74B8              jz 0x13e
00000186  00A0061F          add [bx+si+0x1f06],ah
0000018A  BF0000            mov di,0x0
0000018D  BE4001            mov si,0x140
00000190  FC                cld
00000191  B9303E            mov cx,0x3e30
00000194  F366A5            rep movsd
00000197  0E                push cs
00000198  1F                pop ds
00000199  C3                ret
0000019A  69C04001          imul ax,ax,word 0x140
0000019E  03D8              add bx,ax
000001A0  26880F            mov [es:bx],cl
000001A3  C3                ret
000001A4  41                inc cx
000001A5  6C                insb
000001A6  657939            gs jns 0x1e2
000001A9  3566B8            xor ax,0xb866
000001AC  E7F0              out 0xf0,ax
000001AE  FB                sti
000001AF  41                inc cx
000001B0  66F726C401        mul dword [0x1c4]
000001B5  6605997B0100      add eax,0x17b99
000001BB  66A3C401          mov [0x1c4],eax
000001BF  66C1E80F          shr eax,byte 0xf
000001C3  C3                ret
000001C4  0000              add [bx+si],al
000001C6  0000              add [bx+si],al
