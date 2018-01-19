FROM archimg/base-devel
MAINTAINER Krzysztof Nazarewski <nazarewk+docker@gmail.com>

ADD archlinuxfr /tmp/archlinuxfr
RUN cat /tmp/archlinuxfr >> /etc/pacman.conf && pacman -Syu --noconfirm
RUN pacman -S --noconfirm yaourt