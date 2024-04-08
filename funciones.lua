--Autor: Toños
--Fecha: 7--Julio--2009
--Genero: Reflejos 
--Nombre: Botones--Lokos
--------------------------------------------------------------------------------------------------
--------------------------------------------MENU--------------------------------------------------
-------------------------------------------------------------------------------------------------- 
function INICIO()
juegos=Image.load("IMAGENES/MENUS/menu.png")
instrucciones = Image.load("IMAGENES/MENUS/menu1.png")
creditos=Image.load("IMAGENES/MENUS/menu2.png")
salir=Image.load("IMAGENES/MENUS/menu3.png")

remplazo=juegos
opcion = 1

while true do

pad = Controls.read()
screen:clear()
screen:blit(0,0,remplazo)
if pad:down() and oldpad:down() ~= pad:down() and remplazo==juegos then
remplazo=instrucciones
opcion = 2
else
if pad:down() and oldpad:down() ~= pad:down() and remplazo==instrucciones then
remplazo=creditos
opcion = 3
else
if pad:down() and oldpad:down() ~= pad:down() and remplazo==creditos then
remplazo=salir
opcion = 4
else
if pad:down() and oldpad:down() ~= pad:down() and remplazo==salir then
remplazo=juegos
opcion = 1
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo==instrucciones then
remplazo=juegos
opcion = 1
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo==creditos then
remplazo=instrucciones
opcion = 2
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo==juegos then
remplazo=salir
opcion = 4
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo==salir then
remplazo=creditos
opcion = 3
else
end
end 
end
end 
end
end 
end 
end

if pad:cross() and oldpad:cross() ~= pad:cross() and  opcion == 1 then
MODOSDEJUEGO()
elseif pad:cross() and oldpad:cross() ~= pad:cross() and  opcion == 2  then
INSTRUCCIONESIMG()
elseif pad:cross() and oldpad:cross() ~= pad:cross() and opcion == 3 then
CREDITO()
elseif opcion == 4 and pad:cross() and oldpad:cross() ~= pad:cross() then
System.Quit()
end

oldpad = pad
screen.waitVblankStart()
screen.flip()
end 
end
--------------------------------------------------------------------------------------------------
--------------------------------------------MENU1-------------------------------------------------
--------------------------------------------------------------------------------------------------
function MENUACERTAR()

A30=Image.load("IMAGENES/MENUS/A30.png")
A50=Image.load("IMAGENES/MENUS/A50.png")
A70=Image.load("IMAGENES/MENUS/A70.png")
A100=Image.load("IMAGENES/MENUS/A100.png")
remplazo1=A30
opcionseleccion = 1
modojuego = 0 
while true do


pad = Controls.read()
screen:clear()

screen:blit(0,0,remplazo1)



if pad:down() and oldpad:down() ~= pad:down() and remplazo1==A30 then
remplazo1=A50
opcionseleccion = 2
else
if pad:down() and oldpad:down() ~= pad:down() and remplazo1==A50 then
remplazo1=A70
opcionseleccion = 3
else
if pad:down() and oldpad:down() ~= pad:down() and remplazo1==A70 then
remplazo1=A100
opcionseleccion = 4
else
if pad:down() and oldpad:down() ~= pad:down() and remplazo1==A100 then
remplazo1=A30
opcionseleccion = 1
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo1==A50 then
remplazo1=A30
opcionseleccion = 1
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo1==A70 then
remplazo1=A50
opcionseleccion = 2
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo1==A30 then
remplazo1=A100
opcionseleccion = 4
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo1==A100 then
remplazo1=A70
opcionseleccion = 3
else
end
end 
end
end 
end
end 
end 
end

if pad:cross() and oldpad:cross() ~= pad:cross() and opcionseleccion == 1 then
modojuego = 1
JUEGO()
elseif pad:cross() and oldpad:cross() ~= pad:cross() and opcionseleccion == 2 then
modojuego = 2
JUEGO()
elseif pad:cross() and oldpad:cross() ~= pad:cross() and opcionseleccion == 3 then
modojuego = 3
JUEGO()
elseif pad:cross() and oldpad:cross() ~= pad:cross() and opcionseleccion == 4 then
modojuego = 4
JUEGO()
end

if pad:circle() and oldpad:circle() ~= pad:circle() then
MODOSDEJUEGO()
end

oldpad = pad
screen.waitVblankStart()
screen.flip()
end 
end
--------------------------------------------------------------------------------------------------
--------------------------------------------MENU2-------------------------------------------------
--------------------------------------------------------------------------------------------------
function MENUTIEMPO()
negro = Color.new(0,0,0)
tiempo30=Image.load("IMAGENES/MENUS/tiempo30.png")
tiempo60=Image.load("IMAGENES/MENUS/tiempo60.png")
tiempo120=Image.load("IMAGENES/MENUS/tiempo120.png")

remplazo2=tiempo30
seleccion = 1
modojuego = 1
while true do

pad = Controls.read()
screen:clear()

screen:blit(0,0,remplazo2)

if pad:down() and oldpad:down() ~= pad:down() and remplazo2 == tiempo30  then
remplazo2=tiempo60
modojuego = 2
seleccion = 2
else
if pad:down() and oldpad:down() ~= pad:down() and remplazo2 == tiempo60 then
remplazo2=tiempo120
modojuego = 3
seleccion = 3
else
if pad:down() and oldpad:down() ~= pad:down() and remplazo2 == tiempo120 then
remplazo2=tiempo30
modojuego = 1

