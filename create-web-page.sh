# create-web-page.sh by ttur
# Source: https://github.com/ttur/neuralscape/create-web-page.sh
#
# This script is licensed under The MIT License (see LICENSE).

echo "" > index.html
echo "<html>" >> index.html
echo "<head>" >> index.html
echo "<title>Code Camp Neural Style</title>" >> index.html
echo "</head>" >> index.html
echo "<body>" >> index.html

ls img/*png | tac | while read pic;
  do
    echo "<img src=\"$pic\">" >> index.html
  done

echo "</body>" >> index.html
echo "</html>" >> index.html

cp index.html /var/www/html/
