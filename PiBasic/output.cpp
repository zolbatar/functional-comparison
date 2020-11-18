#include "shared.h"
#include <iostream>
#include <string>
#include <cmath>
#include <array>

std::array<VM_STRING, static_cast<int>(4)>line_S;
std::array<VM_INT, static_cast<int>(500)>used_I;
std::array<VM_STRING, static_cast<int>(500)>callId_S;
std::array<VM_STRING, static_cast<int>(50)>resourceId_S;
std::array<VM_FLOAT, static_cast<int>(50)>resourceX;
std::array<VM_FLOAT, static_cast<int>(50)>resourceY;
std::array<VM_FLOAT, static_cast<int>(500)>callX;
std::array<VM_FLOAT, static_cast<int>(500)>callY;
int main(int argc, char *argv[]) {
VM_INT I_I;
I_I=0;
VM_INT numCalls_I;
numCalls_I=0;
VM_INT numResources_I;
numResources_I=0;
VM_FLOAT earthRadius;
earthRadius=6.36745e+06;
VM_FLOAT convertRad;
convertRad=(M_PI/180);
VM_FLOAT convertDeg;
convertDeg=(180/M_PI);
auto PROCAddCall=[&]() {
callId_S[numCalls_I]=line_S[0];
callX[numCalls_I]=std::stod(line_S[1]);
callY[numCalls_I]=std::stod(line_S[2]);
numCalls_I=(numCalls_I+1);
};
auto PROCAddResource=[&]() {
resourceId_S[numResources_I]=line_S[0];
resourceX[numResources_I]=std::stod(line_S[1]);
resourceY[numResources_I]=std::stod(line_S[2]);
numResources_I=(numResources_I+1);
};
auto PROCAddToList=[&]() {
if (I_I==3) {
PROCAddCall();
}
if (I_I==2) {
PROCAddResource();
}
I_I=0;
line_S[0]="";
line_S[1]="";
line_S[2]="";
line_S[3]="";
};
auto FNatan2=[&](VM_FLOAT y,VM_FLOAT x) {
if (x>0) {
return std::atan((y/x));
} else {
if (y>0) {
return (std::atan((y/x))+M_PI);
}
}
return (std::atan((y/x))-M_PI);
};
auto FNCalcDistance=[&](VM_FLOAT la1,VM_FLOAT lo1,VM_FLOAT la2,VM_FLOAT lo2) {
VM_FLOAT startLat;
startLat=(la1*convertRad);
VM_FLOAT startLon;
startLon=(lo1*convertRad);
VM_FLOAT endLat;
endLat=(la2*convertRad);
VM_FLOAT endLon;
endLon=(lo2*convertRad);
VM_FLOAT lon;
lon=(endLon-startLon);
VM_FLOAT lat;
lat=(endLat-startLat);
VM_FLOAT sinHLat;
sinHLat=std::sin((lat*0.5));
VM_FLOAT sinHLon;
sinHLon=std::sin((lon*0.5));
VM_FLOAT a;
a=(((sinHLat*sinHLat))+(((std::cos(startLat)*std::cos(endLat)))*((sinHLon*sinHLon))));
VM_FLOAT c;
c=FNatan2(std::sqrt(a),std::sqrt((1-a)));
;
VM_FLOAT d;
d=(earthRadius*((c+c)));
return d;
};
auto PROCResetUsed=[&]() {
VM_INT A_I;
auto __fs0=0;auto __fe0=499;auto __fst0=1;auto __fd0 = 0;if (__fs0 < __fe0) __fd0 = 1; else __fd0 = -1;
for (A_I= __fs0;A_I!=__fe0+__fd0;A_I+=__fst0) {
used_I[A_I]=0;
}
};
auto PROCLoad=[&]() {
VM_INT T_I;
T_I=get_clock();
VM_INT channel_I;
channel_I=open_in("DATA");
I_I=0;
do {
VM_INT a_I;
a_I=bget(channel_I);
;
if (a_I==asc(",")) {
I_I=(I_I+1);
} else {
line_S[I_I]=(line_S[I_I]+chrs(a_I));
}
if (a_I==10) {
PROCAddToList();
}
} while (!(eof(channel_I)));
close(channel_I);
std::cout <<"Imported in ";
std::cout <<((((get_clock()-T_I))/100));
std::cout <<" seconds"<< std::endl;
};
auto PROCGreedy=[&]() {
VM_INT K_I;
auto __fs1=0;auto __fe1=99;auto __fst1=1;auto __fd1 = 0;if (__fs1 < __fe1) __fd1 = 1; else __fd1 = -1;
for (K_I= __fs1;K_I!=__fe1+__fd1;K_I+=__fst1) {
VM_FLOAT total;
total=0;
PROCResetUsed();
std::cout <<K_I;
std::cout <<": ";
VM_INT C_I;
auto __fs2=0;auto __fe2=((numResources_I-1));auto __fst2=1;auto __fd2 = 0;if (__fs2 < __fe2) __fd2 = 1; else __fd2 = -1;
for (C_I= __fs2;C_I!=__fe2+__fd2;C_I+=__fst2) {
VM_INT D_I;
auto __fs3=0;auto __fe3=49;auto __fst3=1;auto __fd3 = 0;if (__fs3 < __fe3) __fd3 = 1; else __fd3 = -1;
for (D_I= __fs3;D_I!=__fe3+__fd3;D_I+=__fst3) {
VM_FLOAT O;
O=1e+08;
VM_INT L_I;
L_I=-1;
VM_INT A_I;
auto __fs4=0;auto __fe4=((numCalls_I-1));auto __fst4=1;auto __fd4 = 0;if (__fs4 < __fe4) __fd4 = 1; else __fd4 = -1;
for (A_I= __fs4;A_I!=__fe4+__fd4;A_I+=__fst4) {
if (used_I[A_I]==0) {
VM_FLOAT D;
D=FNCalcDistance(resourceX[C_I],resourceY[C_I],callX[A_I],callY[A_I]);
;
if (D<O) {
O=D;
L_I=A_I;
}
}
}
if (L_I==-1) {
std::cout <<"Not found"<< std::endl;
exit(0);
}
used_I[L_I]=1;
total=(total+O);
}
}
std::cout <<total<< std::endl;
}
};
PROCLoad();
PROCGreedy();
return 0;
}
