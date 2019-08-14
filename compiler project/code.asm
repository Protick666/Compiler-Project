.MODEL SMALL
.STACK 100H
.DATA
a dw ?, ?
c dw ?
i dw ?
j dw ?
d dw ?
.CODE 
MAIN PROC
mov ax, 1
lea di, a
add di, 0
add di, 0
mov [di], ax
mov ax, 5
lea di, a
add di, 1
add di, 1
mov [di], ax
mov ax, 0
mov i, ax
L6:
mov  ax,i
mov t0,ax
mov ax, t0
cmp ax, 2
jl L0
mov t1, 0
jmp L1
L0:
mov t1, 1
L1:
cmp t1,1
jne L7
mov  ax,i
mov t6,ax
mov ax, t6
cmp ax, 0
je L2
mov t7, 0
jmp L3
L2:
mov t7, 1
L3:
mov ax, t7
cmp ax, 1
jne L4
mov ax, 8
lea di, a
add di, 0
add di, 0
mov [di], ax
jmp L5
L4:
mov ax, 7
lea di, a
add di, 1
add di, 1
mov [di], ax
L5:
mov  ax,i
mov t2,ax
mov AX,t2
mov BX,1
ADD AX,BX
MOV t4,AX
mov ax, t4
mov i, ax
jmp L6
L7:


MOV AH,4CH
INT 21H
MAIN ENDP