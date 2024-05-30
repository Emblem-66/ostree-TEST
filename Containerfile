# Comparing base images

FROM quay.io/fedora-ostree-containers/base:latest
RUN rpm -qa | sed 's/-[0-9].*//' | sort

FROM quay.io/fedora-ostree-containers/base-minimal:latest
RUN rpm -qa | sed 's/-[0-9].*//' | sort

FROM quay.io/fedora-ostree-containers/minimal:latest
RUN rpm -qa | sed 's/-[0-9].*//' | sort

# Comparing the images after basic GNOME install

FROM quay.io/fedora-ostree-containers/base:latest
RUN rpm-ostree install gdm gnome-shell gnome-console nautilus
RUN rpm -qa | sed 's/-[0-9].*//' | sort

FROM quay.io/fedora-ostree-containers/base-minimal:latest
RUN rpm-ostree install gdm gnome-shell gnome-console nautilus
RUN rpm -qa | sed 's/-[0-9].*//' | sort

FROM quay.io/fedora-ostree-containers/minimal:latest
RUN rpm-ostree install gdm gnome-shell gnome-console nautilus
RUN rpm -qa | sed 's/-[0-9].*//' | sort
