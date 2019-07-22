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
    VLDR S24, [R8,#16]
    VLDR S25, [R9]          
	VLDR S26, [R9,#4] 		
	VLDR S27, [R9,#8]
	VLDR S28, [R9,#12]
    VLDR S29, [R9,#16]

lenstride:

	VMRS R3, FPSCR		
	MOV R4,  #0b11011	
	MOV R4, R4, LSL #16	
	ORR R3, R3, R4		
	VMSR FPSCR, R3		 
	VADD.F32 S8, S16, S24	

	VSTR S8, [R6]		
	VSTR S10, [R6,#4]
	VSTR S12, [R6,#8]
	VSTR S14, [R6,#12]

.data
vector1:	.float 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 12.0,13.0,14.0,15.0,16.0
vector2:	.float 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 12.0,13.0,14.0,15.0,16.0
vector3:	.float 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,0.0,0.0,0.0