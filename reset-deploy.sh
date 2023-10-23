#!/bin/bash

vagrant halt 

vagrant destroy

echo "*******PAUSING FOR 5 SECONDS*********"
sleep 5

vagrant up

