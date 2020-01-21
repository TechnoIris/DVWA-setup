echo "[*]loading DVWA copy......"
sudo git clone https://github.com/ethicalhack3r/DVWA

sudo cp -r ./DVWA/ /var/www/html/DVWA/

cd /var/www/html/DVWA/config/

sudo cp config.inc.php.dist  config.inc.php

if [ -n $BROWSER ]; then
  $BROWSER 'http://127.0.0.1/DVWA/setup.php'
elif which xdg-open > /dev/null; then
  xdg-open 'http://127.0.0.1/DVWA/setup.php'
elif which gnome-open > /dev/null; then
  gnome-open 'http://127.0.0.1/DVWA/setup.php'
else
  echo "Could not detect the web browser to use."
fi
