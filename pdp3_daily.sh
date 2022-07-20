#!/usr/bin/env bash

year="2022"
s_jd="001"
e_jd="136"
#for i in $(seq -w ${s_jd} ${e_jd}); do
#    for k in ./data/${year}/${i}/????"${i}"?.${year:2:2}?; do
#        gpsweek=$(python 00_gnsscal.py ${year} ${i} | cut -b 1-4);  #input year, doy and output gpsweek and gpsdays
#        gpsdays=$(python 00_gnsscal.py ${year} ${i} | cut -b 5)
#        #modify config file
#        sed -e "s|@sp3@|igs${gpsweek}${gpsdays}.sp3|g" -e "s|@clk@|igs${gpsweek}${gpsdays}.clk|g" -e "s|@erp@|igs${gpsweek}7.erp|g" ./config/config_daily > config_tmp
#        #run main program
#        pdp3 -m s -cfg ./config_tmp -s ${year}/${i} -e ${year}/${i} -i 30 ${k}
#    done
#done

#pdp3 -m s -cfg ./config/config_template1 -s 2020/003 -e 2020/003 -i 30 ./data/2020/003/KMNM0031.20O

for i in $(seq -w ${s_jd} ${e_jd}); do
    for k in ./data/${year}/${i}/????"${i}"?.${year:2:2}?; do
        #run main program
        pdp3 -m s -cfg ./config/config_template -s ${year}/${i} -e ${year}/${i} -i 30 ${k}
    done
done
