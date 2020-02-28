mkdir _build && cd _build
NETCDF_DIR=$PREFIX cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -Dcoretran_DIR=$PREFIX/lib/cmake \
    -DBUILD_SHARED_LIBS=ON \
    ../src
make -j$CPU_COUNT
make install