end
end
end

if pad:up() and oldpad:up() ~= pad:up() and remplazo2==tiempo30 then
remplazo2=tiempo120
modojuego = 3
seleccion = 3
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo2==tiempo120 then
remplazo2=tiempo60
modojuego = 2
seleccion = 2
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo2==tiempo60 then
remplazo2=tiempo30
modojuego = 1
seleccion = 1
end
end
end

if pad:cross() and oldpad:cross() ~= pad:cross() and seleccion == 1 then
modojuego = 1
JUEGOTIEMPO()
elseif pad:cross() and oldpad:cross() ~= pad:cross() and seleccion == 2 then
modojuego = 3
JUEGOTIEMPO()
elseif pad:cross() and oldpad:cross() ~= pad:cross() and seleccion == 3 then
modojuego = 3
JUEGOTIEMPO()
end

if pad:circle() and oldpad:circle() ~= pad:circle() then
MODOSDEJUEGO()
end

oldpad = pad
screen.waitVblankStart()
screen.flip()
end 
end

--------------------------------------------------------------------------------------------------
----------------------------------------MODO--DE--JUEGO-------------------------------------------
--------------------------------------------------------------------------------------------------
function MENURETOS()
menuretos=Image.load("IMAGENES/MENUS/menuretos.png")
menuretos2=Image.load("IMAGENES/MENUS/menuretos2.png")

remplazos = menuretos
opciones = 0
opc = 1
while true do

pad = Controls.read()
screen:clear()

screen:blit(0,0,remplazos)

if pad:down() and oldpad:down() ~= pad:down() and remplazos == menuretos then
remplazos=menuretos2
opciones = 1
else
if pad:down() and oldpad:down() ~= pad:down() and remplazos==menuretos2 then
remplazos=menuretos
opciones = 0
end
end

if pad:up() and oldpad:up() ~= pad:up() and remplazos==menuretos2 then
remplazos=menuretos
opciones = 0
else
if pad:up() and oldpad:up() ~= pad:up() and remplazos==menuretos then
remplazos=menuretos2
opciones = 1
end
end

if pad:cross() and oldpad:cross() ~= pad:cross() and opciones == 0 then
opc = 1
RETOS0()
end
if pad:cross() and oldpad:cross() ~= pad:cross() and opciones == 1 then
opc = 2
RETOS0()
end


oldpad = pad
screen.waitVblankStart()
screen.flip()
end 
end

--------------------------------------------------------------------------------------------------
----------------------------------------MODO--DE--JUEGO-------------------------------------------
--------------------------------------------------------------------------------------------------

function RETOS0()
negro = Color.new(0,0,0)
iniciar=Image.load("IMAGENES/MENUS/retos.png")
reto = 0
modojuego = 0
while true do

pad = Controls.read()
screen:clear()

screen:blit(0,0,iniciar)
if opc == 1 then
screen:print(145,155,"Reto: Hacer 20 acertadas",negro)
end
if opc == 2 then
screen:print(145,155,"Reto: Hacer 45 acertadas",negro)
end


if pad:start() and oldpad:start() ~= pad:start() and opc == 1 then
reto = 1
JUEGOTIEMPO()
end
if pad:start() and oldpad:start() ~= pad:start() and opc == 2 then
reto = 17
JUEGOTIEMPO()
end



oldpad = pad
screen.waitVblankStart()
screen.flip()
end 
end

--------------------------------------------------------------------------------------------------
----------------------------------------------RETOS-----------------------------------------------
--------------------------------------------------------------------------------------------------
function RETOS()
negro = Color.new(0,0,0)
iniciar=Image.load("IMAGENES/MENUS/retos.png")
while true do 
pad = Controls.read()
screen:clear()
screen:blit(0,0,iniciar)


if reto == 2 then 
screen:print(45,155,"Reto: Hacer 20 acertadas y no hacer 5 o mas falladas",negro)
elseif reto == 3 then
screen:print(45,155,"Reto: Hacer 20 acertadas y no hacer 3 o mas falladas",negro)
elseif reto == 4 then
screen:print(45,155,"Reto: Hacer 20 acertadas y no hacer 1 o mas falladas",negro)
elseif reto == 5 then 
screen:print(45,155,"Reto: Hacer 20 acertadas y no hacer 0 o mas falladas",negro)
elseif reto == 6 then
screen:print(145,155,"Reto: Hacer 30 acertadas",negro)
elseif reto == 7 then
screen:print(45,155,"Reto: Hacer 30 acertadas y no hacer 5 o mas falladas",negro)
elseif reto == 8 then
screen:print(45,155,"Reto: Hacer 30 acertadas y no hacer 3 o mas falladas",negro)
elseif reto == 9 then
screen:print(45,155,"Reto: Hacer 30 acertadas y no hacer 1 o mas falladas",negro)
elseif reto == 10 then 
screen:print(45,155,"Reto: Hacer 30 acertadas y no hacer 0 o mas falladas",negro)
elseif reto == 11 then
screen:print(145,155,"Reto: Hacer 40 acertadas ",negro)
elseif reto == 12 then
screen:print(45,155,"Reto: Hacer 40 acertadas y no hacer 5 o mas falladas",negro)
elseif reto == 13 then 
screen:print(45,155,"Reto: Hacer 40 acertadas y no hacer 3 o mas falladas",negro)
elseif reto == 14 then
screen:print(45,155,"Reto: Hacer 40 acertadas y no hacer 1 o mas falladas",negro)
elseif reto == 15 then
screen:print(45,155,"Reto: Hacer 40 acertadas y no hacer 0 o mas falladas",negro)
end


