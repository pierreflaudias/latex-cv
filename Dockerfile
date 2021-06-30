FROM texlive/texlive
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -yq\
    texlive-latex-base \
    texlive-fonts-recommended texlive-fonts-extra \
    texlive-latex-extra \
    texlive-lang-french

RUN echo "export PATH=/usr/local/texlive/2021/bin/x86_64-linux:$PATH" >> ~/.bashrc

COPY update-tlmgr-latest.sh update-tlmgr-latest.sh

RUN export PATH=/usr/local/texlive/2021/bin/x86_64-linux:$PATH && sh update-tlmgr-latest.sh -- --update

WORKDIR /data
VOLUME ["/data"]

