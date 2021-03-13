# nested/dynamic commands
bold="italic"
echo 1 `whoami` 2 "$whoami" 3 $whoami 4 "${whoami}" 5 "$(whoami)" 6 ${whoami} 7 $(whoami) "sds"	
echo 1 `bold` 2 "$bold" 3 $bold 4 "${bold}" 5 "$(bold)" 6 ${bold} 7 $(bold) "sds"
export  bold="italic"
echo 1 `bold` 2 "$bold" 3 $bold 4 "${bold}" 5 "$(bold)" 6 ${bold} 7 $(bold) "sds"

