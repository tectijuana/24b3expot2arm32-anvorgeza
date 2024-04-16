
<img src="https://github.com/tectijuana/24b3expot2arm32-anvorgeza/assets/158230568/f47b993b-e4dd-4f9c-979a-68c51a0a4a10" width="100%"></img>

<!---
![Firefly una hamburguesa hecha de componentes tecnologicos 42386](https://github.com/tectijuana/24b3expot2arm32-anvorgeza/assets/158230568/db9c25dc-9127-48d5-a9ac-fb5abce54e6b)


![Firefly una hamburguesa hecha de componentes tecnologicos 42386](https://github.com/tectijuana/24b3expot2arm32-anvorgeza/assets/158230568/db9c25dc-9127-48d5-a9ac-fb5abce54e6b)
-->
<pre>

	<p align=center>

Tecnológico Nacional de México
Instituto Tecnológico de Tijuana

Departamento de Sistemas y Computación
Ingeniería en Sistemas Computacionales

Semestre:
Enero - Junio 2024

Materia:
Lenguajes de interfaz

Docente:
M.C. Rene Solis Reyes 

Unidad:
1

Título del trabajo:
Ejercicios ......

Estudiante:
Villada Dominguez Edwin 21212063
Santos Rivera Karla Judith

	</p>

</pre>

![Diseño sin título (2)](https://github.com/tectijuana/24b3expot2arm32-anvorgeza/assets/158230568/a8b99942-8d3c-4f67-827d-036d2c0401b3)

**GDB (GNU Debugger)** es una herramienta de depuración extremadamente útil para programadores 
que permite inspeccionar y controlar la ejecución de programas para identificar y corregir 
errores. 

# Conceptos básicos de GDB:

### **Punto de Interrupción (Breakpoint)** 
Es una instrucción que le indica a GDB que detenga la ejecución del programa en un punto específico.
> [!NOTE]
> Pueden colorcarse **BREAKPOINT** en una linea de codigo, una funcion o en una direccion de memoria.

### **Exploración del Estado del Programa** 
Permite examinar el estado del programa en cualquier punto de su ejecución. Utiliza comandos como **_print_** (p abreviado) para imprimir valores de variables, **_info registers_** para mostrar los valores de los registros y **_x_** para examinar el contenido de la memoria.
> [!IMPORTANT]
> Puedes **ver** los **valores** de las *variables*, los *registros*, el contenido de la *memoria* y **más**.

## **Ejecución Paso a Paso:** 
Con GDB, se puede ejecutar el programa paso a paso para examinar el efecto de cada instrucción.
> [!NOTE]
> - **_step_** (s) permiten ejecutar la siguiente instrucción y detenerse
> - **_next_** (n) ejecuta la siguiente línea de código y detiene la ejecución

## **Continuación de la Ejecución:** 
Después de detener la ejecución en un punto de interrupción o después de ejecutar paso a paso, puedes continuar la ejecución del programa utilizando el comando **_continue_** (c). Esto permite que el programa se ejecute hasta el próximo punto de interrupción o hasta que termine.

## **Inspección de la Pila de Llamadas (Stack Trace):** 
GDB te permite ver la pila de llamadas del programa, lo que es útil para comprender cómo se están llamando a las funciones y qué funciones están activas en un momento dado. 
> [!TIP]
> El comando backtrace (bt) muestra la pila de llamadas actual.

## **Manipulación del Código:** 
Además de inspeccionar el estado del programa, GDB te **permite realizar cambios en tiempo de ejecución** (Modificar el valor de una variable, saltar instrucciones, cambiar el flujo de ejecución y más). debes tener cuidado al hacer cambios para evitar comportamientos no deseados en tu programa.
> [!WARNING]
> Se debe tener cuidado al hacer cambios para evitar comportamientos no deseados en tu programa.

## **Finalización de la Sesión de Depuración:** 
**_next_** (n) ejecuta la siguiente línea de código y detiene la ejecución.
> [!NOTE]
> Para finalizar la sesion de depuracion se utiliza el comando **_quit_** (q) el cual cierra GDB y termina la depuracion.	


# BREAKPOINTS 
Son una herramienta fundamental en la depuración de programas con GDB. Permiten detener la ejecución del programa en puntos específicos para examinar su estado y comportamiento. 
## Formas de trabajar con breakpoints:

- ### Establecer un breakpoint:
   - Se puede establecer en una línea de código específica utilizando el comando **_break_** seguido de la ubicación donde deseas detener la ejecución. Por ejemplo, para establecer un breakpoint en la **línea** 10 de un archivo:
     ```asm
     break archivo.c:10
     ```
  - También puedes establecer un breakpoint en una función utilizando su **nombre**:
    ```asm
    break nombre_funcion
    ```
- ### Listar breakpoints:
  - Puedes listar todos los breakpoints establecidos utilizando el comando **_info breakpoints_** o simplemente **_info b_**:
    ```asm
    info breakpoints
    ```
- ### Eliminar un breakpoint:
  - Para eliminar un breakpoint específico, utiliza el comando delete seguido del número de breakpoint mostrado en la lista de breakpoints:
    ```asm
    delete numero_breakpoint
    ```
  - Si deseas eliminar todos los breakpoints, simplemente usa:
    ```asm
    delete breakpoints
    ```
- ### Desactivar y reactivar breakpoints:
  - Puedes **desactivar** un breakpoint sin eliminarlo utilizando el comando disable seguido del número de breakpoint:
    ```asm
    disable numero_breakpoint
    ```
  - Para **reactivar** un breakpoint desactivado, utiliza el comando enable seguido del número de breakpoint:
    ```asm
    enable numero_breakpoint
    ```
- ### Condiciones en breakpoints: 
  - GDB permite establecer breakpoints **condicionales**, que se activan solo cuando se cumple una condición específica.
    Por ejemplo, para establecer un breakpoint condicional en una variable x igual a 10:
    ```asm
    break archivo.c:10 if x == 10
    ```
- ### Comandos en breakpoints:
  - Puedes asociar comandos a un breakpoint para que se ejecuten automáticamente cuando el programa se detenga en ese punto. Esto es útil para inspeccionar variables, imprimir mensajes, etc. Por ejemplo:
    ```asm
    commands numero_breakpoint
    print variable
    end
    ```
# Inspección de registros y memoria
#### Inspección de registros
A la hora de escribir codigo de ensamblador para hacer un programa, frecuentemente se necesitará mover información
de un registro a otro, por lo que es necesario saber que información tiene cada registro para no mover algun dato no
deseado, para esto existe un comando bastante util que nos permite ver la información dentro de cada registro, el cual 
es 'info registers', se puede abreviar como 'i r', este comando se puede usar de dos formas

```asm
(GDB) i r
```
Este comando es el que imprime todos los registros mostrando su contenido

```asm
(GDB) i r rax
```
Si se quiere ver un registro en especifico, basta con ponerlo al final del comando, y se imprimira solo ese registro en lugar de todos

#### Inspección de memoria
Es util para conocer donde se encuentran las variables en la memoria, mediante su direccion de memoria, o haciendo
referencia a la variable

```asm
(GDB) print (int) sys_call
```
Este comando sirve para ver que variables estan involucradas justo en donde se detuvo el programa, es importante especificar
el tipo de variable, de caso contrario, lanzara un error

```asm
(GDB) info address sys_call
```
Este comando sirve para obtener la direccion de memoria en este caso de sys_call

```asm
(gdb) print (int) *0x402008
```
Este comando sirve para obtener los datos que se encuentran en cierta dirección de memoria

### Seguimiento de ejecución
Como se ha visto anteriormente, GDB es una herramienta increíblemente útil a la hora de depurar código, especialmente 
en un lenguaje complejo como ensamblador. Es por esta razón que GDB nos permite ejecutar nuestro código de diferentes
formas, siendo una de estas el ejecutado "línea por línea", o mejor dicho, instrucción por instrucción.

El ejecutar el código instrucción por instrucción es una forma muy precisa de seguir el programa y se utiliza para hacer un
seguimiento del programa en trozos especialmente difíciles. Si se ejecuta el programa de esta forma se muestra cada vez la instrucción que acaba 
de ser ejecutada.

Para realizarlo, hay dos formas de realizar el seguimiento.

```asm	
(GDB) step
```
El comando anterior, también abreviado como s, ejecuta la siguiente instrucción en el código. Sin embargo, si entra
a una función, ejecutará el contenido de la función línea por línea.

```asm	
(GDB) next
```
El comando anterior, también abreviado como n, ejecuta la siguiente instrucción dentro del código. Sin embargo,
si esta se topa con una función, la función será tomada como una única instrucción.

Vale la pena resaltar que si el código se encuentra en C (u algún lenguaje no ensamblador), el comando next tiene
una variación. El comando next ejecuta una línea en el lenguaje del que estemos hablando, mientras que:
```asm	
(GDB) nexti
```
Se usa para ejecutar una línea de ensamblador.
