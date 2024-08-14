res_filename=${2:-"AO2D_res.root"}
alien.py find filepath *AO2D*.root>>final_output_list.txt
sed -i "s|/alice|alien:///alice|g" final_output_list.txt
o2-aod-merger --input final_output_list.txt --max-size 1000000000000000000 --output $res_filename