#!/bin/sh

help()
{
    echo "Usage: $0 <host> <port> <key> -w <warning> -c <critical>"
}

case "$1" in
    --help)
        help
        exit
        ;;
esac

if [ $# -eq 0 ]; then
    help
    exit 3
fi
if [ $# -ne "7" ]; then
    help
    exit 4
fi
if [ $4 !="-w" -o $6 !="-c" ]; then
    help
    exit 5
fi

#REDIS_CLI="/usr/local/redis/bin/redis-cli"
REDIS_CLI="/usr/local/bin/redis-cli"
LLEN=`$REDIS_CLI -h $1 -p $2 llen $3 | awk '{ print $1 }'`
if [[ "$LLEN" -lt "$5" ]]; then
    echo "$3.llen:$2 OK - $LLEN | $3.llen:$2=$LLEN;$5;$7"
    exit 0
fi

if [[ "$LLEN" -ge "$5" ]];then
 if [[ $LLEN -lt $7 ]]; then
    echo "$3.llen:$2 WARNING - $LLEN | $3.llen:$2=$LLEN;$5;$7"
    exit 1
fi
fi

if [[ "$LLEN" -ge "$7" ]]; then
    echo "$3.llen:$2 CRITICAL - $LLEN | $3.llen:$2=$LLEN;$5;$7"
    exit 2
fi

