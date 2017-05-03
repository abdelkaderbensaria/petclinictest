FROM aarchoun/java

RUN C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe (new-object System.Net.WebClient).Downloadfile('https://dev.mysql.com/get/Downloads/MySQL-5.5/mysql-5.5.55-winx64.zip', 'C:\MySQL-5.zip')
RUN C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Expand-Archive -Path C:\MySQL-5.zip -DestinationPath C:

ENV Path  C:\\mysql-5.5.55-winx64\\bin


EXPOSE 3306

COPY schema.sql C:/mysql-5.5.55-winx64/bin

COPY privileges.sql C:/mysql-5.5.55-winx64/bin

CMD ["C:/mysql-5.5.55-winx64/bin/mysqld.exe"]



    



