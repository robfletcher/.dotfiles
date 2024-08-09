#!/bin/sh

touch_id_auth_file="/etc/pam.d/sudo_local"
touch_id_template_file="/etc/pam.d/sudo_local.template"

if [ ! -f /etc/pam.d/sudo_local ]
then
  echo "Enabling Touch ID for sudo..."
  sudo cp "$touch_id_template_file" "$touch_id_auth_file"
  sudo sed -i '' -e 's,#auth       sufficient     pam_tid.so,auth       sufficient     pam_tid.so,g' "$touch_id_auth_file"
  sudo chown root:wheel "$touch_id_auth_file"
  sudo chmod 555 "$touch_id_auth_file"
else
  echo "Touch ID is already enabled for sudo."
fi
