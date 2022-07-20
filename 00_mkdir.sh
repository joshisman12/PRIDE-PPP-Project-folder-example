for k in $(seq -w 2007 2022); do
    year=${k}

    if [ -e "./data/${year}/" ]; then 
        echo "${year} folder exist"
    else
        mkdir "./data/$year"
    fi

    if [[ $((${year} % 4)) == 0 ]] && [[ $((${year} % 100)) != 0 ]]; then
        echo "leap year"
        for i in $(seq -w 1 366); do 
            mkdir -p "./data/$year/$i";
        done    
    elif [[ $((${year} % 400)) == 0 ]]; then
        echo "leap year"
        for i in $(seq -w 1 366); do    
            mkdir -p "./data/$year/$i";
        done    
    else 
        echo "ordinary year"
        for i in $(seq -w 1 365); do    
            mkdir -p "./data/$year/$i";
        done    
    fi    
done