if reto == 18 then 
screen:print(45,155,"Reto: Hacer 45 acertadas y no hacer 5 o mas falladas",negro)
elseif reto == 19 then
screen:print(45,155,"Reto: Hacer 45 acertadas y no hacer 3 o mas falladas",negro)
elseif reto == 20 then
screen:print(45,155,"Reto: Hacer 45 acertadas y no hacer 1 o mas falladas",negro)
elseif reto == 21 then 
screen:print(45,155,"Reto: Hacer 45 acertadas y no hacer 0 o mas falladas",negro)
elseif reto == 22 then
screen:print(145,155,"Reto: Hacer 55 acertadas",negro)
elseif reto == 23 then
screen:print(45,155,"Reto: Hacer 55 acertadas y no hacer 5 o mas falladas",negro)
elseif reto == 24 then
screen:print(45,155,"Reto: Hacer 55 acertadas y no hacer 3 o mas falladas",negro)
elseif reto == 25 then
screen:print(45,155,"Reto: Hacer 55 acertadas y no hacer 1 o mas falladas",negro)
elseif reto == 26 then 
screen:print(45,155,"Reto: Hacer 55 acertadas y no hacer 0 o mas falladas",negro)
elseif reto == 27 then
screen:print(145,155,"Reto: Hacer 65 acertadas ",negro)
elseif reto == 28 then
screen:print(45,155,"Reto: Hacer 65 acertadas y no hacer 5 o mas falladas",negro)
elseif reto == 29 then 
screen:print(45,155,"Reto: Hacer 65 acertadas y no hacer 3 o mas falladas",negro)
elseif reto == 30 then
screen:print(45,155,"Reto: Hacer 65 acertadas y no hacer 1 o mas falladas",negro)
elseif reto == 31 then
screen:print(45,155,"Reto: Hacer 65 acertadas y no hacer 0 o mas falladas",negro)
end

if pad:start() and oldpad:start() ~= pad:start() then
JUEGOTIEMPO()
end

oldpad = pad
screen.waitVblankStart()
screen.flip()
end 
end
--------------------------------------------------------------------------------------------------
----------------------------------------MODO--DE--JUEGO-------------------------------------------
--------------------------------------------------------------------------------------------------
function MODOSDEJUEGO() 
modo = Image.load("IMAGENES/MENUS/modo.png")
modo1 = Image.load("IMAGENES/MENUS/modo1.png")
modo2 = Image.load("IMAGENES/MENUS/modo2.png")
remplazo3 = modo

while true do
pad = Controls.read()
screen:clear()

screen:blit(0,0,remplazo3)


if pad:circle() and oldpad:circle() ~= pad:circle() then
INICIO()
end

if pad:down() and oldpad:down() ~= pad:down() and remplazo3 == modo then
remplazo3 = modo1
else
if pad:down() and oldpad:down() ~= pad:down() and remplazo3 == modo1 then
remplazo3 = modo2
else 
if pad:down() and oldpad:down() ~= pad:down() and remplazo3 == modo2 then
remplazo3 = modo
end
end
end

if pad:up() and oldpad:up() ~= pad:up() and remplazo3 == modo then
remplazo3 = modo2
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo3 == modo2 then
remplazo3 = modo1
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo3 == modo1 then
remplazo3 = modo
end
end
end

if pad:cross() and oldpad:cross() ~= pad:cross() and remplazo3 == modo then
MENUACERTAR()
end
if pad:cross() and oldpad:cross() ~= pad:cross() and remplazo3 == modo1 then
MENUTIEMPO()
end
if pad:cross() and oldpad:cross() ~= pad:cross() and remplazo3 == modo2 then
MENURETOS()
end


oldpad = pad
screen.waitVblankStart()
screen.flip()
end 
end
--------------------------------------------------------------------------------------------------
---------------------------------------TERMINO--EL---JUEGO----------------------------------------
--------------------------------------------------------------------------------------------------
function GANASTE30()
aciertos30 = Image.load("IMAGENES/MENUS/30.png")
puntuaje = Image.load("IMAGENES/MENUS/puntuaje.png")

negro = Color.new(0,0,0)
remplazo4 = 0
while true do
pad = Controls.read()
screen:clear()
screen:blit(0,0,aciertos30)


if pad:start() then
remplazo4 = 1
end
if remplazo4 >= 1 then
screen:blit(0,0,puntuaje)
screen:print(70,110,"Turnos:"..turnos,negro)
screen:print(70,160,"Puntos:"..puntos,negro)
screen:print(300,110,"Acertadas:"..acertadas,negro)
screen:print(300,160,"Falladas:"..falladas,negro)
remplazo4 = 2 
end

if pad:circle() and oldpad:circle() ~= pad:circle() and remplazo4 == 2  then
INICIO()
end

