# votess-benchmark

To initialize the repository after a fresh commit, run:

```bash
init.sh
```

After doing so, review the `Makefile` to verify that each sub program will be
compiled with the correct compiler. After doing so, run the following command:

```bash
make clean && make; make
```

For some reason you have to make twice (I haven't bothered to figure out why).

And to run the benchmarks, use the command:

```bash
run.sh
```

To configure parameters for the benchmark, all variables are configured in
compile time in `include/params.hpp`.

# Fork info
This for evaluates performance for some HPC systems. Only MPCDF Vera for now. CPU backend: 2x36 Intel cores, GPU backend: 40GB A100.

votess compiled with AdaptiveCpp 2024 and Clang 18. Otherwise with gcc11.
