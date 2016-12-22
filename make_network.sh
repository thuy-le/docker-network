if [ -z "$1" ];
then
    echo "Parameter requires!!!"
    return 1;
fi

ip="${SUBNET:-128.28.0.0/16}"
network_name="${1}"
docker network create -d bridge ${network_name} --subnet ${ip} || true
