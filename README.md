# Build image 

```
docker build -t gulper .
```

# Build custom project

e.g. your current working directory contains a project with the file gulpfile.babel.js

```
docker run --rm -ti \
    -v $(pwd):/app \
    gulper \
    --gulpfile=gulpfile.babel.js styles
```

