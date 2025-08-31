sudo apt update
echo Updated Packages

sudo apt-get install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox chromium-browser -y
echo installed simple apps.


rm -rf /etc/xdg/openbox/autostart

touch /etc/xdg/openbox/autostart
