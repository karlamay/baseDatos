/*base de datos corta*/
.data
db_sour: @ 1 2 3 4 5 6 7 8 9 0
.ascii "LULU","LUCY","GEOO","LEON","AGUS","MAXI","MAJO","ALEX","TINA","ANDY"
.ascii "GINA","LUPE","LINA","PATY","TONY","TONI","LISA","LOLA","LALO","ANIS"
.ascii "ARON","EDDY","GUSS","IVAN","JAIR","ZACK","MAGY","RAFA","RAUL","RICO"
.ascii "SAMY","FAVY","ISIS","VIKY","JUAN","MARY","CECI","GABY","LILI","DANI"
.ascii "NICO","CUCA","VERO","BERE","RENE","ROSA","SARA","SAUL","LUZZ","TEOO"
.ascii "FLOR","PAME","LUIS","SUSY","TERE","JOSE","RAFA","POLO","PAZZ","PACO"
.ascii "YOLA","ALMA","ROSY","ROSA","FANY","ELIA","ELII","BLAS","ANAA","SONY"
.ascii "JENY","ERIC","ARES","EROS","ZEUS","IRIS","PEPE","KINO","BONI","ALDO"
.ascii "LISA","DOLY","NORA","DORA","CRIS","CARO","REYY","IVON","BENI","ARAA"
.data
db_dest: @ 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0
.word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
.global main
main:
	ldr r0,=db_sour /*r0 tendra la direccion de db_sour*/
	ldr r1,=db_dest /*r0 tendra la direccion de db_dest*/
	mov r5,#90 /*r5 ← 90 (contador)*/
transfer:
	ldr r2,[r0] /*r2 tendra el contenido de r0 ("LULU")*/
	str r2,[r1] /*r2 tendra el contenido de r1*/
	add r0,r0,#4 /*r0=r0+4*/
	add r1,r1,#4 /*r1=r1+4*/
	subs r5,#1 /*resta al contador y actualiza a Z*/
	bne transfer /*compara si Z==0*/
	bx lr
