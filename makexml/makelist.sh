#  use as 
# makelist.sh base_dir AO2D.root output_list_name
base_dir=$1
#period=$2
file=$2
listname=$3
alien.py find $base_dir $file>>$3.list
