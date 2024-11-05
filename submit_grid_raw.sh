Channel=${1:-def_channel}
UNAME=${2:-uname}
WORK_DIR=${3:-workdir}
OUT_DIR=${4:-output_}
Data_Col=${5:-data}
first_char=${UNAME:0:1} 
alien_dir="/alice/cern.ch/user/$first_char/$UNAME/$WORK_DIR"

alien_cp -r file:../$Channel $alien_dir
alien.py submit $alien_dir/$Channel/JDL $alien_dir/$Channel/$Data_Col $OUT_DIR
echo "JDL and script creation completed"
echo "your working directory is $alien_dir"
sed "s|filepath|$alien_dir/$Channel/$OUT_DIR|g" getoutput_raw.sh >> getoutput.sh
echo "when job is done run getoutput.sh to get AO2D.root in your directory"

