# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
export PATH=$PATH:/home/brodul/Scripts
export PYTHONPATH=$PYTHONPATH:/home/brodul/Scripts
alias sa="source bin/activate"
alias sas="paster serve --reload"
alias emerge="emerge -av"
alias gosafe="ssh -N -D 9999 jon.kiberpipa.org &"
alias gohome='ssh -N -D 9999 -p 668 brodul.linuxx.org '
alias tor='sudo /etc/init.d/tor restart'
alias screen='screen -D -R'
source /etc/bash/postlogin
alias meditron=' rdesktop meditron -a 32  -f -r sound:remote' 
alias openvpn='sudo /etc/init.d/openvpn'
alias spssh="pssh -A -P -t -1 -h /tmp/ucilnica.list"
alias xwii="/home/brodul/Downloads/xwii_2.9.4_src/xwii /home/brodul/Downloads/xwii_2.9.4_src/profiles/Clementine.xwii"
alias arduino="/usr/share/arduino-0021/arduino"
