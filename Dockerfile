FROM archlinux/base
MAINTAINER Krzysztof Nazarewski <nazarewk+docker@gmail.com>

ADD archlinuxfr /tmp/archlinuxfr
RUN cat /tmp/archlinuxfr >> /etc/pacman.conf && pacman -Syu --noconfirm