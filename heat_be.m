function [uBE] = be(a,b,M,truefun)
        dx=(b-a)/M; x=(a:dx:b);
        dt = dx^6;
        T=.15;tsteps=(0:dt:T)';n=length(x);
        
        ABE=zeros(M+1,M+1);
        for j=2:M
            ABE(j,j)=2; ABE(j,j-1)=-1; ABE(j,j+1)=-1;
        end
        ABE=ABE/(dx*dx);
       
        steperr=0;
        u0 = truefun(x,0);
        uBEprev=u0';
        for j=2:length(tsteps)
            uexact = truefun(x,tsteps(j));
            uBE = (eye(M+1)+dt*ABE)\uBEprev ;
            steperr = max(steperr,norm(uBE-uexact',inf));
            uBEprev=uBE;
        end
        steperr
    end