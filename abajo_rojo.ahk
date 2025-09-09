^!r::
; Paso 1: Escribir el texto con formato en la interfaz activa.
Send, Abajo, en <font color="red">rojo</font>.`n`nGracias,`n

; Paso 2: Seleccionar el texto recién insertado.
Send, ^+{Home} ; Ctrl+Shift+Inicio para seleccionar desde el inicio

; Paso 3: Pausa durante 1 segundo (1000 milisegundos).
Sleep, 1000

; Paso 4: Ejecutar el complemento (Ctrl+Alt+M) para convertir Markdown en formato.
Send, ^!m

; Paso 5: Pausa durante 1 segundo (1000 milisegundos).
Sleep, 1000

; Paso 6: Mover el cursor después de la coma y dar una tecla Fin.
Send, {Down}{End}

return