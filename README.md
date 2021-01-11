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
Cores   Container (v1912)   EB Native (v2006)
---------------------------------------------
1        4390.02            4225.48
2        2359.38            2315.26
4        1101.13            1049.49
6         750.94             716.28
8         569.68             557.06
12        405.99             391.07
16        319.84             314.10
20        276.55             269.33
24        247.59             245.90         
28        226.14             225.78  
32        213.91             213.31        
48        192.30             206.79

Values in seconds
```





