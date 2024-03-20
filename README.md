![Firefly una hamburguesa hecha de componentes tecnologicos 42386](https://github.com/tectijuana/24b3expot2arm32-anvorgeza/assets/158230568/db9c25dc-9127-48d5-a9ac-fb5abce54e6b)
<!---
   Para comentarios usar este bloque para documentar pendientes, secuencias, etc.
--->

Borrar y modificar README

# Utilizar los dos directorios

- code  - ahi depositar sus programas los ***archivos extensión *.s****  (Source File) algunos autores en x86 de ponen .asm y en otras plataformas ARM compatibles la extension *.s
- Todo programa lleva su comentario en la parte de arriba, objetivo y nombre del programador minimo, como templete
- images  - de haber algo de pantallas ahi se presentaran, su busca documentarlas en MARKDOWN el código es:

```
![](images/---archivo.jpg---) recordar que no lleva espacios
```

<!---
  Los nombres de las imagenes no deben cambiar de preferenci el nombre del programa como:  KIOSKO.cpp (su pantallas serian KISOCO.jpg, KIOSCO-1.jpg, KIOSCO-2.jpg ... )
  Y asi procurar estar agrupados.
--->



- Programa en MarkDown es inicia con tres tildes * (`) sin espacio, seguido de el lenguaje de programacion, al final del codigo se poner otra vez los mismos tilder..

No se usan espacios en nombres de archivos, usar los nombres estilo camelCase (primera palabra minusculas, mayuscula solo la 1ra letra de cada palabra subsecuente):  ejemplo: sensorHumo, etc.

Suerte.



------

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

<pre>

	<p align=left>

Repositorio en el cual se desarrollaron distintos ejercicios en el lenguaje de 
programacion c++, tomados del libro "Problemas para resolver con computadora" 
1ra edicion (1985), por el autor Donald D. Spencer. 

Los ejercicios corresponden al capitulo 6 del libro, entre las paginas 77 a 86.
Se realizaron 25 problemas debido a la entrega fuera del limite de tiempo.

CONDICIONES:

	EXTEMPORÁNEOS DE LA FECHA DE ENTREGA, despues del 25 de marzo y 1 segundo:

	-Solo 25 problemas a resolver y están en aleatorio las condiciones de uso, 
		algunos simples otros de recordar, etc. CAPITULO 6 en adelante.

	-Agregar las indicaciones de los criterios de la rùbrica
	
RÚBRICA:

        Todo problema es necesario siga el templete OBLIGATORIO para entregar el 
		problema codificado, usted puede correr sus programas con su estilo 
		pero ya que este funcionando, debe arreglarlo a presentación para su 
		evaluación.

        MODIFICAR LA PORTADA CON MARKDOWN Y ACTUALIZARLA, esta libre de cambiar 
		todo.
        Los archivos deben tener su extensión .CPP (no .txt, etc.)

	Los problemas están en la relación siguiente:
	
	- 100% Sigue el templete proporcionado por el docente y corren 10 
		Problemas (o si incremento en programas por supuesta dificultad) 
		completamente en GITHUB Classroom (no repositorio personal),  los 
		archivos deben tener su extensión .CPP (no .txt, .EXE, etc.) acomodados 
		en dentro de un directorio  (sin acentos o simbolos) SOLO FUENTES, y 
		modifica el README.md que sea una portada.
	- 80% Sigue el templete proporcionado por el docente y corre 8 Problemas 
		(o si incremento en programas por supuesta dificultad) completamente 
		en GITHUB Classroom (no repositorio personal), los archivos deben 
		tener su extensión .CPP (no .txt, etc.) acomodados en dentro de un 
		directorio (sin acentos o simbolos) SOLO FUENTES, y modifica el 
		README.md que sea una portada.
	- 70% Sigue el templete proporcionado por el docente y corre 7 Problemas 
		(o si incremento en programas por supuesta dificultad) completamente 
		en GITHUB Classroom (no repositorio personal), los archivos deben 
		tener su extensión .CPP (no .txt, etc.) acomodados en dentro de un 
		directorio (sin acentos o simbolos) SOLO FUENTES, y modifica el 
		README.md que sea una portada.
	- 50 % EVITA Y NO USA el templete proporcionado por el docente sus Problemas 
		(o si incremento en programas por supuesta dificultad) completamente 
		en GITHUB Classroom (no repositorio personal) con mas de 7 problemas 
		resueltos, los archivos NO tener su extensión .CPP y  puede o no estar 
		acomodados en dentro de un directorio (sin acentos o simbolos) 
		SOLO FUENTES, y modifica el README.md que sea una portada.

ENTREGA:

	URL del GitHub Classroom, y recuerde arreglar la PORTADA, quitar todos los 
		elementos extras del templete, acomodarlo bien para su presentación 
		solo lo necesario.

	</p>

</pre>


# CONCEPTOS BASICOS 	
**GDB (GNU Debugger)** es una herramienta de depuración extremadamente útil para programadores 
que permite inspeccionar y controlar la ejecución de programas para identificar y corregir 
errores. Aquí están algunos conceptos básicos de GDB:

**Punto de Interrupción (Breakpoint)** es una instrucción que le indica a GDB que detenga la ejecución 
del programa en un punto específico. Puedes establecer puntos de interrupción en una línea
de código, en una función o incluso en una dirección de memoria.

**Exploración del Estado del Programa** te permite examinar el estado del programa en cualquier punto de su ejecución. Puedes 
ver los valores de las variables, los registros, el contenido de la memoria y más. Utilizas 
comandos como print (o p abreviado) para imprimir valores de variables, info registers para 
mostrar los valores de los registros y x para examinar el contenido de la memoria.

**Ejecución Paso a Paso:** Con GDB, puedes ejecutar el programa paso a paso para examinar el efecto de cada instrucción. 
Los comandos step (o s) permiten ejecutar la siguiente instrucción y detenerse, mientras que 
next (o n) ejecuta la siguiente línea de código y detiene la ejecución.

**Continuación de la Ejecución:** Después de detener la ejecución en un punto de interrupción o después de ejecutar paso a paso, 
puedes continuar la ejecución del programa utilizando el comando continue (o c). Esto permite 
que el programa se ejecute hasta el próximo punto de interrupción o hasta que termine.

**Inspección de la Pila de Llamadas (Stack Trace):** GDB te permite ver la pila de llamadas del programa, lo que es útil para comprender cómo se 
están llamando a las funciones y qué funciones están activas en un momento dado. El comando 
backtrace (o bt) muestra la pila de llamadas actual.

**Manipulación del Código:** Además de inspeccionar el estado del programa, GDB te permite realizar cambios en tiempo de 
ejecución. Puedes modificar el valor de una variable, saltar instrucciones, cambiar el flujo 
de ejecución y más. Sin embargo, debes tener cuidado al hacer cambios para evitar comportamientos 
no deseados en tu programa.

**Finalización de la Sesión de Depuración:** Una vez que hayas identificado y corregido los errores en tu programa, puedes finalizar la sesión 
de depuración con el comando quit (o q). Esto cierra GDB y termina la depuración.	


# BREAKPOINTS 

Los breakpoints (puntos de interrupción) son una herramienta fundamental en la depuración de programas con GDB. Permiten detener la ejecución del programa en puntos específicos para examinar su estado y comportamiento. A continuacion se mostraran algunas maneras de trabajar con breakpoints:


### Establecer un breakpoint: 
Puedes establecer un breakpoint en una línea de código específica utilizando el comando break seguido de la ubicación donde deseas detener la ejecución. Por ejemplo, para establecer un breakpoint en la línea 10 de un archivo:
```asm	
break archivo.c:10
```
También puedes establecer un breakpoint en una función utilizando su nombre:
```asm	
break nombre_funcion
```
### Listar breakpoints:
Puedes listar todos los breakpoints establecidos utilizando el comando info breakpoints o simplemente info b:
```asm	
info breakpoints
```
### Eliminar un breakpoint:
Para eliminar un breakpoint específico, utiliza el comando delete seguido del número de breakpoint mostrado en 
la lista de breakpoints:
```asm	
delete numero_breakpoint
```
Si deseas eliminar todos los breakpoints, simplemente usa:
```asm	
delete breakpoints
```
### Desactivar y reactivar breakpoints:
Puedes desactivar un breakpoint sin eliminarlo utilizando el comando disable seguido del número de breakpoint:
```asm	
disable numero_breakpoint
```
Para reactivar un breakpoint desactivado, utiliza el comando enable seguido del número de breakpoint:
```asm	
enable numero_breakpoint
```
### Condiciones en breakpoints:
GDB permite establecer breakpoints condicionales, que se activan solo cuando se cumple una condición específica. 
Por ejemplo, para establecer un breakpoint condicional en una variable x igual a 10:
```asm	
break archivo.c:10 if x == 10
```
### Comandos en breakpoints:
Puedes asociar comandos a un breakpoint para que se ejecuten automáticamente cuando el programa se detenga en ese 
punto. Esto es útil para inspeccionar variables, imprimir mensajes, etc. Por ejemplo:
```asm	
commands numero_breakpoint
> print variable
> end
```
### Inspección de registros y memoria


### Seguimiento de ejecución
