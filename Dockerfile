FROM rootproject/root:latest

WORKDIR /work

RUN apt update && apt -y upgrade
RUN apt -y install python3-pip vim screen emacs
RUN python3 -m pip install --upgrade pip
# After October 2020 errors can happen when installing or updating packages. Pip will change the way that it resolves dependency conflicts.
# recommend use --use-feature=2020-resolver to test your packages with the new resolver before it becomes the default.
RUN python3 -m pip --use-feature=2020-resolver install jupyter scipy uproot root-numpy matplotlib recordtype lmfit pandas
RUN python3 -m pip --use-feature=2020-resolver install numericalunits numba lz4 cython mpmath sympy astropy keras sklearn

EXPOSE 8080

CMD jupyter notebook --ip=0.0.0.0 --port=8080 --allow-root --notebook-dir=/work
