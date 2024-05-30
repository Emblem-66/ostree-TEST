FROM quay.io/fedora-ostree-containers/base:latest
RUN rpm -qa | sed 's/-[0-9].*//' | sort
RUN yum install -y rpm-ostree
#RUN yum install -y gdm gnome-shell gnome-console nautilus
RUN rpm -qa | sed 's/-[0-9].*//' | sort

# RUN yum install gdm gnome-shell gnome-console nautilus
