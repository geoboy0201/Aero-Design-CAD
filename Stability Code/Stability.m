clc;clear;

%Code uses NACA0012

%Longitudinal Stability Variables
xW=0.0254; %Moment arm of wing meters
zW=0.0762; %Height of wing meters
xHT=0.61; %Moment arm of HT meters
sW=0.347; %Area of wing. Square meters
sHT=0.033; %Area of HT. Square meters
MAC=0.242; %Mean Aero Chord of wing. Meters
CLWalpha=5.16; %CL/radian wing
CDWalpha=0.286; %CD/radian wing
CLHTalpha=6.635; %CL/radian HT
q =198;
qHT=198;

CMa=((xW*CLWalpha*q*sW)+(zW*CDWalpha*q*sW)-(xHT*CLHTalpha*qHT*sHT))/(q*sW*MAC);

%Yaw Stability
xVT=0.61; %Moment arm of VT meters
zVT=0.1; %Height of VT meters
sVT=0.027; %Area of VT meters
b=1.524; %Span of wing meters
CLVTalpha=6.635; %CL/radian VT 
dsigmadbeta=0.1; %Random value from Jasmine
qVT=198;

CNb=(xVT*CLVTalpha*qVT*sVT)*(1-dsigmadbeta)/(q*sW*b);

CLb=(-(zVT/xVT)*CNb);

fprintf('CMa = %g < 0, CNb = %g > 0, CLb = %g < 0\n',CMa,CNb,CLb)