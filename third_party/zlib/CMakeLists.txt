include(FetchContent)
FetchContent_Declare(zlib
  URL https://github.com/madler/zlib/releases/download/v1.2.13/zlib-1.2.13.tar.gz
)
# it's much better to use a specific Git revision or Git tag for reproducibility

FetchContent_MakeAvailable(zlib)