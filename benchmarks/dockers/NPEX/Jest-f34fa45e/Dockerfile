ARG SUBJECT_DIR=/subject
ARG LOGGING_DIR=/tmp/build_logs

WORKDIR /tmp/scripts
COPY commons.sh .
COPY helper.sh .
COPY setup.sh .

WORKDIR /tmp/scripts/metadata/NPEX/Jest-f34fa45e/
COPY ./metadata/NPEX/Jest-f34fa45e/npetest.json ./npetest.json
WORKDIR /tmp/scripts/subject_gits/
COPY ./subject_gits/NPEX/Jest-f34fa45e.git/ ./Jest-f34fa45e.git
RUN \ 
     mkdir -p ./Jest-f34fa45e.git/refs/heads ./Jest-f34fa45e.git/refs/tags

WORKDIR /tmp/scripts
RUN mkdir -p $LOGGING_DIR $SUBJECT_DIR
RUN BENCHMARK_GROUP=NPEX SUBJECT_ID=Jest-f34fa45e \ 
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
