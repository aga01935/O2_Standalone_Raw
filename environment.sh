#bash clean.sh
#module load /cvmfs/alice.cern.ch/el7-x86_64/Modules/modulefiles/CMake/v3.23.1-9
export WORK_DIR="/cvmfs/alice.cern.ch"
export ALIBUILD_ARCH_PREFIX="el9-x86_64/Packages"

export OPENSSL_ROOT_DIR="/cvmfs/alice.cern.ch/el9-x86_64/Packages/OpenSSL/v1.1.1m-2"

. /cvmfs/alice.cern.ch/el9-x86_64/Packages/O2Physics/daily-20240728-0200-1/etc/profile.d/init.sh

cp CMakeLists_raw.txt CMakeLists.txt
Your_Task=$1 
#just the task name
sed -i s/test/$Your_Task/g CMakeLists.txt
cmake .
make