screen.waitVblankStart()
screen.flip()
oldpad = pad
end
end

--------------------------------------------------------------------------------------------------
---------------------------------------TERMINO--EL---JUEGO----------------------------------------
--------------------------------------------------------------------------------------------------

function GANASTE50()
puntuaje = Image.load("IMAGENES/MENUS/puntuaje.png")
aciertos50 = Image.load("IMAGENES/MENUS/50.png")
negro = Color.new(0,0,0)
remplazo5 = 0
while true do
pad = Controls.read()
screen:clear()
screen:blit(0,0,aciertos50)


if pad:start() then
remplazo5 = 1
end
if remplazo5 >= 1 then
screen:blit(0,0,puntuaje)
screen:print(70,110,"Turnos:"..turnos,negro)
screen:print(70,160,"Puntos:"..puntos,negro)
screen:print(300,110,"Acertadas:"..acertadas,negro)
screen:print(300,160,"Falladas:"..falladas,negro)
remplazo5 = 2 
end

if pad:circle() and oldpad:circle() ~= pad:circle() and remplazo5 == 2 then
INICIO()
end


screen.waitVblankStart()
screen.flip()
oldpad = pad
end
end

--------------------------------------------------------------------------------------------------
---------------------------------------TERMINO--EL---JUEGO----------------------------------------
--------------------------------------------------------------------------------------------------
function GANASTE70()
puntuaje = Image.load("IMAGENES/MENUS/puntuaje.png")
aciertos70 = Image.load("IMAGENES/MENUS/70.png")
negro = Color.new(0,0,0)
remplazo6 = 0
while true do
pad = Controls.read()
screen:clear()
screen:blit(0,0,aciertos70)


if pad:start() then
remplazo6 = 1
end
if remplazo6 >= 1 then
screen:blit(0,0,puntuaje)
screen:print(70,110,"Turnos:"..turnos,negro)
screen:print(70,160,"Puntos:"..puntos,negro)
screen:print(300,110,"Acertadas:"..acertadas,negro)
screen:print(300,160,"Falladas:"..falladas,negro)
remplazo6 = 2
end

if pad:circle() and oldpad:circle() ~= pad:circle() and remplazo6 == 2 then
INICIO()
end


screen.waitVblankStart()
screen.flip()
oldpad = pad
end
end
--------------------------------------------------------------------------------------------------
---------------------------------------TERMINO--EL---JUEGO----------------------------------------
--------------------------------------------------------------------------------------------------
function GANASTE100()
puntuaje = Image.load("IMAGENES/MENUS/puntuaje.png")
aciertos100 = Image.load("IMAGENES/MENUS/100.png")
negro = Color.new(0,0,0)

remplazo7 = 0
while true do
pad = Controls.read()
screen:clear()
screen:blit(0,0,aciertos100)


if pad:start() then
remplazo7 = 1
end
if remplazo7 >= 1 then
screen:blit(0,0,puntuaje)
screen:print(70,110,"Turnos:"..turnos,negro)
screen:print(70,160,"Puntos:"..puntos,negro)
screen:print(300,110,"Acertadas:"..acertadas,negro)
screen:print(300,160,"Falladas:"..falladas,negro)
remplazo7 = 2
end
if pad:circle() and oldpad:circle() ~= pad:circle() and remplazo7 == 2 then
INICIO()
end

screen.waitVblankStart()
screen.flip()
oldpad = pad
end
end
--------------------------------------------------------------------------------------------------
------------------------------TERMINO--EL--JUEGO--(CON--TIEMPO)-----------------------------------
--------------------------------------------------------------------------------------------------
function GANASTETIEMPO()
acabo = Image.load("IMAGENES/MENUS/acabo.png")
puntuaje = Image.load("IMAGENES/MENUS/puntuaje.png")
negro = Color.new(0,0,0)


remplazo8 = 1
while true do
pad = Controls.read()
screen:clear()
screen:blit(0,0,acabo)


if pad:start() then
remplazo8 = 2
end

if remplazo8 == 2 then
screen:blit(0,0,puntuaje)
screen:print(70,110,"Turnos:"..turnos,negro)
screen:print(70,160,"Puntos:"..puntos,negro)
screen:print(300,110,"Acertadas:"..acertadas,negro)
screen:print(300,160,"Falladas:"..falladas,negro)
screen:print(190,130,"Tiempo:"..relog,negro)
remplazo8 = 2
end
if pad:circle() and oldpad:circle() ~= pad:circle() and remplazo8 == 2 then
INICIO()
end

screen.waitVblankStart()
screen.flip()
oldpad = pad
end
end

--------------------------------------------------------------------------------------------------
-----------------------------------------INSTRUCCIONES--------------------------------------------
--------------------------------------------------------------------------------------------------
function INSTRUCCIONESIMG()
instruccion = Image.load("IMAGENES/INSTRUCCIONES/instrucciones.png")
while true do
pad = Controls.read()
screen:clear()
screen:blit(0,0,instruccion)

if pad:circle() then
INICIO()
end

screen.waitVblankStart()
screen.flip()
end
end

--------------------------------------------------------------------------------------------------
----------------------------------------------PERDISTE--------------------------------------------
--------------------------------------------------------------------------------------------------
function PERDISTES()
blanco = Color.new(255,255,255)
amarillo = Color.new(255,255,0)
perdiste = Image.load("IMAGENES/MENUS/perdiste.png")
op = 0

