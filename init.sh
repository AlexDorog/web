#sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
#sudo /etc/init.d/nginx restart
#sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn/hello.py
#sudo /etc/init.d/gunicorn restart
#sudo gunicorn -b 0.0.0.0:8080 hello:app

sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo gunicorn -w 2 -c /home/box/web/etc/hello.py hello:app & curl 'http://127/0/0/1:8080/?a=1&a=2&b=3'

#sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
#sudo gunicorn -c /etc/gunicorn.d/hello.py hello:hello_app -D
#sudo ln -sf /home/box/web/etc/test.conf /etc/nginx/sites-enabled/default
#sudo service nginx restart