setxkbmap latam  &
pipewire &
nitrogen --restore &
picom --config /home/$USER/.config/picom.conf &


exec dbus-launch --exit-with-session  i3

