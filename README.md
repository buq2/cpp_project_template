# C++ project template

This is an example C++ project with Gitlab integration.

# Build and run with Docker

```
docker build . --tag=cppproject
docker run cppproject
```

# Build instructions from source

## Minimal requirements

```
cmake >3.5
```

## Recommended

```
conan
gcov
```

## Additional requirements if conan is not installed

```
catch2
```


## Building

```
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTS=OFF
cmake --build .
cpack -G DEB .
sudo dpkg -i *.deb
```
