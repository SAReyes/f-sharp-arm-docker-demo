# F# + Docker ARM + RaspberryPI

Hello world example on F# that runs on CPUs using amd64 or armv7 (rpi)

```shell
docker pull sareyes/fsharp-example
docker run sareyes/fsharp-example
# Hello world from F#
```

## Notes:
- `-buster-slim-amd64` is used as the build step as other images will fail to run `dotnet restore` on `armv7`