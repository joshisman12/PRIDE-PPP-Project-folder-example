#!/usr/bin/env bash

for i in $(find ../2022/???/pos_*); do
    cp ${i} ./;
done