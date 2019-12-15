FROM conanio/gcc9
LABEL maintainer="Matti Jukola <jukolam@gmail.com>"

ARG SOURCEDIR=/app
WORKDIR ${SOURCEDIR}
COPY . .
RUN sudo chmod -R 777 . && \
    cd ${SOURCEDIR} && \
    mkdir build && \
    cd build && \
    cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTS=OFF && \
    cmake --build . && \
    cpack -G DEB . && \
    sudo dpkg -i *.deb && \
    dpkg-deb -c *.deb
ENTRYPOINT ["main_application"]
