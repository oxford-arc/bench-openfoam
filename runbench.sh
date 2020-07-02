#! /bin/bash
#
# Extract benchmark case, and use OpenFOAM container runscript to run it.
#

rm -rf bench_template
tar xzf Motorbike_bench_ARC.tgz

#
# ARC Specifics
#
#module load /system/arcus/modules/singularity/3.5.3
# ------------- END -----------

singularity run -B ${PWD}:/host_pwd --pwd /host_pwd image/of-1912-c7.sif 
