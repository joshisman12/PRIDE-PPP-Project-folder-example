#!/usr/bin/env bash

for k in $(ls pos_* | cut -b 13-16 | sort | uniq); do
    
    pbopos_new ${k} $(ls ./pos_???????_${k} | sort | head -n 1);

done