FROM rootproject/root:latest

WORKDIR /work

RUN apt update
RUN apt -y install python3-pip vim screen emacs
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install jupyter scipy uproot root-numpy matplotlib recordtype lmfit pandas

EXPOSE 8080

ENTRYPOINT ["jupyter"]
CMD ["notebook", "--ip=0.0.0.0", "--port=8080", "--allow-root"]
