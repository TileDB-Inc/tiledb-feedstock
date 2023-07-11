setlocal EnableDelayedExpansion

REM Copy tiledb-patches to the source directory
xcopy /Y /S /I "%RECIPE_DIR%\tiledb-patches" "%SRC_DIR%"

mkdir "%SRC_DIR%"\build
pushd "%SRC_DIR%"\build

if "%gcs%"=="gcs_enabled" (
    set TILEDB_GCS=ON
) else (
    set TILEDB_GCS=OFF
)

cmake -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DTILEDB_WERROR=OFF ^
      -DTILEDB_TESTS=OFF ^
      -DTILEDB_AZURE=ON ^
      -DTILEDB_GCS=%TILEDB_GCS% ^
      -DTILEDB_S3=ON ^
      -DTILEDB_HDFS=OFF ^
      -DTILEDB_VCPKG=ON ^
      -DCOMPILER_SUPPORTS_AVX2=OFF ^
      -DTILEDB_SERIALIZATION=ON ^
      ..
if errorlevel 1 exit 1

cmake --build . --config Release
if errorlevel 1 exit 1

pushd "tiledb"
cmake --build . --config Release --target install
if errorlevel 1 exit 1
popd

popd
