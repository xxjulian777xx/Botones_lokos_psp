dofile("funciones.lua")

imagen = Image.load("IMAGENES/MENUS/inicio.png")

while true do 
screen:clear()
pad = Controls.read()

screen:blit(0,0,imagen)
screen.flip()
screen.waitVblankStart(100)
INICIO()


screen.flip()
screen.waitVblankStart()
end