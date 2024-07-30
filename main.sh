#!/bin/bash
while true;
	do
	echo
	select command in "CREATE DataBases" "LIST DataBases" "DROP DataBases" "CONNECT TO DataBases" "exit"
	do
		
		case $REPLY in
			1) echo -e "Creating database"
				source ./Scripts/creatingDataBase_Script
				;;
			2) echo -e "------------------- Listing Database -----------------------\n"
				if [[ -d ./DataBases ]];then
					ls ./DataBases
					echo -e "-------------------------------------------------------\n"
				else
					echo -e "There are No databases created, Press 1 to create one \n"
				fi
				;;
			3) echo -e "Dropping a database"
				source ./Scripts/deletingDataBase_Script
				;;
			4) echo -e "Connect to database"
				 ./Scripts/tableMenu_Script
				;;
			5) echo  " App Terminated! "
				exit
				;;
			*) echo -e "Command not found"
				;;
		esac
		break
	done
done
