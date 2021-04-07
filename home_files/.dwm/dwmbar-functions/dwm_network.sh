#!/bin/sh

# A dwm_bar function to show the current network connection/SSID, private IP, and public IP
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: NetworkManager, curl

dwm_network () {
    STAUTS=$(nmcli -a | grep -E "wlp2s0: 已断开" )
    if [ "$STAUTS" = "" ]; then
        printf "睊 "
    else
        # CONNAME=$(nmcli -t -f active,ssid dev wifi | grep '^是' | cut -c 5-)
        CONNAME=$(nmcli -a | grep -E "wlp2s0: 已连接" | cut -c 23-)
        if [ "$IDENTIFIER" = "unicode" ]; then
        # printf "🌐 %s %s | %s" "$CONNAME" "$PRIVATE" "$PUBLIC"
        printf " $CONNAME"
        else
            # printf "NET %s %s | %s" "$CONNAME" "$PRIVATE" "$PUBLIC"
            printf "NET$CONNAME"
        fi
    fi

    # PRIVATE=$(nmcli -a | grep 'inet4 192' | awk '{print $2}')
    # PUBLIC=$(curl -s https://ipinfo.io/ip)

    # printf "%s" "$SEP1"
    # if [ "$IDENTIFIER" = "unicode" ]; then
    #     # printf "🌐 %s %s | %s" "$CONNAME" "$PRIVATE" "$PUBLIC"
    #     printf " $CONNAME"
    # else
    #     # printf "NET %s %s | %s" "$CONNAME" "$PRIVATE" "$PUBLIC"
    #     printf "NET$CONNAME"
    # fi
    # printf "%s\n" "$SEP2"
}

dwm_network
