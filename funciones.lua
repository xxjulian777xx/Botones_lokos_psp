--------------------------------------------------------------------------------------------------
--------------------------------------------MENU--------------------------------------------------
--------------------------------------------------------------------------------------------------
function INICIO()
negro = Color.new(0,0,0)
juegos=Image.load("IMAGENES/MENUS/menu.png")
instrucciones = Image.load("IMAGENES/MENUS/menu1.png")
creditos=Image.load("IMAGENES/MENUS/menu2.png")
salir=Image.load("IMAGENES/MENUS/menu3.png")

remplazo=juegos
opcion = 0

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
negro = Color.new(0,0,0)
A30=Image.load("IMAGENES/MENUS/A30.png")
A50=Image.load("IMAGENES/MENUS/A50.png")
A70=Image.load("IMAGENES/MENUS/A70.png")
A100=Image.load("IMAGENES/MENUS/A100.png")

remplazo1=A30

modojuego = 0 
while true do


pad = Controls.read()
screen:clear()

screen:blit(0,0,remplazo1)



if pad:down() and oldpad:down() ~= pad:down() and remplazo1==A30 then
remplazo1=A50
else

if pad:down() and oldpad:down() ~= pad:down() and remplazo1==A50 then
remplazo1=A70
else
if pad:down() and oldpad:down() ~= pad:down() and remplazo1==A70 then
remplazo1=A100
else
if pad:down() and oldpad:down() ~= pad:down() and remplazo1==A100 then
remplazo1=A30
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo1==A50 then
remplazo1=A30
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo1==A70 then
remplazo1=A50
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo1==A30 then
remplazo1=A100
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo1==A100 then
remplazo1=A70
else
end
end 
end
end 
end
end 
end 
end



if pad:cross() and oldpad:cross() ~= pad:cross() and remplazo1==A30 then
modojuego = modojuego +1
JUEGO()
elseif pad:cross() and oldpad:cross() ~= pad:cross() or pad:start() and remplazo1==A50 then
modojuego = modojuego +2
JUEGO()
elseif pad:cross() and oldpad:cross() ~= pad:cross() or pad:start() and remplazo1==A70 then
modojuego = modojuego +3
JUEGO()
elseif pad:cross() and oldpad:cross() ~= pad:cross() or pad:start() and remplazo1==A100 then
modojuego = modojuego +4
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

modojuego = 0 
while true do

pad = Controls.read()
screen:clear()

screen:blit(0,0,remplazo2)



if pad:down() and oldpad:down() ~= pad:down() and remplazo2 == tiempo30  then
remplazo2=tiempo60
else
if pad:down() and oldpad:down() ~= pad:down() and remplazo2 == tiempo60 then
remplazo2=tiempo120
else
if pad:down() and oldpad:down() ~= pad:down() and remplazo2 == tiempo120 then
remplazo2=tiempo30
end
end
end

if pad:up() and oldpad:up() ~= pad:up() and remplazo2==tiempo30 then
remplazo2=tiempo120
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo2==tiempo120 then
remplazo2=tiempo60
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo2==tiempo60 then
remplazo2=tiempo30
end
end
end




if pad:cross() and oldpad:cross() ~= pad:cross() and remplazo2==tiempo30 then
modojuego = modojuego +1
JUEGOTIEMPO()
elseif pad:cross() and oldpad:cross() ~= pad:cross() or pad:start() and remplazo2==tiempo60 then
modojuego = modojuego +2
JUEGOTIEMPO()
elseif pad:cross() and oldpad:cross() ~= pad:cross() or pad:start() and remplazo2==tiempo120 then
modojuego = modojuego +3
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
function MODOSDEJUEGO() 
modo = Image.load("IMAGENES/MENUS/modo.png")
modo1 = Image.load("IMAGENES/MENUS/modo1.png")


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
remplazo3 = modo
end
end


if pad:up() and oldpad:up() ~= pad:up() and remplazo3 == modo then
remplazo3 = modo1
else
if pad:up() and oldpad:up() ~= pad:up() and remplazo3 == modo1 then
remplazo3 = modo
end
end

if pad:cross() and oldpad:cross() ~= pad:cross() and remplazo3 == modo then
MENUTIEMPO()
end
if pad:cross() and oldpad:cross() ~= pad:cross() and remplazo3 == modo1 then
MENUACERTAR()
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
blanco = Color.new(255,255,255)
negro = Color.new(0,0,0)
aciertos30 = Image.load("IMAGENES/MENUS/30.png")
puntuaje = Image.load("IMAGENES/MENUS/puntuaje.png")

remplazo4 = 0
while true do
pad = Controls.read()
screen:clear()
screen:blit(0,0,aciertos30)


if pad:start() then
remplazo4 = 1
end
if remplazo4 == 1 then
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
blanco = Color.new(255,255,255)
negro = Color.new(0,0,0)
aciertos50 = Image.load("IMAGENES/MENUS/50.png")
puntuaje = Image.load("IMAGENES/MENUS/puntuaje.png")
remplazo5 = 0
while true do
pad = Controls.read()
screen:clear()
screen:blit(0,0,aciertos50)


if pad:start() then
remplazo5 = 1
end
if remplazo5 == 1 then
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
blanco = Color.new(255,255,255)
negro = Color.new(0,0,0)
aciertos70 = Image.load("IMAGENES/MENUS/70.png")
puntuaje = Image.load("IMAGENES/MENUS/puntuaje.png")
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
blanco = Color.new(255,255,255)
negro = Color.new(0,0,0)
aciertos100 = Image.load("IMAGENES/MENUS/100.png")
puntuaje = Image.load("IMAGENES/MENUS/puntuaje.png")
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

negro = Color.new(0,0,0)
acabo = Image.load("IMAGENES/MENUS/acabo.png")
puntuaje = Image.load("IMAGENES/MENUS/puntuaje.png")
remplazo8 = 0
while true do
pad = Controls.read()
screen:clear()
screen:blit(0,0,acabo)


if pad:start() then
remplazo8 = remplazo8 +1
end
if remplazo8 >= 1 then
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
-----------------------------------------CREDITOS-------------------------------------------------
--------------------------------------------------------------------------------------------------
function CREDITO()
negro = Color.new(255,255,255)
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
screen:blit(0, 0, fondo)

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


--quitas equis
if (puntos > 0) and pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 1 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--cuadrado
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 2 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--circulo
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 3 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--triangulo
if puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 4 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--left
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 5 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--right
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 6 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--up
if puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 7 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--down
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 8 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--l
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 9 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--r
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


--quitas equis
if puntos > 0 and pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 1 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--cuadrado
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 2 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--circulo
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 3 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--triangulo
if puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 4 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--left
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 5 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--right
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 6 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--up
if puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:down() and oldpad:down() ~= pad:down() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 7 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--down
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:l() and oldpad:l() ~= pad:l()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 8 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--l
if  puntos > 0 and pad:cross() and oldpad:cross() ~= pad:cross() or pad:square() and oldpad:square() ~= pad:square() or pad:circle() and oldpad:circle() ~= pad:circle() or pad:triangle() and oldpad:triangle() ~= pad:triangle() or pad:left() and oldpad:left() ~= pad:left() or pad:right() and oldpad:right() ~= pad:right() or pad:up() and oldpad:up() ~= pad:up() or pad:down() and oldpad:down() ~= pad:down()  or pad:r() and oldpad:r() ~= pad:r() and aleatorio == 9 then
Azar()
puntos = puntos -5
turnos = turnos +1
falladas = falladas +1
end
--r
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