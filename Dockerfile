FROM ingktds/perl
MAINTAINER ingktds <tadashi.1027@gmail.com>
RUN groupadd toban
RUN useradd -g toban toban
RUN mkdir /var/toban/
RUN chown toban:toban /var/toban
RUN yum install -y openssl openssl-devel

EXPOSE 8000
VOLUME [ "/var/toban" ]
WORKDIR /var/toban
CMD [ "carton", "exec", "--", "hypnotoad", "-f", "script/toban" ]
