# Ejemplo de depuracion con gdb

## Codigo
```asm
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
```

**output:** % 

## Depuracion
Usango gdb podemos ejecutar el codigo hasta el punto donde se obtiene la direccion donde se almacena el caracter cuyo indice indicamos, además de ver los valores de los registros.

![ubicacion](![image](https://github.com/tectijuana/24b3expot2arm32-anvorgeza/assets/158231210/b6a2d450-5ab6-4fde-bf93-37c8226fd496))

El arreglo de caracteres se alamcena en r0 y el caracter en r1. Podemos ver que el caracter está muy alejado del caracter inicial, indicando que se está accediendo a una direccion de memoria que está fuera del arreglo. 