while true do
pad = Controls.read()
screen:clear()
screen:blit(0,0,perdiste)

if pad:cross() and oldpad:cross() ~= pad:cross() and op == 0 then
RETOS()
end

if pad:cross() and oldpad:cross() ~= pad:cross() and op == 1 then
INICIO()
end

if pad:up() and oldpad:up() ~= pad:up() and op == 0 then
op = 1
elseif pad:up() and oldpad:up() ~= pad:up() and op == 1 then
op = 0
end
if pad:down() and oldpad:down() ~= pad:down() and op == 0  then
op = 1
elseif pad:down() and oldpad:down() ~= pad:down() and op == 1 then
op = 0
end

if op == 0 then
screen:print(170,200,"Intentar de nuevo",amarillo)
screen:print(170,210,"salir",blanco)
elseif op == 1 then
screen:print(170,200,"Intentar de nuevo",blanco)
screen:print(170,210,"salir",amarillo)
end

oldpad = pad
screen.waitVblankStart()
screen.flip()
end
end
--------------------------------------------------------------------------------------------------
---------------------------------------PUNTUAJE--RETOS--------------------------------------------
--------------------------------------------------------------------------------------------------
function RETOS1()
retocumplido = Image.load("IMAGENES/MENUS/retocumplido.png")
negro = Color.new(0,0,0)
amarillo = Color.new(255,223,0)



while true do
pad = Controls.read()
screen:clear()

if pad:cross() and oldpad:cross() ~= pad:cross() and supera == 0 then
RETOS()
elseif pad:cross() and oldpad:cross() ~= pad:cross() and supera == 1 then
SUPERADO()
end

screen:blit(0,0,retocumplido)
screen:print(70,110,"Turnos:"..turnos,negro)
screen:print(70,160,"Puntos:"..puntos,negro)
screen:print(300,110,"Acertadas:"..acertadas,negro)
screen:print(300,160,"Falladas:"..falladas,negro)
screen:print(190,130,"Tiempo:"..relog,negro)
screen:print(200,160,"Reto:"..reto,negro)


if supera == 0 then
screen:print(100,252,"Presiona X para pasar al siguiente reto.",amarillo)
elseif supera == 1 then
screen:print(200,252,"Presiona X",amarillo)
end

oldpad = pad
screen.waitVblankStart()
screen.flip()
end
end
--------------------------------------------------------------------------------------------------
-----------------------------------------------SUPERADO-------------------------------------------
--------------------------------------------------------------------------------------------------
function SUPERADO()
superado = Image.load("IMAGENES/MENUS/superado.png")
verde = Color.new(5,250,79)
while true do
pad = Controls.read()
screen:clear()
screen:blit(0,0,superado)
screen:print(240,262,"Presiona X para volver al incio",verde)

if pad:cross() and oldpad:cross() ~= pad:cross() then
INICIO()
end

oldpad = pad
screen.waitVblankStart()
screen.flip()
end
end
--------------------------------------------------------------------------------------------------
-----------------------------------------CREDITOS-------------------------------------------------
--------------------------------------------------------------------------------------------------
function CREDITO()
creditos1 = Image.load("IMAGENES/CREDITOS/creditos1.png")
creditos2 = Image.load("IMAGENES/CREDITOS/creditos2.png")
agradecimiento = Image.load("IMAGENES/CREDITOS/agradecimiento.png")
Creditos = {}
Creditos[1] = {x=0,y=0}
Creditos[2] = {x=480,y=0}


movimiento = 0

while true do 
pad = Controls.read()
screen:clear()

screen:blit(Creditos[1].x,Creditos[1].y,creditos1)
screen:blit(Creditos[2].x,Creditos[2].y,creditos2)

if movimiento == 0  then
Creditos[1].x = Creditos[1].x -0.5
Creditos[2].x = Creditos[2].x -0.5
end

if Creditos[2].x == 0 then
screen:blit(0,0,agradecimiento)
screen.flip()
movimiento = 1
end

if movimiento == 1 then
screen.waitVblankStart(300)
INICIO()
end

pad = olpad
screen.flip()
screen.waitVblankStart()
end
end
--------------------------------------------------------------------------------------------------
--------------------------------------------JUEGO-------------------------------------------------
--------------------------------------------------------------------------------------------------
function JUEGO()
negro = Color.new(0,0,0)
equis = Image.load("IMAGENES/JUEGO/equis.png")
circulo = Image.load("IMAGENES/JUEGO/circulo.png")
cuadrado = Image.load("IMAGENES/JUEGO/cuadrado.png")
triangulo = Image.load("IMAGENES/JUEGO/triangulo.png")
izquierda = Image.load("IMAGENES/JUEGO/izquierda.png")
derecha = Image.load("IMAGENES/JUEGO/derecha.png")
arriba = Image.load("IMAGENES/JUEGO/arriba.png")
abajo = Image.load("IMAGENES/JUEGO/abajo.png")
l = Image.load("IMAGENES/JUEGO/l.png")
r = Image.load("IMAGENES/JUEGO/r.png")
fondo = Image.load("IMAGENES/JUEGO/Fondo.png")
turnos = 0
puntos = 0
acertadas = 0
falladas = 0
inicio = 0

