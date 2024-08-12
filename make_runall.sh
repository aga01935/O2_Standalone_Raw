Task_Name=${1:-eventByevent}
Config_Name=${2:-config.json}
Output_Director_Name=${3:-outputdirector.json}
PWD_Name=${4:-PWGUD_24_07_31.zip}
cp run_all_raw.sh run_all.sh
cp run_raw.sh run.sh
sed -i s/task_name/$Task_Name/g run_all.sh
sed -i s/PWGUD_Dir_Name/$PWD_Name/g run_all.sh
sed -i s/config_name/$Config_Name/g run.sh
sed -i s/OutputDirector_name/$Output_Director_Name/g run.sh
sed -i s/task_name/$Task_Name/g run.sh
