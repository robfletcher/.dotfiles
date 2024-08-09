# Manual steps

## Install / configure everything

Run `~/.dotfiles/zero/setup`.

## Touch ID sudo

Edit `/etc/pam.d/sudo` and add these as the first two lines.

```
auth       sufficient     pam_touchid.so "reason=execute a command as root"
auth       sufficient     pam_watchid.so "reason=execute a command as root"
```
