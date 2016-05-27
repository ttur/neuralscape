while true
   do
      ./oldest.sh

      if cmp -s tmpcontent.jpg content.jpg
      then
         echo "identical"
         sleep 30
      else
         cp tmpcontent.jpg content.jpg
         ./generate.sh
         timestamp=$(date +%s)
         scp result.png user@WEB_SERVER_ADDRESS:/home/u/user/neural/img/result$timestamp.png
         ssh user@WEB_SERVER_ADDRESS 'cd neural;./create_html.sh'
      fi
   done
