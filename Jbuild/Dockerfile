FROM microsoft/windowsservercore

RUN powershell (new-object System.Net.WebClient).Downloadfile('http://javadl.oracle.com/webapps/download/AutoDL?BundleId=210185', 'C:\jre-8u91-windows-x64.exe')
RUN powershell start-process -filepath C:\jre-8u91-windows-x64.exe -passthru -wait -argumentlist "/s,INSTALLDIR=c:\Java\jre1.8.0_91,/L,install64.log"

RUN C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe (new-object System.Net.WebClient).Downloadfile('http://www-eu.apache.org/dist//jmeter/binaries/apache-jmeter-3.2.zip', 'C:\Jmeter.zip')
RUN C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Expand-Archive -Path C:\Jmeter.zip -DestinationPath C:

ENV Path  C:\\apache-jmeter-3.2\\bin
ENV JAVA_HOME c:\\Java\\jre1.8.0_91
ENV Path c:\\Java\\jre1.8.0_91\\bin


COPY findstr.exe C:\\apache-jmeter-3.2\\bin

COPY petclinic_test_plan.jmx C:


CMD cd C:\Windows\System32 && C:\apache-jmeter-3.2\bin\jmeter.bat -n -t C:\petclinic_test_plan.jmx  -l  C:\results.jtl 





    



