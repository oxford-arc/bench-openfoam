#! /bin/bash
#
#
# $SCRATCH is defined as ARC's scratch filesystem, this will need
# to be defined for other systems.
#
export SCRATCH=/tmp

export SINGULARITY_CACHEDIR=$(mktemp -d $SCRATCH/cache.XXXXX)
export SINGULARITY_TMPDIR=$(mktemp -d $SCRATCH/target.XXXXX)

#
# ARC Specifics
#
# module load /system/arcus/modules/singularity/3.5.3
#
# ----------------- END ---------------------------

mkdir -p $SINGULARITY_CACHEDIR $SINGULARITY_TMPDIR
chmod 777 $SINGULARITY_CACHEDIR $SINGULARITY_TMPDIR

cd image
singularity pull --name of-1912-c7.sif library://oxford-arc/default/openfoam1912-test:sha256.715675bae9999956a9ba542b8f40215995f8367834f1f85c6bd3e275142aeed4

# If above download fails - use the following to build...
# sudo -E singularity build $SINGULARITY_TMPDIR/of-1912-c7.sif image/of-1912-c7.def
# cp $SINGULARITY_TMPDIR/of-1912-c7.sif image/

sudo -E rm -rf $SINGULARITY_CACHEDIR $SINGULARITY_TMPDIR
