workdir=${1:-/alice/cern.ch/user/a/agautam/Run3_Standalone/upc_sg_ana/Pi_Updated_2}
datadir=${2:-/alice/cern.ch/user/a/agautam/sg_input_collection}
xmlName=${3:-Allrun_DerivedSG_new.xml}
output_dir_name=${4:-output_2}
alien.py submit $workdir/JDL $datadir/$xmlName $output_dir_name
