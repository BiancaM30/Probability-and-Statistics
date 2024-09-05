function [positions,steps2right]=mers_axa_a(p=0.5,k=10)
  pkg load statistics;
  clc;
  
positions=zeros(1,k+1);
steps2right=0;
for j=2:k+1
   pas=2*binornd(1,p)-1; % binornd(1,p) genereaza succes(adica 1) cu probabilitatea p
   positions(j)=positions(j-1)+pas;
   if pas==1
      steps2right++;
   end
 end