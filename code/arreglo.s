/*
Title: Array con error para depurar con gdb
Filename: arreglo.s
Autor: Velazquez Duran Sinuhe de Jesus
Date: 19-03-2024
Description : Define un array caracteres e intenta imprimir un caracter fuera del array
Imput: -
Ouput: -
*/

.section .data
    cadena: .asciz "Hola"

.section .text
.global _start

_start:
    # Cargar la dirección base de la cadena en un registro
    ldr r0, =cadena

    # Acceder al segundo elemento de la cadena (la segunda letra)
    add r1, r0, #6

    # Escribir la segunda letra en la salida estándar
    mov r0, #1    @ Descriptor de archivo estándar de salida (stdout)
    mov r2, #1    @ Longitud del buffer
    mov r7, #4    @ Código de llamada al sistema para write
    swi 0        @ Llamada al sistema

    # Salir del programa
    mov r7, #1    @ Código de salida del programa
    mov r0, #0    @ Código de salida
    swi 0        @ Llamada al sistema para terminar el programa
