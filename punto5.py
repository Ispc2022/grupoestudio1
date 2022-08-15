historial=(2350, 5960, 23000, 1000, 8900)
suma=0
i=0
while i<len(historial):
	suma+=historial[i]
	i+=1
if suma <= 30000:
	print("la suma de los gastos de Puppy es de", suma)
else:
	print("gastos por encima de lo presupuestado")
	