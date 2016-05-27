while true
  do
    ./fetch.sh

    if cmp -s tmplatest.png latest.png
    then
      echo "identical"
      sleep 60
    else
      timestamp=$(date +%s)
      cp tmplatest.png archive/pic$timestamp.png
      mv tmplatest.png latest.png
      sleep 5
    fi

  done
