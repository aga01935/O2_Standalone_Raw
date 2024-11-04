#gets latest PWGUD folder 
#any folder can be done 


git clone https://github.com/AliceO2Group/O2Physics

cp -r O2Physics/PWGUD ./
zip -r PWGUD_24_11_4.zip PWGUD
rm -r O2Physics