while true do

pad = Controls.read()
screen:clear()
screen:blit(0,0,fondo)

screen:print(0,0,"Turnos:"..turnos,negro)
screen:print(350,0,"Puntos:"..puntos,negro)
screen:print(0,20,"Acertadas:"..acertadas,negro)
screen:print(350,20,"Falladas:"..falladas,negro)

function Azar() 
math.randomseed( os.time() ) 
aleatorio = math.random(1,10)
oldpad = Controls.read()


if aleatorio == 1 then
screen:blit(150,150,equis)
screen.flip()
elseif aleatorio == 2 then
screen:blit(150,150,cuadrado)
screen.flip()
elseif aleatorio == 3 then
screen:blit(150,150,circulo)
screen.flip()
elseif aleatorio == 4 then
screen:blit(150,150,triangulo)
screen.flip()
elseif aleatorio == 5 then
screen:blit(150,150,izquierda)
screen.flip()
elseif aleatorio == 6 then
screen:blit(150,150,derecha)
screen.flip()
elseif aleatorio == 7 then
screen:blit(150,150,arriba)
screen.flip()
elseif aleatorio == 8 then
screen:blit(150,150,abajo)
screen.flip()
elseif aleatorio == 9 then
screen:blit(150,150,l)
screen.flip()
elseif aleatorio == 10 then
screen:blit(150,150,r)
screen.flip()
end 
end

if pad:start() and oldpad:start() ~= pad:start() then
turnos = turnos + 1
end

if inicio == 0 then
inicio = inicio +1
Azar()
end

if acertadas == 30 and modojuego == 1 then
GANASTE30()
end
if acertadas == 50 and modojuego == 2 then
GANASTE50()
end
if acertadas == 70 and modojuego == 3 then
GANASTE70()
end
if acertadas == 100 and modojuego == 4 then
GANASTE100()
end


if aleatorio == 1 and pad:cross() and oldpad:cross() ~= pad:cross() then
Azar()
puntos = puntos + 10
turnos = turnos + 1
acertadas = acertadas +1
end
if aleatorio == 2 and pad:square() and oldpad:square() ~= pad:square() then
Azar()
puntos = puntos +10
turnos = turnos +1
acertadas = acertadas +1
end
if aleatorio == 3 and pad:circle() and oldpad:circle() ~= pad:circle() then
Azar()
puntos = puntos +10
turnos = turnos +1
acertadas = acertadas +1
end
if aleatorio == 4 and pad:triangle() and oldpad:triangle() ~= pad:triangle() then
Azar()
puntos = puntos + 10
turnos = turnos +1
acertadas = acertadas +1
end
if aleatorio == 5 and pad:left() and oldpad:left() ~= pad:left() then
Azar()
puntos = puntos + 10
turnos = turnos + 1
acertadas = acertadas +1
end
if aleatorio == 6 and pad:right() and oldpad:right() ~= pad:right() then
Azar()
puntos = puntos +10
turnos = turnos +1
acertadas = acertadas +1
end
if aleatorio == 7 and pad:up() and oldpad:up() ~= pad:up() then
Azar()
puntos = puntos +10
turnos = turnos +1
acertadas = acertadas +1
end
if aleatorio == 8 and pad:down() and oldpad:down() ~= pad:down() then
Azar()
puntos = puntos + 10
turnos = turnos +1
acertadas = acertadas +1
end
if aleatorio == 9 and pad:l() and oldpad:l() ~= pad:l() then
Azar()
puntos = puntos + 10
turnos = turnos + 1
acertadas = acertadas +1
end
if aleatorio == 10 and pad:r() and oldpad:r() ~= pad:r() then
Azar()
puntos = puntos +10
turnos = turnos +1
acertadas = acertadas +1
end


if (puntos > 0) and pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 1 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 2 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 3 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
if puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 4 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 5 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 6 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
if puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 7 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 8 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 9 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
if puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down()  or pad:l() and oldpad:l() ~= pad:l() and aleatorio == 10 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end

screen.waitVblankStart()
oldpad = pad
end
end
--------------------------------------------------------------------------------------------------
----------------------------------------JUEGO--(CON--TIEMPO)--------------------------------------
--------------------------------------------------------------------------------------------------
function JUEGOTIEMPO()
negro = Color.new(0,0,0)
equis = Image.load("IMAGENES/JUEGO/equis.png")
circulo = Image.load("IMAGENES/JUEGO/circulo.png")
cuadrado = Image.load("IMAGENES/JUEGO/cuadrado.png")
triangulo = Image.load("IMAGENES/JUEGO/triangulo.png")
izquierda = Image.load("IMAGENES/JUEGO/izquierda.png")
derecha = Image.load("IMAGENES/JUEGO/derecha.png")
arriba = Image.load("IMAGENES/JUEGO/arriba.png")
abajo = Image.load("IMAGENES/JUEGO/abajo.png")
l = Image.load("IMAGENES/JUEGO/l.png")
r = Image.load("IMAGENES/JUEGO/r.png")
fondo = Image.load("IMAGENES/JUEGO/Fondo.png")
turnos = 0
puntos = 0
acertadas = 0
falladas = 0
inicio = 0
tiempos = 0
relog = 0
supera = 0
while true do
pad = Controls.read()
screen:clear()
screen:blit(0, 0, fondo)
screen:print(0,0,"Turnos:"..turnos,negro)
screen:print(350,0,"Puntos:"..puntos,negro)
screen:print(0,20,"Acertadas:"..acertadas,negro)
screen:print(350,20,"Falladas:"..falladas,negro)
screen:print(180,10,"Tiempo:"..relog,negro)


