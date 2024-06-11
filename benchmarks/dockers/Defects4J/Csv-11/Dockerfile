ARG SUBJECT_DIR=/subject
ARG LOGGING_DIR=/tmp/build_logs

WORKDIR /tmp/scripts
COPY commons.sh .
COPY helper.sh .
COPY setup.sh .

WORKDIR /tmp/scripts/metadata/Defects4J/Csv-11/
COPY ./metadata/Defects4J/Csv-11/npetest.json ./npetest.json
WORKDIR /tmp/scripts/subject_gits/
COPY ./subject_gits/Defects4J/Csv-11.git/ ./Csv-11.git
RUN \ 
     mkdir -p ./Csv-11.git/refs/heads ./Csv-11.git/refs/tags

WORKDIR /tmp/scripts
RUN mkdir -p $LOGGING_DIR $SUBJECT_DIR
RUN BENCHMARK_GROUP=Defects4J SUBJECT_ID=Csv-11 \ 
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
