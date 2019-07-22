// Mario Alejandro Sarmientos Inestroza 17055

.global main 
.func main 

main:
	LDR R8,=vector1	
	LDR R9,=vector2
	LDR R6,=vector3
	MOV R10,#3
//carga valor de vectores a los registros		
asignacion:
	VLDR S16, [R8]			
	VLDR S18, [R8,#4]		
	VLDR S20, [R8,#8]
	VLDR S22, [R8,#12]
    VLDR S22, [R8,#16]
    





//Lenght y Stride
	
	
	
	
	

.data
vector1:	.float 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 12.0,13.0,14.0,15.0,16.0
vector2:	.float 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 12.0,13.0,14.0,15.0,16.0
vector3:	.float 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,0.0,0.0,0.0
