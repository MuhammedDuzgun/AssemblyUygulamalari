#------------------------



	.data #the global variable field
	
	
	.text #the user codes
	
	
main:
	
	#Mantiksal Operatorler - AND 
	
		#d sayisinin en degerliksiz uc bitini bir register'a atayalim. (bunun icin 7 ile VE 'leyelim.)
	
		#li			$t0, 0xd
		#li			$t1, 7
		#and		$t2, $t0, $t1		#t2 register'ında 5 olmasi lazim.
	
		#yukaridaki islemi t1 register'ina 7 yuklemeden dogrudan andi komutu kullanarak yapabiliriz: 
	
		#li			$t0, 0xd
		#andi		$t1, $t0, 7				#t1 register'inda 5 olmasi lazim
	
	
	#Mantiksal Operatorler - OR 
		
		#Genellikle bir register'daki veriyi baska bir register'daki veri ile birlestirilirken kullanilir.
			
		#li			$t0, 0x5
		#ori		$t1, $t0, 8		#t1 register'inda 13 (d) olmasi lazim.
	
	
	#Mantiksal Operatorler - NOR
		
		#Genellikle bir degeri 0 ile NOR 'layarak o degerin NOT degerini bulmada kullanilir.
		
		#li			$t0, 0xffff0000
		#nor		$t1, $t0, 0			#t1 register'inda 000..fff olmasi lazim (f'nin tersi 0, 0'in tersi 1)
	
	
	#Mantiksal Operatorler - SLL,SRL - Shifting (Kaydirma)
	
		#Kaydirma komutlaridir. Genellikle iki ile carpma(sll) ve ikiye bolme(srl) islemlerinde kullanilir.
		
		#li			$t0, 3
		#sll 		$t1, $t0, 3			#(3*2=6, 6*2=12, t1 register'inda 12(c) olmasi lazim)
		
		#li 		$t0, 48
		#srl 		$t1, $t0, 3 		#srl -> saga kaydirma yani 2'ye bolme (48/2=24, 24/2=12, 12/2=6 $t1 register'inda 6 olmasi lazim)
		
		
		
	#Mantiksal Operatorler - slt, slti, sltiu(isaretli sayi) - Karsilastirma	
		
		#slt - set on less than (yani ilk register'daki deger ikinci registerdaki degerden kucuk ise ilgili register'î 1 yap)
		
		#li 		$t0, 1
		#li			$t1, 2
		#slt		$t2, $t0, $t1		#($t2 register'i 1 olmalidir.)
		
		
		
		#slti - set on less than (tek farki direkt sabir bir sayi ile yapabiliriz)
		
		#li 		$t0, 1
		#slti		$t1, $t0, 2
		
		
		#sltiu - tek farki isaretli sayilarda kullaniliyor.
		
	
	#Mantiksal Operatorler - mul - mult - multu - CARPMA ISLEMİ
		
		#MUL (maks 32 bit sayilara kadar carpma islemi yapar - Pseudo koddur, asil carpma kodu MULT'dur.)
		
		#li			$t0, 12
		#li 		$t1, 3
		#mul  		$t2, $t0, $t1		#(t2 register'inda 12*3=36 olmalidir.)
		
		
		#MULT (32 bit'den de daha buyuk sayilar arasinda carpma islemi yapar.)
		
		#li 		$t0, 1000000
		#li 		$t1, -2000000
		
		#mult 		$t0, $t1	#(t0 ve t1 register'larindaki degerleri carpar)
		
		#mflo 		$s0			#mf low  -> en degersiz 32 biti s0 register'ina yaz.
		#mfhi		$s1			#mf high -> en degerli 32 biti s1 register'ina yaz.
		
		
		#MULTU	(MULT -U (Unasigment -> isaret bitini dikkate almadan direkt pozitif olarak sayiyi degerlendirir.))
		
		#li 		$t0, 0xfffffff0
		#li 		$t1, 8
		
		#multu 		$t0, $t1
		
		#mflo		$s0
		#mfhi 		$s1
		
	

	#Mantiksal Operatorler - div - bolme islemi
	
	
		#$div operatoru ile once bolunen sonra bolen yazilir. Sonra bolum mflo ile, kalan ise mfhi ile yazilir.
		
		li 			$t0, 306
		li 			$t1, 0xf
		
		div 		$t0, $t1
		
		mflo 		$s0
		mfhi 		$s1
		
	

#------------------------
	#terminate the main program
	li $v0, 10		
	syscall 		