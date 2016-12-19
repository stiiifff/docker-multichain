FROM tutum/apache-php
MAINTAINER Steve Degosserie "stiiifff@gmail.com"

RUN rm -fr /app
ADD app/ /app

ADD ./rundemo.sh /root/rundemo.sh
RUN chmod a+x /root/rundemo.sh

CMD ["/bin/bash", "/root/rundemo.sh"]
