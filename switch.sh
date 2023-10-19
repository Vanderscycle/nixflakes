#!/run/current-system/sw/bin/bash


PS3='Please enter your choice: '

options=("Hyprland" "System" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Hyprland")
            echo "You chose Hyprland"
            sudo nixos-rebuild switch --flake '.' -p "Hyprland"
            ;;
        "System")
            echo "You chose System"
            sudo nixos-rebuild switch --flake '.'
            ;;

        "Quit")
            break
            ;;
        *) echo "Invalid option $REPLY";;
    esac
done
