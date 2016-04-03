# toban_docker
Docker image for Toban

### build

```
cd [repository directory]
docker build -t toban .
```

### cpan module install

```
docker run -i --rm -v [repository_directory]:/var/toban toban carton install
```

### docker run (debug mode)

```
docker run -d -p 8000:8000 -v [repository_directory]:/var/toban --name toban toban carton exec -- morbo -l http://\*:8000 script/toban
```

### docker run (production mode)

```
docker run -d -p 8000:8000 -v [repository_directory]:/var/toban --name toban toban carton exec -- hypnotoad script/toban
```
