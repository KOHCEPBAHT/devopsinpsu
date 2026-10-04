#!/bin/bash
TEM=$(curl wttr.in/Perm?format=j2 | jq '.["current_condition"][0] | .temp_C')
HUM=$(curl wttr.in/Perm?format=j2 | jq '.["current_condition"][0] | .humidity')
DATE=$(date "+%Y-%m-%d %H:%M:%S")
echo -e "<html lang="ru"><body>\n $TEM $HUM $DATE\n </body></html>" > /usr/share/nginx/html/index.html
