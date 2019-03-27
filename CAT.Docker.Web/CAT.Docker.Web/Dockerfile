#Depending on the operating system of the host machines(s) that will build or run the containers, the image specified in the FROM statement may need to be changed.
#For more information, please see http://aka.ms/containercompat 

FROM microsoft/aspnet:4.7.2-windowsservercore-1803
ARG source
WORKDIR /inetpub/wwwroot
COPY ${source:-obj/Docker/publish} .
# Copy the infrastructures
COPY ./Infra /Infra
# Copy the oledlg.dll to syswow64 and register it
WORKDIR /windows/syswow64/
COPY /infra/syswow64/oledlg.dll /windows/syswow64/
CMD regsvr32.exe oledlg.dll /s

 #install crystal report 2005 runtime x86 version
WORKDIR /infra
RUN [“powershell”, “msiexec”, “/i”, “CrystalReports11_5_NET_2005.msi”, “/qn”, “/lime”, “./Error1.log”]