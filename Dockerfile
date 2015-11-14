# Version: 0.1
FROM mono
MAINTAINER Arialdo Martini "arialdomartini@gmail.com"

COPY buildmachine/ /var/buildmachine/
WORKDIR /var/buildmachine/
RUN mono tools/NuGet.exe Install FAKE -ExcludeVersion -OutputDirectory tools
RUN mono tools/NuGet.exe Install NUnit.Runners -ExcludeVersion -OutputDirectory tools

CMD /var/buildmachine/build.sh test
