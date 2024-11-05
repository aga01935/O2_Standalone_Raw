# Define initial variables and set default values
Task_Dir="example_task"
Channel=${1:-task_Updated}
UNAME=${2:-agautam}
WORK_DIR=${3:-Run3_Standalone/upc_sg_ana}
O2Phy_Ver=${4:-daily-20241016-0200-1}
PWGUD_Name=${5:-PWGUD_24_11_4.zip}
TASK_Name=${6:-eventByevent}
Config_Name=${7:-config.json}
Output_Dir_Name=${8:-OutputDirector.json}
Input_Data_col=${9:-Allrun_DerivedSG.xml}
# Extract the first character of the username for ALICE directory
first_char=${UNAME:0:1} 
alien_dir="/alice/cern.ch/user/$first_char/$UNAME/$WORK_DIR"

# Prepare the task directory
rm -rf "$Channel"
mkdir "$Channel"

# Create the necessary scripts and copy them to the $Channel directory
bash makeJDL.sh "$UNAME" "$Channel" "O2Physics::$O2Phy_Ver" "$PWGUD_Name" "$TASK_Name" "$Config_Name" "$Output_Dir_Name" "$WORK_DIR"
bash make_runall.sh "$TASK_Name" "$Config_Name" "$Output_Dir_Name" "$PWGUD_Name"


#edit environment.sh

sed "s|O2phyver|"O2Physics/$O2Phy_Ver"|g" environment.sh_raw>>environment.sh

#edit cmake 
sed  "s|O2physver|"O2Physics/$O2Phy_Ver"|g" CMakeLists_raw.txt>>CMakeLists.txt
sed -i "s|test|"$TASK_Name"|g" CMakeLists.txt


mv JDL "$Channel/"
mv run_all.sh "$Channel/"
mv run.sh "$Channel/"
cp "./$Task_Dir/$PWGUD_Name" "$Channel/"
cp "./$Task_Dir/$Config_Name" "$Channel/"
cp "./$Task_Dir/$Output_Dir_Name" "$Channel/"
mv environment.sh "$Channel/"
cp "./$Task_Dir/$TASK_Name.cxx" "$Channel/"
mv CMakeLists.txt "$Channel/"
cp getoutput_raw.sh "$Channel/"
cp makexml/$Input_Data_col "$Channel/"
# Prepare the submit script
sed "s|def_channel|"$Channel"|g" submit_grid_raw.sh > submit_grid.sh
sed -i "s|uname|"$UNAME"|g" submit_grid.sh
sed -i "s|workdir|"$WORK_DIR"|g" submit_grid.sh
sed -i "s|data|"$Input_Data_col"|g" submit_grid.sh


mv submit_grid.sh "$Channel/"
echo "created folder $Channel where all sandalong coded are present"
echo "creadted grid submission script submit_grid.sh"
echo "inside $Channel run submit_grid.sh to submit the job on the grid."
