FROM archlinux:base-devel
MAINTAINER Krzysztof Nazarewski <3494992+nazarewk@users.noreply.github.com>

ADD bin/ /usr/local/bin/

RUN set -x && \
  useradd -m -d /home/arch -G wheel arch && \
  printf '%%wheel ALL=(ALL) NOPASSWD: ALL\n' | tee -a /etc/sudoers.d/wheel
USER arch
WORKDIR /home/arch

RUN set -x && \
  sudo pacman -Sy git sudo pacman pacman-contrib --noconfirm && \
  cd /tmp/ && \
  curl https://aur.archlinux.org/cgit/aur.git/snapshot/yay-bin.tar.gz | tar zx && \
  cd yay-bin && \
  makepkg -si --noconfirm && \
  docker-build-cleanup
