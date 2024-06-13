#!/bin/bash

/root/tanken/check_clever_tanken/check_clever_tanken --station 15283 | grep "^Diesel" | grep -o -E '[0-9]+\.[0-9]+' | sed --expression='s/\./,/g' | awk -v date="$(date +'%Y-%m-%d %T')" '{print date",\""$1"\""}' >> /root/tanken/Tankdaten.csv
