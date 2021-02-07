# etcd comes with a cli command line tool to manipulate messages etcdctl
# you can also get oher clients https://etcd.io/docs/current/integrations/

# connect to a single server and publish a message and then connect to another server and read the message
export SERVER1=$(docker ps -aqf "name=flyway-databases_etcd0_1")
export SERVER2=$(docker ps -aqf "name=flyway-databases_etcd1_1")

docker container exec -it flyway-databases_etcd0_1 /usr/local/bin/etcdctl --write-out=table --endpoints=localhost:2379 member list

# publish message on server 1
docker container exec -it flyway-databases_etcd0_1 /usr/local/bin/etcdctl put foo bar

# get message from server 2
docker container exec -it flyway-databases_etcd1_1 /usr/local/bin/etcdctl get foo

# we are in server 1_1 using the cli but we getting data from server 0_1
docker container exec -it flyway-databases_etcd1_1 /usr/local/bin/etcdctl --endpoints=http://etcd0:2379 get foo
exit

