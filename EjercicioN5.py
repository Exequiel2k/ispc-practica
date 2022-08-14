historia = 2350, 5960, 2300, 1000, 8900

print ('Los gastos de de cada servicio son los siguientes : ' + str(historia))

res = sum(list(historia))

print ('La suma total de todos los serivicios de Puppy son : ' + str(res))

if res > 30000:
    print('Gastos por encima de lo presupuestado')
else:
    print('Los gastos estan dentro del presupuesto, con un total de ' + str(res))
