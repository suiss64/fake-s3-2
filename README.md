# fake-s3

Docker container for [fakes3](https://github.com/jubos/fake-s3).  By default exposes port `4569`.

To spin it up:

```sh
> docker run --name s3 gliffy/fake-s3
```

with [AWS CLI](https://aws.amazon.com/cli/)

```sh
> aws --endpoint=http://localhost:4569 s3 ls
```
