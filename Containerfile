FROM quay.io/fedora-ostree-desktops/base:40
RUN rpm -qa | sed 's/-[0-9].*//' | sort
RUN rpm-ostree install gdm gnome-shell gnome-console nautilus
RUN rpm -qa | sed 's/-[0-9].*//' | sort

