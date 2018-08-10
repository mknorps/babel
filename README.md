### Purpose

- see how to implement a fractal interpolation algorithm in different programming languages
- compare implementation of the CPU time, code length and readability

### Install & run
Current version is prepared to run on Linux terminal.

To compile the source run in `FractalInterpolation` directory:
```
make prepare
```
To run efficiency tests run in `FractalInterpolation` directory:
```
make time_test
```

### Structure
Each folder stands for a different programmin language. 
```
.
├── C
│   ├── main.c
│   └── Makefile
├── Fortran
│   ├── main.f
│   └── Makefile
├── Haskell
│   └── main.hs
├── Makefile
├── Octave
│   └── main.m
├── Python
│   └── main.py
├── README.md
└── SML
    └── main.sml
```

### Fractal interpolation
![Fractal interpolation ](/tmp/W_levels.jpg  "Fractal interpolation")

We want to interpolate function U to position x knowing values of U only in N nodes on uniform grid.

Given the interval $$[x_{0},x_{N}]$$ which is divided into N sections of length
$$\delta_{x} = (x_{N}-x_{0})/N$$, on each subinterval  $$[x_{2k},x_{2k+2}],\quad k=0,\dots,\lfloor N/2\rfloor-1$$we define an affine mapping $W_{i}$:
$$
W_{i}[u]{\xi} = 
\begin{cases}
d_{i,1}u(2\xi) + q_{i,1}(2\xi), & \xi \in [0,1/2)\\
d_{i,2}u(2\xi-1) + q_{i,2}(2\xi-1), & \xi \in [1/2,1], 
\end{cases}
$$
where the local coordinate is denoted by
$$\xi = (x-x_{i-1})/(2\delta_{x})$$; 
q_{i,1}, q_{i,2} are polynomials and $d_{i,1}, d_{i,2}$ are stretching parameters, which in general may depend on the section $i$ but in our case will be constant for the whole interval, we simplify the notation to $d_{1}, d_{2}$. 
Note that the local coordinate, $\xi$, is 
taken with respect to a double-length interval. It means that $\xi = 0$ 
is exactly at point $x_{i-1}$,
$\xi = 0.5$ at point $x_{i}$ and  $\xi = 1$ at point $x_{i+1}$.

### Contribution
1) implement the algorithm in a new naw language 
2) implement the algorithm in a substantially different or more efficient way in a language already present in this repo
3) run tests and report the execution time
