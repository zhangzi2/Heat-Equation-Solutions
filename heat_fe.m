 function [uFE] = fe(a,b,M,truefun)
        
        dx=(b-a)/M; x=(a:dx:b);
        
        dt = dx^2;
        T=.15;tsteps=(0:dt:T)';n=length(x);
        
        AFE=zeros(M+1,M+1);
        for j=2:M
            AFE(j,j)=2; AFE(j,j-1)=-1; AFE(j,j+1)=-1;
        end
        AFE=AFE/(dx*dx);
        u0 = truefun(x,0);
        uFEprev=u0';
        steperr=0;

        for j=2:length(tsteps)
            uexact = truefun(x,tsteps(j));
            uFE = uFEprev - dt*AFE*uFEprev;
            plot(x,uexact,'-',x,uFE);hold on;
            steperr = max(steperr,norm(uFE-uexact',inf));
            uFEprev = uFE;
        end