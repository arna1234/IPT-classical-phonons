# DIR= where is IPT_CPA.py?

DIR=../../..   # where is IPT_CPA.py?
prog=IPT_phonons.py
dis=1.0
U=2.0
delteeno=0.002
T_in=0.01
T_fin=0.09
NT=5
#
# T loop
#
for T in `awk 'BEGIN { for( il=0; il<='${NT}-1'; il++ ) printf ("%.2f\n",'${T_in}'+il*('${T_fin}'-('${T_in}'))/('${NT}'-1)) }'` ; do
 echo " "
 echo " ...running: T= " ${T}
 echo " "
 data_dir="T_${T}_U_${U}_delta_${delteeno}_box_${dis}" # a leading string for directories
 mkdir -p ${data_dir}
 cp ipt.parameters ${data_dir}/
# cp sigma_00.dat ${data_dir}/
 cd ${data_dir}
 python ${DIR}/${prog} ${U} 0 ${T} ${delteeno} ipt.parameters ${dis} > ${data_dir}.rpt 
 cd ..
done
