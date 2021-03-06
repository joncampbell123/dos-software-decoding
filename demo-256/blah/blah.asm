00000100  33D2              xor dx,dx
00000102  B660              mov dh,0x60
00000104  8EE2              mov fs,dx
00000106  B6A0              mov dh,0xa0
00000108  8EC2              mov es,dx
0000010A  B013              mov al,0x13
0000010C  CD10              int 0x10
0000010E  BAC803            mov dx,0x3c8
00000111  93                xchg ax,bx
00000112  EE                out dx,al
00000113  42                inc dx
00000114  B1FF              mov cl,0xff
00000116  8AC1              mov al,cl
00000118  F6D8              neg al
0000011A  C0F802            sar al,byte 0x2
0000011D  EE                out dx,al
0000011E  EE                out dx,al
0000011F  0C08              or al,0x8
00000121  EE                out dx,al
00000122  E2F2              loop 0x116
00000124  06                push es
00000125  0E                push cs
00000126  07                pop es
00000127  BF0002            mov di,0x200
0000012A  B504              mov ch,0x4
0000012C  B8000A            mov ax,0xa00
0000012F  AB                stosw
00000130  B82003            mov ax,0x320
00000133  AB                stosw
00000134  E88300            call word 0x1ba
00000137  E88000            call word 0x1ba
0000013A  E2F0              loop 0x12c
0000013C  07                pop es
0000013D  BE0002            mov si,0x200
00000140  B504              mov ch,0x4
00000142  8B4404            mov ax,[si+0x4]
00000145  0104              add [si],ax
00000147  8B4402            mov ax,[si+0x2]
0000014A  034406            add ax,[si+0x6]
0000014D  894402            mov [si+0x2],ax
00000150  C1F804            sar ax,byte 0x4
00000153  8BF8              mov di,ax
00000155  69FF4001          imul di,di,word 0x140
00000159  3CBE              cmp al,0xbe
0000015B  760A              jna 0x167
0000015D  F75C06            neg word [si+0x6]
00000160  D17C06            sar word [si+0x6],1
00000163  C17C0402          sar word [si+0x4],byte 0x2
00000167  AD                lodsw
00000168  C1F804            sar ax,byte 0x4
0000016B  FF4404            inc word [si+0x4]
0000016E  03F8              add di,ax
00000170  83C606            add si,byte +0x6
00000173  64C605FF          mov byte [fs:di],0xff
00000177  E2C9              loop 0x142
00000179  FECB              dec bl
0000017B  74A7              jz 0x124
0000017D  1E                push ds
0000017E  0FA0              push fs
00000180  1F                pop ds
00000181  33FF              xor di,di
00000183  B5FA              mov ch,0xfa
00000185  8A5501            mov dl,[di+0x1]
00000188  03C2              add ax,dx
0000018A  8A95C0FE          mov dl,[di-0x140]
0000018E  03C2              add ax,dx
00000190  8A954001          mov dl,[di+0x140]
00000194  03C2              add ax,dx
00000196  C1E802            shr ax,byte 0x2
00000199  7401              jz 0x19c
0000019B  48                dec ax
0000019C  8805              mov [di],al
0000019E  47                inc di
0000019F  E2E4              loop 0x185
000001A1  87F9              xchg di,cx
000001A3  33F6              xor si,si
000001A5  F3A4              rep movsb
000001A7  1F                pop ds
000001A8  E460              in al,0x60
000001AA  3C01              cmp al,0x1
000001AC  758F              jnz 0x13d
000001AE  B80300            mov ax,0x3
000001B1  CD10              int 0x10
000001B3  B409              mov ah,0x9
000001B5  BAC501            mov dx,0x1c5
000001B8  CD21              int 0x21
000001BA  69ED6D4E          imul bp,bp,word 0x4e6d
000001BE  8BC5              mov ax,bp
000001C0  C1F809            sar ax,byte 0x9
000001C3  AB                stosw
000001C4  C3                ret
000001C5  3C69              cmp al,0x69
000001C7  6E                outsb
000001C8  7365              jnc 0x22f
000001CA  7274              jc 0x240
000001CC  206120            and [bx+di+0x20],ah
000001CF  7072              jo 0x243
000001D1  6F                outsw
000001D2  666F              outsd
000001D4  756E              jnz 0x244
000001D6  64206275          and [fs:bp+si+0x75],ah
000001DA  7420              jz 0x1fc
000001DC  7374              jnc 0x252
000001DE  696C6C2063        imul bp,[si+0x6c],word 0x6320
000001E3  6F                outsw
000001E4  6E                outsb
000001E5  667573            o32 jnz 0x25b
000001E8  696E67206D        imul bp,[bp+0x67],word 0x6d20
000001ED  657373            gs jnc 0x263
000001F0  61                popaw
000001F1  67653E206779      and [ds:edi+0x79],ah
000001F7  727A              jc 0x273
000001F9  6F                outsw
000001FA  6F                outsw
000001FB  6E                outsb
000001FC  2039              and [bx+di],bh
000001FE  37                aaa
000001FF  24                db 0x24
