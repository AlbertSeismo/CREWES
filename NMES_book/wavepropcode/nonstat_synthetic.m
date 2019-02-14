dt=.002;%time sample size
tmax=2;%maximum time
fdom=30;%dominant frequency of the wavelet
Q=50;%Q value
[r,t]=reflec(tmax,dt,.1,3,pi);%synthetic reflectivity
[w,tw]=wavemin(dt,fdom,.2);%min phase wavelet
cmat=convmtx(w,length(r));%a convolution matrix
qmat=qmatrix(Q,t,w,tw,3,2);%a Q matrix 
s=cmat*r;%stationary synthetic
sn=qmat*r;%nonstationary synthetic