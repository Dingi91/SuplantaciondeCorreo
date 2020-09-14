#!/bin/bash
clear


enviarUnCorreo(){
clear

        echo 'By: Dingi91 / https://github.com/Dingi91'
		
		echo 'Direccion de correo electronico para suplantar'
		read remitente
		clear
		
		echo 'Remitente -->' $remitente
		echo 'Direccion de correo receptor'
		read receptor
		clear
		
		echo 'Remitente -->' $remitente
		echo 'Receptor del correo -->' $receptor
		echo 'Asunto del correo'
		read asunto 
		clear
		
		echo 'Remitente -->' $remitente
		echo 'Receptor del correo -->' $receptor
		echo 'Asunto del correo -->' $asunto
		echo 'Mensaje'
		read mensaje
		clear
		
		echo 'Remitente -->' $remitente
		echo 'Receptor del correo -->' $receptor
		echo 'Asunto del correo -->' $asunto
		echo 'Mensaje -->'$mensaje
		echo '¿Estas seguro de que deseas enviar este mensaje? [S/N]'

		read ¡Estoy seguro!
		case $¡Estoy seguro! in
			s)
			curl --data "remitente=$receptor && asunto=$asunto && msj=$mensaje && desde=$remitente" https://insessorial-halls.000webhostapp.com/send.php  
				;;	
			n)
				clear
				Banner 
				menuInicial
		esac

}


menuInicial(){
clear
	
echo -e '\e[92mBienvenido '
echo ''
echo 'Presione la siguiente tecla (S) para iniciar con la suplantacion de correo.'
read opcion
case $opcion in 

	
	s)
	 enviarUnCorreo
	;;
								
	esac

}

Banner 
menuInicial