function Azar() 
math.randomseed(os.time() ) 
aleatorio = math.random(1,10)
oldpad = Controls.read()
end

if aleatorio == 1 then
screen:blit(150,150,equis)
screen.flip()
elseif aleatorio == 2 then
screen:blit(150,150,cuadrado)
screen.flip()
elseif aleatorio == 3 then
screen:blit(150,150,circulo)
screen.flip()
elseif aleatorio == 4 then
screen:blit(150,150,triangulo)
screen.flip()
elseif aleatorio == 5 then
screen:blit(150,150,izquierda)
screen.flip()
elseif aleatorio == 6 then
screen:blit(150,150,derecha)
screen.flip()
elseif aleatorio == 7 then
screen:blit(150,150,arriba)
screen.flip()
elseif aleatorio == 8 then
screen:blit(150,150,abajo)
screen.flip()
elseif aleatorio == 9 then
screen:blit(150,150,l)
screen.flip()
elseif aleatorio == 10 then
screen:blit(150,150,r)
screen.flip()
end 


if inicio >= 0 then
inicio = inicio +1
end
if tiempos == 0 then
tiempos = tiempos +1
Azar()
end

if relog == 0 and inicio== 60 then
relog = relog + 1
end

if inicio == (relog * 40) +40 then 
relog = relog + 1
end



function MRETO()
if relog == 30 and reto == 1 and acertadas >= 20 then
reto = 2
RETOS1()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
end
if relog == 30 and reto == 2 and acertadas >= 20 and falladas <= 5 then
reto = 3
RETOS1()
elseif falladas > 5 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and falladas > 5 and relog == 30 then
PERDISTES()
end
if relog == 30 and reto == 3 and acertadas >= 20 and falladas <= 3 then
reto = 4
RETOS1()
elseif falladas > 3 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and falladas > 3 and relog == 30 then
PERDISTES()
end
if relog == 30 and reto == 4 and acertadas >= 20 and falladas <= 1 then
reto = 5
RETOS1()
elseif falladas > 1 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and falladas > 1 and relog == 30 then
PERDISTES()
end
if relog == 30 and reto == 5 and acertadas >= 20 and falladas == 0 then
reto = 6
RETOS1()
elseif falladas > 0 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and falladas > 0 and relog == 30 then
PERDISTES()
end

if relog == 30 and reto == 6 and acertadas >= 30 then
reto = 7
RETOS1()
elseif acertadas < 30 and relog == 30 then
PERDISTES()
end
if relog == 30 and reto == 7 and acertadas >= 30 and falladas <= 5 then
reto = 8
RETOS1()
elseif falladas > 5 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 30 and falladas > 5 and relog == 30 then
PERDISTES()
end
if relog == 30 and reto == 8 and acertadas >= 30 and falladas <= 3 then
reto = 9
RETOS1()
elseif falladas > 3 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 30 and falladas > 3 and relog == 30 then
PERDISTES()
end
if relog == 30 and reto == 9 and acertadas >= 30 and falladas <= 1 then
reto = 10
RETOS1()
elseif falladas > 1 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 30 and falladas > 1 and relog == 30 then
PERDISTES()
end
if relog == 30 and reto == 10 and acertadas >= 30 and falladas == 0 then
reto = 11
RETOS1()
elseif falladas > 0 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 30 and falladas > 0 and relog == 30 then
PERDISTES()
end



if relog == 30 and reto == 11 and acertadas >= 40 then
reto = 12
RETOS1()
elseif acertadas < 40 and relog == 30 then
PERDISTES()
end
if relog == 30 and reto == 12 and acertadas >= 40 and falladas <= 5 then
reto = 13
RETOS1()
elseif falladas > 5 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 40 and falladas > 5 and relog == 30 then
PERDISTES()
end
if relog == 30 and reto == 13 and acertadas >= 40 and falladas <= 3 then
reto = 14
RETOS1()
elseif falladas > 3 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 40 and falladas > 3 and relog == 30 then
PERDISTES()
end
if relog == 30 and reto == 14 and acertadas >= 40 and falladas <= 1 then
reto = 15
RETOS1()
elseif falladas > 1 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 40 and falladas > 1 and relog == 30 then
PERDISTES()
end
if relog == 30 and reto == 15 and acertadas >= 40 and falladas == 0 then
reto = 16
supera = 1
RETOS1()
elseif falladas > 0 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 40 and falladas > 0 and relog == 30 then
PERDISTES()
end


