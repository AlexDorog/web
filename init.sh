sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn/hello.py
sudo /etc/init.d/gunicorn restart
sudo gunicorn -b 0.0.0.0:8080 hello:app

#sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
#sudo rm -rf /etc/nginx/sites-enabled/default
#sudo /etc/init.d/nginx restart

#sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
#sudo gunicorn -c /etc/gunicorn.d/hello.py hello:hello_app -D
#sudo ln -sf /home/box/web/etc/test.conf /etc/nginx/sites-enabled/default
#sudo service nginx restart