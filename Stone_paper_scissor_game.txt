#!/bin/bash

Player_won=0
Computer_won=0
user_input="y"

arr[0]="Paper"
arr[1]="Rock"
arr[2]="Scissor"

echo -e "\e[1;36mSTART XXXXXXXXXXX OF  XXXXXXXXXXX GAME XXXXXXXXXXX\e[0m" >> paperscissorrock.log
time_start=`date`
echo -e "\e[1;32mStarting time is : $time_start\e[0m" >> paperscissorrock.log
echo -e "\e[1;33mEnter y for playing more, else quit\e[0m" >> paperscissorrock.log

read -p "Please Enter Your name : " name
echo "Name : $name" >> paperscissorrock.log

while [ "$user_input" == "y" ]
   do
	
          read -p "Please Enter your choice [Paper, Scissor, Rock] : " yourchoice
          echo "$name Choice as : $yourchoice" >> paperscissorrock.log
          rand=$[ $RANDOM % 3 ]
          computerchoice=`echo ${arr[$rand]}`

          echo -e "\e[1;32mComputer Selected : $computerchoice\e[0m" 
          echo "computer choice as : $computerchoice" >> paperscissorrock.log

if [ "$yourchoice" == "Paper" ] || [ "$yourchoice" == "Scissor" ] || [ "$yourchoice" == "Rock" ];
   then

 if [ "$yourchoice" == "Paper" ] && [ "$computerchoice" == "Paper" ];
   then
	   echo -e "\e[1;34mThis is a tie\e[0m"
	   echo -e "\e[1;34mNo one won\e[0m"
	   echo "Choices Same of $name and Computer" >> paperscissorrock.log

   elif [ "$yourchoice" == "Rock" ] && [ "$computerchoice" == "Rock" ]
   then
           echo -e "\e[1;34mThis is a tie\e[0m"
           echo -e "\e[1;34mNo one won\e[0m"
	   echo "Choices Same of $name and Computer" >> paperscissorrock.log

   elif [ "$yourchoice" == "Scissor" ] && [ "$computerchoice" == "Scissor" ]
   then
           echo -e "\e[1;34mThis is a tie\e[0m"
           echo -e "\e[1;34mNo one won\e[0m"
	   echo "Choices Same of $name and Computer" >> paperscissorrock.log

   elif [ "$yourchoice" == "Paper" ] && [ "$computerchoice" == "Scissor" ]
   then
	   echo -e "\e[1;34mComputer won\e[0m"
	   Computer_won=$(($Computer_won + 1))
	   echo "Computer won as he chooses Scissor" >> paperscissorrock.log

   elif [ "$yourchoice" == "Paper" ] && [ "$computerchoice" == "Rock" ] 
   then
   	   echo -e "\e[1;34m$name won\e[0m"
 	   Player_won=$(($Player_won + 1))
	   echo "$name won as he chooses Paper" >> paperscissorrock.log

   elif [ "$yourchoice" == "Rock" ] && [ "$computerchoice" == "Paper" ]
   then
   	   echo -e "\e[1;34mComputer won\e[0m"
           Computer_won=$(($Computer_won + 1))
	   echo "Computer won as he chooses Paper" >> paperscissorrock.log

   elif [ "$yourchoice" == "Rock" ] && [ "$computerchoice" == "Scissor" ]
   then
   	   echo -e "\e[1;34m$name won\e[0m"
           Player_won=$(($Player_won + 1))
	   echo "$name won as he chooses Rock" >> paperscissorrock.log

   elif [ "$yourchoice" == "Scissor" ] && [ "$computerchoice" == "Paper" ]
   then
  	   echo -e "\e[1;34m$name won\e[0m"
           Player_won=$(($Player_won + 1))
	   echo "$name won as he chooses Scissor" >> paperscissorrock.log

   elif [ "$yourchoice" == "Scissor" ] && [ "$computerchoice" == "Rock" ]
   then
   	   echo -e "\e[1;34mComputer won\e[0m"
           Computer_won=$(($Computer_won + 1))
	   echo "Computer won as he chooses Rock" >> paperscissorrock.log
  fi
           else echo -e "\e[1;31mInvalid $name Choice $yourchoice\e[0m"
		   echo "$name made Invalid Choice" >> paperscissorrock.log
fi
           echo -e "\e[1;35mCurrent Score : \e[0m"
           echo -e "\e[1;35mComputer : $Computer_won $name Score : $Player_won\e[0m"
	   echo "Current Score : " >> paperscissorrock.log
           echo "Computer : $Computer_won $name Score : $Player_won" >> paperscissorrock.log

   
           read -p "Do You want to continue (y/n): " user_input
	       
	      if [ "$user_input" == "y" ];
	        then
                  echo "$name Wants to Continue as he chooses $user_input" >> paperscissorrock.log
		  echo "******************************************************" >> paperscissorrock.log
              fi
   done

echo -e "\e[1;36m$name Dont want to play\e[0m"
echo -e "\e[1;36mQuitting Game\e[0m" 
echo -e "\e[1;33m$name doesn't want to Continue as he chooses $user_input\e[0m" >> paperscissorrock.log
time_end=`date`
echo -e "\e[1;32mEnding time is : $time_end\e[0m" >> paperscissorrock.log
echo -e "\e[1;36mEND XXXXXXXXXXXXX OF  XXXXXXXXXXX GAME XXXXXXXXXXX\e[0m\n\n" >> paperscissorrock.log