if relog == 60 and reto == 17 and acertadas >= 45 then
reto = 18
RETOS1()
elseif acertadas < 45 and relog == 60 then
PERDISTES()
end
if relog == 60 and reto == 18 and acertadas >= 45 and falladas <= 5 then
reto = 19
RETOS1()
elseif falladas > 5 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 45 and falladas > 5 and relog == 60 then
PERDISTES()
end
if relog == 60 and reto == 19 and acertadas >= 45 and falladas <= 3 then
reto = 20
RETOS1()
elseif falladas > 3 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 45 and falladas > 3 and relog == 60 then
PERDISTES()
end
if relog == 60 and reto == 20 and acertadas >= 45 and falladas <= 1 then
reto = 21
RETOS1()
elseif falladas > 1 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 45 and falladas > 1 and relog == 60 then
PERDISTES()
end
if relog == 60 and reto == 21 and acertadas >= 45 and falladas == 0 then
reto = 22
RETOS1()
elseif falladas > 0 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 45 and falladas > 0 and relog == 60 then
PERDISTES()
end



if relog == 60 and reto == 22 and acertadas >= 55 then
reto = 23
RETOS1()
elseif acertadas < 55 and relog == 60 then
PERDISTES()
end
if relog == 60 and reto == 23 and acertadas >= 55 and falladas <= 5 then
reto = 24
RETOS1()
elseif falladas > 5 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 55 and falladas > 5 and relog == 60 then
PERDISTES()
end
if relog == 60 and reto == 24 and acertadas >= 55 and falladas <= 3 then
reto = 25
RETOS1()
elseif falladas > 3 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 55 and falladas > 3 and relog == 60 then
PERDISTES()
end
if relog == 60 and reto == 25 and acertadas >= 55 and falladas <= 1 then
reto = 26
RETOS1()
elseif falladas > 1 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 55 and falladas > 1 and relog == 60 then
PERDISTES()
end
if relog == 60 and reto == 26 and acertadas >= 55 and falladas == 0 then
reto = 27
RETOS1()
elseif falladas > 0 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 55 and falladas > 0 and relog == 60 then
PERDISTES()
end



if relog == 60 and reto == 27 and acertadas >= 65 then
reto = 28
RETOS1()
elseif acertadas < 65 and relog == 60 then
PERDISTES()
end
if relog == 60 and reto == 28 and acertadas >= 65 and falladas <= 5 then
reto = 29
RETOS1()
elseif falladas > 5 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 65 and falladas > 5 and relog == 60 then
PERDISTES()
end
if relog == 60 and reto == 29 and acertadas >= 65 and falladas <= 3 then
reto = 30
RETOS1()
elseif falladas > 3 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 65 and falladas > 3 and relog == 60 then
PERDISTES()
end
if relog == 60 and reto == 30 and acertadas >= 65 and falladas <= 1 then
reto = 31
RETOS1()
elseif falladas > 1 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 65 and falladas > 1 and relog == 60 then
PERDISTES()
end
if relog == 60 and reto == 31 and acertadas >= 65 and falladas == 0 then
reto = 32
supera = 1
RETOS1()
elseif falladas > 0 and relog == 30 then
PERDISTES()
elseif acertadas < 20 and relog == 30 then
PERDISTES()
elseif acertadas < 65 and falladas > 0 and relog == 60 then
PERDISTES()
end
end

if modojuego == 0 then
MRETO()
end

if relog == 30 and modojuego == 1 then
GANASTETIEMPO()
end
if relog == 60 and modojuego == 2 then
GANASTETIEMPO()
end
if relog == 120 and modojuego == 3 then
GANASTETIEMPO()
end


if aleatorio == 1 and pad:cross() and oldpad:cross() ~= pad:cross() then
Azar()
puntos = puntos + 10
turnos = turnos + 1
acertadas = acertadas +1
end
if aleatorio == 2 and pad:square() and oldpad:square() ~= pad:square() then
Azar()
puntos = puntos +10
turnos = turnos +1
acertadas = acertadas +1
end
if aleatorio == 3 and pad:circle() and oldpad:circle() ~= pad:circle() then
Azar()
puntos = puntos +10
turnos = turnos +1
acertadas = acertadas +1
end
if aleatorio == 4 and pad:triangle() and oldpad:triangle() ~= pad:triangle() then
Azar()
puntos = puntos + 10
turnos = turnos +1
acertadas = acertadas +1
end
if aleatorio == 5 and pad:left() and oldpad:left() ~= pad:left() then
Azar()
puntos = puntos + 10
turnos = turnos + 1
acertadas = acertadas +1
end
if aleatorio == 6 and pad:right() and oldpad:right() ~= pad:right() then
Azar()
puntos = puntos +10
turnos = turnos +1
acertadas = acertadas +1
end
if aleatorio == 7 and pad:up() and oldpad:up() ~= pad:up() then
Azar()
puntos = puntos +10
turnos = turnos +1
acertadas = acertadas +1
end
if aleatorio == 8 and pad:down() and oldpad:down() ~= pad:down() then
Azar()
puntos = puntos + 10
turnos = turnos +1
acertadas = acertadas +1
end
if aleatorio == 9 and pad:l() and oldpad:l() ~= pad:l() then
Azar()
puntos = puntos + 10
turnos = turnos + 1
acertadas = acertadas +1
end
if aleatorio == 10 and pad:r() and oldpad:r() ~= pad:r() then
Azar()
puntos = puntos +10
turnos = turnos +1
acertadas = acertadas +1
end


if puntos > 0 and pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 1 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end

if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 2 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 3 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
if puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 4 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 5 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 6 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
if puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 7 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 8 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 9 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down()  or pad:l() and oldpad:l() ~= pad:l() and aleatorio == 10 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end

screen.waitVblankStart()
oldpad = pad
end
end
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------