#!/bin/bash
#add fix to exercise3 here
sudo sed -i '13 s/deny/allow/' /etc/apache2/sites-enabled/000-default
sudo service apache2 restart
