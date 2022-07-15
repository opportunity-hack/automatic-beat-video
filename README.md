Made and tested on Python 3.7

# How to get this working
```
pip install -r requirements.txt

jupyter notebook
```

If you have an environment where you can't install all of the Python packages, Docker can work!
```
docker build -t beats .
docker run -it --entrypoint="bash" -p 8888:8888 -v "$PWD:/app" beats
```
