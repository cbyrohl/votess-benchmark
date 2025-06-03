
VOTESS_CPU_COMPILER       ?= icpx
VOTESS_GPU_COMPILER       ?= icpx
VOROPP_COMPILER           ?= g++
CGAL_COMPILER             ?= g++
QHULL_COMPILER            ?= g++

BUILD_DIR          := cmake/build
NTHREADS_BUILD ?= 1

.PHONY: all configure build clean

all: configure build

configure:
	mkdir -p $(BUILD_DIR)
	cmake -S . -B $(BUILD_DIR) 				              \
	  -DVOTESS_CPU_COMPILER=$(VOTESS_CPU_COMPILER)    \
	  -DVOTESS_GPU_COMPILER=$(VOTESS_GPU_COMPILER)    \
	  -DVOROPP_COMPILER=$(VOROPP_COMPILER)            \
	  -DCGAL_COMPILER=$(CGAL_COMPILER)                \
	  -DQHULL_COMPILER=$(QHULL_COMPILER)

build:
	cmake --build $(BUILD_DIR) --target build_all -j $(NTHREADS_BUILD)

clean:
	rm -rf bin/*
	rm -rf $(BUILD_DIR)
	rm -rf votess-cpu/build
	rm -rf votess-gpu/build
	rm -rf voropp/build
	rm -rf cgal/build
	rm -rf qhull/build
