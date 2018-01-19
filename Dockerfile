FROM archimg/base-devel
MAINTAINER Krzysztof Nazarewski <nazarewk+docker@gmail.com>

ADD archlinuxfr /tmp/archlinuxfr
RUN cat /tmp/archlinuxfr >> /etc/pacman.conf && pacman -Syu --noconfirm
RUN pacman -S --noconfirm yaourt && paccache -rk 0
RUN adduser -aG wheel arch \
 && echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/wheel
USER arch