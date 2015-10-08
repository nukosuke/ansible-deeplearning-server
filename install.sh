#!/bin/sh
#
# usage: ./install.sh [hostfile]
#

hostfile="hosts"
if [ $# -eq 1 ]; then
  hostfile=$1
fi

for playbook in \
  cuda \
  chainer \
  #caffe \
  #pylearn2 \
do
  ansible-playbook -i $hostfile $playbook/$playbook.yml
done
