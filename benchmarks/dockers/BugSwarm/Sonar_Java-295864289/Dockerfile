ARG SUBJECT_DIR=/subject
ARG LOGGING_DIR=/tmp/build_logs

WORKDIR /tmp/scripts
COPY commons.sh .
COPY helper.sh .
COPY setup.sh .

WORKDIR /tmp/scripts/metadata/BugSwarm/Sonar_Java-295864289/
COPY ./metadata/BugSwarm/Sonar_Java-295864289/npetest.json ./npetest.json
WORKDIR /tmp/scripts/subject_gits/
COPY ./subject_gits/BugSwarm/Sonar_Java-295864289.git/ ./Sonar_Java-295864289.git
RUN \ 
     mkdir -p ./Sonar_Java-295864289.git/refs/heads ./Sonar_Java-295864289.git/refs/tags

WORKDIR /tmp/scripts
RUN mkdir -p $LOGGING_DIR $SUBJECT_DIR
RUN BENCHMARK_GROUP=BugSwarm SUBJECT_ID=Sonar_Java-295864289 \ 
      LOGGING_DIR=${LOGGING_DIR} SUBJECT_DIR=${SUBJECT_DIR} \ 
      ./setup.sh

RUN mv /tmp/scripts/metadata /metadata
RUN mv /tmp/scripts/helper.sh /root/.helper
RUN rm /tmp/scripts/commons.sh
RUN rm /tmp/scripts/setup.sh
RUN rm -rf /tmp/scripts/subject_gits

RUN echo '. /root/.helper' >> /root/.bashrc
WORKDIR /subject
ENTRYPOINT [ "/bin/bash", "-l", "-c" ]
CMD [ "/bin/bash" ]
