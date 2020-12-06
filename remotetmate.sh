#!/bin/bash
#Создает ссылку на удаленное подключение через ssh https://tmate.io
tmate -S /tmp/tmate.sock kill-server
sleep 3
tmate -S /tmp/tmate.sock new-session -d
sleep 3
tmate -S /tmp/tmate.sock display -p '#{tmate_ssh}' > /home/link.txt
sleep 1
echo ""
echo "See link for connection"
tmate -S /tmp/tmate.sock display -p '#{tmate_ssh}'
echo ""
