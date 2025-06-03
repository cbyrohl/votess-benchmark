set -e
module purge
module load gcc/14
module load tbb/2022.0
module load cgal/5.5
module load boost/1.79

export LD_LIBRARY_PATH=/u/byrohlc/llvm/usr/local/lib:/mpcdf/soft/SLE_15/packages/x86_64/gcc/14.1.0/lib64:$LD_LIBRARY_PATH

export VOTESS_CPU_COMPILER=acpp
export VOTESS_GPU_COMPILER=acpp
export VOROPP_COMPILER=g++
export CGAL_COMPILER=g++
export QHULL_COMPILER=g++

export TBB_ROOT_DIR=$TBBROOT
module list
export NTHREADS_BUILD=16
make clean
make
