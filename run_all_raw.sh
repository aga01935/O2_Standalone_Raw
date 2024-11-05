. ${O2_ROOT}/share/scripts/jobutils2.sh

WD=`pwd`
INPUT_DATA_FILENAME='input.txt'
XML_FILENAME='wn.xml'

#unzip PWGUD_Dir_Name -d PWGUD
unzip PWGUD_Dir_Name
sed -rn 's/.*turl="([^"]*)".*/\1/p' $XML_FILENAME > $INPUT_DATA_FILENAME

chmod +x run.sh

taskwrapper outcompile.log "chmod +x envirionment.sh
. environment.sh 
chmod +x task_name"

i=1
for f in `cat $INPUT_DATA_FILENAME`; do
  echo "cp alien:$f file:AO2D.root"
  ls
  alien.py cp alien:$f file:$WD/AO2D.root
  chmod +x run.sh
  taskwrapper out.log ". run.sh 
  mv AnalysisResults.root AnalysisResults.$i.root
  mv AO2D_res.root AO2D_res.$i.root"
  i=$((i+1))

done

hadd -f merged_AnalysisResults.root AnalysisResults.*.root
hadd -f merged_AO2D_res.root AO2D_res.*.root

rm AnalysisResults.*.root
