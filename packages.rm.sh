#!/bin/sh

apt-get -y purge \
   aisleriot           \
   empathy             \
   gnome-contacts      \
   gnome-mahjongg      \
   gnome-disk-utility  \
   gnome-terminal      \
   gnome-screenshot    \
   gnome-mines         \
   gnome-sudoku        \
   thunderbird         \

exec apt-get -y autoremove
