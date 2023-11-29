set(VCPKG_TARGET_ARCHITECTURE x64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE static)

set(VCPKG_BUILD_TYPE release)

# This allows vcpkg to use the Conda-provided binaries for packages
# like OpenSSL which is a transitive dependency of the AWS SDK that vcpkg builds.
set(VCPKG_ENV_PASSTHROUGH "LIBRARY_PREFIX")
set(VCPKG_CMAKE_CONFIGURE_OPTIONS "-DCMAKE_PREFIX_PATH=$ENV{LIBRARY_PREFIX}")
