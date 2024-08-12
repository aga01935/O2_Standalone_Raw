Uname=${1:-agautam}
Channel=${2:-4Pi_new_test}
O2Physics_Ver=${3:-O2Physics::daily-2024-0728-0200-1}
PWGUD_Name=${4:-"PWGUD_24_07_31.zip"}
Task_Name=${5:-eventByevent}
Config_Name=${6:-exclusivepions.json}
Output_Dir_Name=${7:-OutputDirector.json}
WORK_DIR=${8:-Run3_Standalone/upc_sg_ana}
Output_Files=${9:-merged_AnalysisResults.root,merged_AO2D_res.root}
First_Char=${Uname:0:1}
cp JDL_raw JDL
sed -i s/user_name/$Uname/g JDL
sed -i s/O2PhyVer/$O2Physics_Ver/g JDL
sed -i s/channel_name/$Channel/g JDL
sed -i s/pwgud_name/$PWGUD_Name/g JDL
sed -i s/task_name/$Task_Name/g JDL
sed -i s/config_name/$Config_Name/g JDL
sed -i s/output_dir_name/$Output_Dir_Name/g JDL
sed -i s/output_files/$Output_Files/g JDL
sed -i s/first_char/$First_Char/g JDL
sed -i "s|workdir|$WORK_DIR|g" JDL

