FROM ubuntu

RUN apt-get update
RUN apt-get -y install apache2 python3 pip git imagemagick vim curl
RUN a2enmod cgid
RUN pip3 install jinja2 maxminddb python-magic
#RUN cd /var/www/html/ && git clone https://github.com/lmcnulty/gender-voice-visualization/
ADD . /var/www/html/gender-voice-visualization
RUN mkdir /rec
RUN chmod 777 /rec
ADD apache2.conf /etc/apache2
ADD 000-default.conf /etc/apache2/sites-available

RUN service apache2 restart

CMD apachectl -D FOREGROUND
