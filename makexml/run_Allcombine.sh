bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420233/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420236/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420243/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420245/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420246/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420247/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420256/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420234/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420238/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420239/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420240/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420241/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420242/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420244/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420254/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420251/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420252/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420228/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420237/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420250/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420229/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420230/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420232/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420235/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420248/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420249/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420253/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420255/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420257/AOD AO2D.root input_temp 
bash makelist.sh /alice/cern.ch/user/a/alihyperloop/jobs/0042/hy_420231/AOD AO2D.root input_temp
alien.py cp file:./input_temp.list alien:/alice/cern.ch/user/a/agautam
alien.py toXml -l alien:/alice/cern.ch/user/a/agautam/input_temp.list -x file:./Allrun_DerivedSG.xml
alien.py rm alien:/alice/cern.ch/user/a/agautam/input_temp.list
rm input_temp.list
