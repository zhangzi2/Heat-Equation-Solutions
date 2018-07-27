    function [uCN] = cn(a,b,M,truefun)
        dx=(b-a)/M; x=(a:dx:b);
        dt = dx^6;
        T=.15;tsteps=(0:dt:T)';
        ACN=zeros(M+1,M+1);
        for j=2:M
            ACN(j,j)=2; ACN(j,j-1)=-1; ACN(j,j+1)=-1;
        end
        ACN=ACN/(dx*dx);
        steperr=0;
        u0 = truefun(x,0);
        uCNprev=u0';
        for j=2:length(tsteps)
            uexact = truefun(x,tsteps(j));
            uCN = (eye(M+1)+0.5*dt*ACN)\((eye(M+1)-0.5*dt*ACN)*uCNprev) ;
            %plot(x,uexact,'-',x,uCN,'*');hold on;
            steperr = max(steperr,norm(uCN-uexact',inf));
            uCNprev=uCN;
        end
        steperr
    end