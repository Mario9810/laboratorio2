//Universidad del Valle de Guatemala
//Programación de Microprocesadores
//Guatemala 21 de julio de 2019
// Fernando José Garavito Ovando 18071

.model small ; Definimos el modelo de la memoria
.stack 64; Definimos el tamaño de la pila
.data; Definimos las variables

msj1 db "Ingrese el primer numero a multiplicar: ",13,10, '$'
msj2 db "Ingrese el segundo numero a multiplicar: ",13,10, '$'
msj3 db "El resultado es: ",'$'

suma db 0
num1 db 0
num2 db 0
reg1 db 0
reg2 db 0
salto db " ",13,10,'$'

.code ; Iniciamos el Temario 2
mov ax,@data ; Direccionamiento 
mov ds,ax ;Posicionamiento

;Limpiamos la pantalla
mov ah, 00
mov al, 03h
int 10h

mov ah,02h
mov dl,00
int 10h

mov ah,09h
lea dx,msj1
int 21h

mov ah,01h
int 21h

sub al,30h
mov num1,al
int 21h

mov ah,09h
lea dx,salto
int 21h

mov ah, 09h
lea dx, msj2
int 21h

mov ah,01h
int 21h

sub al,30h
mov num2,al
int 21h

mov c1,num2
sumar:
mov al,num1
add al,suma
mov suma,al
loop sumar

mov ah, 09h
lea dx, msj3
int 21h

mov al, suma
aam
mov reg2, al
mov reg1, ah

mov ah,02h

mov dl,reg1
add dl,30h
int 21h

mov dl,reg2
add dl,30h
int 21h

mov ah,09h
lea dx, salto
int 21h

salir:
mov ax, 4c00h
int 21h
inicio endp
end inicio





































