Start_year=2022
End_year=2022

for k in $(seq -w ${Start_year} ${End_year}); do
    year=${k}
    file_path="./o_file/GDMSdata/"
    target_path="./data/"
    if [[ $((${year} % 4)) == 0 ]] && [[ $((${year} % 100)) != 0 ]]; then
        echo "leap year"
        for i in $(seq -w 1 366); do    
            if [ -f ${file_path}????"${i}"?."${year:2:2}"? ]; then
                cp -v ${file_path}????"${i}"?."${year:2:2}"? ${target_path}"${year}"/"${i}"/
            fi
        done    
    elif [[ $((${year} % 400)) -eq 0 ]]; then
        echo "leap year"
        for i in $(seq -w 1 366); do    
            if [ -f ${file_path}????"${i}"?."${year:2:2}"? ]; then
                cp -v ${file_path}????"${i}"?."${year:2:2}"? ${target_path}"${year}"/"${i}"/
            fi
        done    
    else 
        echo "ordinary year"
        for i in $(seq -w 1 365); do    
            if [ -f ${file_path}????"${i}"?."${year:2:2}"? ]; then
                cp -v ${file_path}????"${i}"?."${year:2:2}"? ${target_path}"${year}"/"${i}"/
            fi
        done    

    fi
done
