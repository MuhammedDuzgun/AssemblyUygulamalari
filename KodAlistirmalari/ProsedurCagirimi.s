#------------------------



	.data #the global variable field
	

	
	
	.text #the user codes
	
	
	
main:

	li			$s0, 5
	li			$s1, 10
	
	li 			$t0, -5
	li 			$t1, 10
	
	jal			carp
	
	
carp: 	

	addi		$sp, $sp, -8
	sw			$s0, 0($sp)
	sw			$s1, 4($sp)
	
	mul			$s0, $t0, $t1
	li			$s1, 0x10010000
	sw			$s0, 0($s1)
	
	lw			$s0, 0($sp)
	lw			$s1, 4($sp)
	addi		$sp, $sp, 8
	jr			$ra
	
bitir: 


#------------------------
	#terminate the main program
	li $v0, 10		
	syscall 		