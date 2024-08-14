Channel=${1:-$4Pi_Updated}
UNAME=${2:-agautam}
WORK_DIR=${3:-Run3_Standalone/upc_sg_ana}
O2Phy_Ver=$4:-O2Physics::daily-20240728-0200-1
PWGUD_Name=${5:-PWGUD_24_07_31.zip}
TASK_Name=${6:-eventByevent}
Config_Name=${7:-exclusivepions.json}
Output_Dir_Name=${8:-OutputDirector.json}
first_char=${UNAME:0:1} 
alien_dir="/alice/cern.ch/user/$first_char/$UNAME/$WORK_DIR"
rm -r $Channel
mkdir $Channel
bash makeJDL.sh $UNAME $Channel $O2Phy_Ver $PWGUD_Name $TASK_Name $Config_Name $Output_Dir_Name $WORK_DIR
bash make_runall.sh eventByevent $Config_Name $Output_Dir_Name $PWGUD_Name 
ls
mv JDL $Channel/
mv run_all.sh $Channel/
mv run.sh $Channel/
cp $PWGUD_Name $Channel/
cp $Config_Name $Channel/
cp $Output_Dir_Name $Channel/
cp environment.sh $Channel/
cp eventByevent.cxx $Channel/
cp CMakeLists_raw.txt $Channel/
#alien_cp -r file:$Channel $alien_dir

alien.py submit $alien_dir/$Channel/JDL output_
echo "JDL and script creation completed"
echo "your working directory is $alien_dir"
sed "s|filepath|$alien_dir/$channel/output_|g" getoutput_raw.sh >> getoutput.sh
cp getoutput.sh $Channel/
echo "when job is done run getoutput.sh to get AO2D.root in your directory"
