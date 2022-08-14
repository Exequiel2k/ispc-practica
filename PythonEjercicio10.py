Cantidad=int(input("Ingrese la cantidad de nombres que va a ingresar:"))
Clientes=[]
for i in range (Cantidad):
    Clientes.append(input ("Ingrese el nombre del Cliente a agregar:"))
Clientes.sort()

print ("Lista de Clientes ordenada alfabéticamente:", Clientes)
