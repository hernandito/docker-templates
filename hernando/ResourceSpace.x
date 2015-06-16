<?xml version="1.0" encoding="utf-8"?>
<Container>
  <Beta>False</Beta>
  <Category>Network:Web</Category>
  <Name>ResourceSpace</Name>
  <Description>
    ResopurceSpace DAM server software. This is a modification of CHMB and smbion by Hernando[br][br]
    [b][span style='color: #E80000;']Directions:[/span][/b][br]
    [b]/config[/b] : this path is used to store the configuration and the SSL certs files of the reverse proxy.[br]
    [b]/web[/b] : this path is the web directory[br]
    [b]/logs[/b] : this path is the logs directory[br][br]


Username and password are [b]admin:admin[/b]. [br][br]
Once you launch for first time, it will take you to a Configuration page:[br][br]
You must have an existing MySQL database available. I recommend the MariaDB docker. This must be already setup. Enter appropiate values.[br][br]
YOU MUST ALSO HAVE A DATABASE TABLE IN YOUR DATABSE CALLED "resourcespace". Create this manually prior to saving your configuration.[br]
[br][br]
For all the PATHS for ImageMagick, Ghoscript, etc, enter "/usr/bin" and nothing else... without the quotes.



  </Description>
  <Registry>https://registry.hub.docker.com/u/hernandito/docker-apache-php-adminer/</Registry>
  <Repository>hernandito/docker-apache-php-adminer</Repository>
  <BindTime>true</BindTime>
  <Privileged>false</Privileged>
  <Networking>
    <Mode>bridge</Mode>
    <Publish>
      <Port>
        <HostPort>81</HostPort>
        <ContainerPort>80</ContainerPort>
        <Protocol>tcp</Protocol>
      </Port>
      <Port>
        <HostPort>444</HostPort>
        <ContainerPort>443</ContainerPort>
        <Protocol>tcp</Protocol>
      </Port>
    </Publish>
  </Networking>
  <Environment>
    <Variable>
      <Name></Name>
      <Value></Value>
    </Variable>
  </Environment>
  <Data>
    <Volume>
      <HostDir>/mnt/user/appdata/apache/config/</HostDir>
      <ContainerDir>/config</ContainerDir>
      <Mode>rw</Mode>
    </Volume>
	<Volume>
      <HostDir>/mnt/user/appdata/apache/www/</HostDir>
      <ContainerDir>/web</ContainerDir>
      <Mode>rw</Mode>
  </Volume>

  <Volume>
      <HostDir>/mnt/user/appdata/apache/logs/</HostDir>
      <ContainerDir>/logs</ContainerDir>
      <Mode>rw</Mode>
    </Volume>
    <Volume>
      <HostDir>/etc/localtime</HostDir>
      <ContainerDir>/etc/localtime</ContainerDir>
      <Mode>ro</Mode>
    </Volume>
  </Data>
  <WebUI>http://[IP]:[PORT:81]/</WebUI>
  <Banner>http://i.imgur.com/A1AQVll.png</Banner>
  <Icon>http://i.imgur.com/A1AQVll.png</Icon>
</Container>


