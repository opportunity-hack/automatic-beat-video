# But, why?
It's hard for people to make videos with music that are fun to watch. [Google Photos does a great job](https://support.google.com/photos/answer/6128862?hl=en&co=GENIE.Platform%3DAndroid) of making video mashups with music, but you don't get much control on color, image transition, etc.

Scenarios:
1. A nonprofit is trying to post something exciting on social media, they take hours to make a music montage
2. You're trying to create a video to spice something up, like welcoming a new team member and have some photos at hand



# How to get this working
Made and tested on Python 3.7

```
pip install -r requirements.txt

jupyter notebook
```

If you have an environment where you can't install all of the Python packages, Docker can work!
```
docker build -t beats .
docker run -it --entrypoint="bash" -p 8888:8888 -v "$PWD:/app" beats
```
