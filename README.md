# csharp-build-machine
A dockerized building machine for C# and Mono solutions.

It supports

* NuGet
* NUnit
* FAKE


# Usage
Run the FAKE build with

```
docker run  -v $(pwd)/src:/var/buildmachine/src  arialdomartini/csharp-build-machine
```
