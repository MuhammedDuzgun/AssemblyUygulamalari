
#Sablon

.data


.text


main: 

addi $t0, $zero, 11
addi $t1, $zero, 10

add  $t2, $t1, $t0

li $t3, 30
li $t4, 18
sub $t5, $t3, $t4


#Sonlandirma
li $v0, 10
syscall

