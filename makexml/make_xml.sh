uname=${1:-agautam}
xmlname=${2:-Allrun_DerivedSG}
first_char=${uname:0:1}
alien_dir=$"/alice/cern.ch/user/$first_char/$uname"
sed "s|,|/AOD AO2D.root input_temp \n|g" input_dir.txt >> run_Allcombine.sh
echo "/AOD AO2D.root input_temp">> run_Allcombine.sh

sed -i "s|/alice|bash makelist.sh /alice|g" run_Allcombine.sh
#echo "\n">> run_Allcombine.sh
echo "alien.py cp file:./input_temp.list alien:$alien_dir">> run_Allcombine.sh
echo "alien.py toXml -l alien:$alien_dir/input_temp.list -x file:./$xmlname.xml" >> run_Allcombine.sh
echo "alien.py rm alien:$alien_dir/input_temp.list">> run_Allcombine.sh
echo "rm input_temp.list">> run_Allcombine.sh

bash run_Allcombine.sh
#rm run_Allcombine.sh