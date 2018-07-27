# Heat Equation Solutions
This repository contains MATLAB implementations of Backward Euler, Forward Euler and Crank-Nicolson approximations to the solutions of the heat equation: 

<a href="https://www.codecogs.com/eqnedit.php?latex=u_t&space;-&space;u_{xx}&space;=f,&space;\:\:\:\:&space;x\in&space;(0,1),&space;\:\:\:\:&space;0&space;<&space;t&space;\leq&space;T,&space;\:\:\:\:&space;u(0)=u(1)&space;=0" target="_blank"><img src="https://latex.codecogs.com/gif.latex?u_t&space;-&space;u_{xx}&space;=f,&space;\:\:\:\:&space;x\in&space;(0,1),&space;\:\:\:\:&space;0&space;<&space;t&space;\leq&space;T,&space;\:\:\:\:&space;u(0)=u(1)&space;=0" title="u_t - u_{xx} =f, \:\:\:\: x\in (0,1), \:\:\:\: 0 < t \leq T, \:\:\:\: u(0)=u(1) =0" /></a>

fig1.png shows the result for true solution

<a href="https://www.codecogs.com/eqnedit.php?latex=u(x,t)&space;=&space;e^{-\pi^2&space;t}\sin(\pi&space;x)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?u(x,t)&space;=&space;e^{-\pi^2&space;t}\sin(\pi&space;x)" title="u(x,t) = e^{-\pi^2 t}\sin(\pi x)" /></a>

heat_discont.m implements Crank-Nicolson to solve a discontinuous case of the heat euqation

<a href="https://www.codecogs.com/eqnedit.php?latex=u_t-(ku_x)_x=0,&space;\:\:\:\:&space;x\in(0,1),&space;\:\:\:\:&space;0<t\leq&space;T,&space;\:\:\:\:&space;u(0)=2,&space;\:\:\:\:&space;u(1)=1,&space;\:\:\:\:&space;u(x,0)=1" target="_blank"><img src="https://latex.codecogs.com/gif.latex?u_t-(ku_x)_x=0,&space;\:\:\:\:&space;x\in(0,1),&space;\:\:\:\:&space;0<t\leq&space;T,&space;\:\:\:\:&space;u(0)=2,&space;\:\:\:\:&space;u(1)=1,&space;\:\:\:\:&space;u(x,0)=1" title="u_t-(ku_x)_x=0, \:\:\:\: x\in(0,1), \:\:\:\: 0<t\leq T, \:\:\:\: u(0)=2, \:\:\:\: u(1)=1, \:\:\:\: u(x,0)=1" /></a>

where

<a href="https://www.codecogs.com/eqnedit.php?latex=k(x)=&space;\begin{cases}&space;1,&space;&&space;x<0.5&space;\\&space;10,&space;&&space;x>0.5&space;\end{cases}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?k(x)=&space;\begin{cases}&space;1,&space;&&space;x<0.5&space;\\&space;10,&space;&&space;x>0.5&space;\end{cases}" title="k(x)= \begin{cases} 1, & x<0.5 \\ 10, & x>0.5 \end{cases}" /></a>

fig2.png shows convergence to true solution. 
