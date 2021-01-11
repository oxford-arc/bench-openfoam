# OpenFOAM benchmark

This benchmark uses the OpenFOAM v1912 application on the Motorbike case - which is modified for 10240 grids.

## Building the benchmark

- Clone the repository

```
git clone https://github.com/oxford-arc/bench-openfoam
```

- Build the container

```
cd bench-openfoam
sh build.sh
```

- Run the benchmark code

Note: The benchmark by default runs on up to 48 cores. This can be changed by editing the file ```bench_template/run.sh``` (extracted from ```bench/Motorbike_bench_ARC.tgz```) if required.

```
sh runbench.sh
```

## Results

Result output from a current ARC node:

```
Cores   Wall time (s):
------------------------
1        4390.02
2        2359.38
4        1101.13
6        750.94
8        569.68
12       405.99
16       319.84
20       276.55
24       247.59
28       226.14
32       213.91
48       192.30
```

Result output from QH node (using OpenFOAM v2006)
```
Cores   Wall time (s):
------------------------
1        4225.48
2        2315.26
4        1049.49
6        716.28
8        557.06
12       391.07
16       314.1
20       269.33
24       245.9
28       225.78
32       213.31
48       206.79
```



