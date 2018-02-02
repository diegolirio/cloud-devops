FROM jenkins:2.60.3

### Maven ###
ENV M2_HOME /maven
WORKDIR $M2_HOME
RUN "pwd"
RUN curl -fSL "http://ftp.unicamp.br/pub/apache/maven/maven-3/3.1.1/binaries/apache-maven-3.1.1-bin.tar.gz" -o apache-maven-3.1.1-bin.tar.gz
RUN tar -xvf apache-maven-3.1.1-bin.tar.gz -C /maven --strip-components=1
RUN rm apache-maven-3.1.1-bin.tar.gz
ENV PATH $M2_HOME/bin:$PATH

EXPOSE 1000