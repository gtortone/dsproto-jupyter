# dsproto-jupyter

Jupyter image with ROOT from rootproject/root:latest for Darkside Python reconstruction tasks

Included Python libraries:

- scipy 
- uproot 
- root-numpy
- matplotlib 
- recordtype 
- lmfit
- pandas
- numericalunits
- numba
- lz4
- cython
- mpmath
- sympy
- astropy
- keras
- sklearn

# Deployment

Start a Docker container 'pyroot-notebook' in background on local port 8888

```
docker run -p 8888:8080 -d --name pyroot-notebook gtortone/dsproto-jupyter
```

To view Jupyter token

```
docker logs pyroot-notebook
```
