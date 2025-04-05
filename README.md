# Jenkins-CasC

Jenkins Configuration as Code (JCasC) feature with Docker

## Environment Variables

Set the following 3 env variables with example values

```
> export ADMIN_ID='admin'
> export ADMIN_PWD='password'
> export NODE_URL='127.0.0.1'
```

## Build docker image

```
> ./build.sh
```

## Run container

```
> ./run.sh
```

## Configure Jenkins

Launch Jenkins from Browser using  http://127.0.0.1:8080

Log in using username and password configured above
