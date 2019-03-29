#Depending on the operating system of the host machines(s) that will build or run the containers, the image specified in the FROM statement may need to be changed.
#For more information, please see http://aka.ms/containercompat 

FROM microsoft/iis
RUN powershell -NoProfile -Command Remove-Item -Recurse C:\inetpub\wwwroot\*
WORKDIR C:/inetpub/wwwroot/
COPY ./CAT.Docker.Web ./

# Copy the infrastructures
COPY ./Infra /Infra
# Copy the oledlg.dll to syswow64 and register it
WORKDIR /windows/syswow64/
COPY /infra/syswow64/oledlg.dll /windows/syswow64/
CMD regsvr32.exe oledlg.dll /s

WORKDIR /infra
RUN ["powershell", "msiexec", "/i", "CrystalReports11_5_NET_2005.msi", "/qn", "/lime", "./Error1.log"]