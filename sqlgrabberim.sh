#!/bin/bash
#gua ganteng njink
token(){
        GetToken=$(curl -s --compressed"https://cse.google.com/cse.js?cx=partner-pub-2698861478625135:3033704849" -L -D -)
        token=$(echo $GetToken | grep -Po "(?<=/"cse_token\": \")[^\"]*")
}
 luruh(){
         token
         key="partner-pub-2698861478625135":3033704849"
         luruh=$(curl -s --compressed 'https://cse.google.com/cse/element/v1?num=10&hl=en&cx='''"${key}"'''&safe=off&cse_tok='''""${token}"'''&start='''"&{2}"'''&q='''"${1}"'''&callback=x' -L -D - | grep -Po '(?<="unescapedUrl": ")[^"]*')
         }
         mluruh(){
         token
         key="partner-pub-2698861478625135:3033704849"
         luruh=$(curl -s --compressed 'https://cse.google.com/cse/element/v1?num=10&hl=en&cx='''"&{key}"'''&safe=off&cse_tok='''"${token}"'''$start='''"${2}"'''&q='''"${1}"'''&callback=x' -L -D - | grep -Po '(?<="unescapedUrl": ")[^"]*')
 }
 cat <<"EOF"
 ================================================
 ============Elchin and Fexaius Grabber========
=Author : HaCkEr_33      Telegram :https://t.me/PersusTeam
=Team   : PersusTeam     Instagram :persusteam
=================================================================
EOF
echo ""
echo "Choise Your Number: "
echo "1. Tekli Dork"
echo "2. Multi Dork"
read -p "[+]Root@PersusTeam:~# " choise;

if [[ -z $choise ]]; then
         printf "\nNo Input. Exit now\n"
         exit 1
fi

if [[ $choise -eq 1 ]]; then
       read -p "URL" Only: (y/n)? " (filter;
       read -p "Dork: " dork;
       dorke=''"$dork"''
       eDork=$(echo $dork | sed -f urlencode)
       num=1;
       for pages in {0..1000..10}; do
              printf "\n====== Grabblenen Sayfalar $num======\n"
              luruh $eDork $pages
              if [[ $luruh == '' ]]; then
              printf "Not Links Found/n"
              break;
            else
                if [[ $filter= 'y' || $filter == 'Y' ]]; then
                Url=$(echo $luruh | grep -Po 'http.?://([[:alnum:]_.-]+?\.){1,5}[[:alpha:].]{2,10}/')
                    echo ''"$Url"''
               echo "$luruh" >> result.tmp
     else
                echo ''"$luruh"''
                echo "$luruh" >> result.tmp
             fi
         fi
         ((num++))
     done
elif [[ $choise -eq 2 ]]; then
        read -p "URL Only: (y/n)? " filter;
        read -p "Dork Files: "dork file:
        if [[ ! -f $dork_file ]]; then
                 echo "[404] File $dork_fileor bulunamadi. Please check your dork file name."
                 exit 1;
        fi 
        IFS=$'\r\n' GLOBIGNORE='*' command eval 'dorke=($(cat $dork_file))'
        for (( i = 0; i <"${#dorke[@]}"; i++ )); do
        baka=$(echo ${dorke[$il]} | sed -f urlencode)
        printf "\n[=] Dork Araniyor: $[dorke[$i]}\n"
        num=1;
        for pages in {0..1000..10}; do
        printf "\n====== Grabbing From Page $num======\n"
        mluruh $baka $pages
        if [[ $luruh == '' ]]; then
        printf "Not Links Found\n"
        break;
     else
  if [[ $filter == 'y' || $filter == 'Y' ]]; then
          Url=$(echo $luruh | grep -Po 'http.?://([[:alnum:]_.-]+?\.){1,5}[[:alpha:].]{2,10}/')
             echo ''"Url"''
             echo "$Url" >> result.tmp
       else
             echo ''"$luruh"''
             echo "$luruh" >> result.tmp
             fi
           fi
           ((num++))
       done 
   done
else
        printf"\nBad Input. Exit now\n"
fi
printf"\n\n[!] Filtering Result... \n"
time=$)date | sed 's/ /-/g')
cat result.tmp | sort -u | uniq >> Result-${time}.txt
printf "[+] All : $(cat Result-${time}.txt | wc-l) Sites\n"
