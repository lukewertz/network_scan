#!/bin/bash

echo "Pining all IP addresses on the network."
for ip in 10.0.1.{1..254}; do
  ping -c 1 $ip | grep "64 bytes" &
done

sleep 1

echo "Below are Raspberry Pis on the network:"

arp -a | grep "b8:27:"
