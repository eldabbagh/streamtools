echo -e "\033[0;36mcreating blocks\033[0m"
curl "localhost:7070/create?blockType=ticker"
sleep 1
curl "localhost:7070/create?blockType=ticker"
curl "localhost:7070/create?blockType=tolog"
echo -e "\033[0;36mtesting connections\033[0m"
curl "localhost:7070/connect?from=1&to=3"
curl "localhost:7070/connect?from=2&to=3"
sleep 2
echo -e "\033[0;36mtesting routes\033[0m"
curl "localhost:7070/blocks/4/last_seen"
curl "localhost:7070/blocks/5/last_seen"
echo ""
curl "localhost:7070"