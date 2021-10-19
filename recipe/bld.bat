set LIB=%LIBRARY_LIB%;%LIB%
set INCLUDE=%LIBRARY_INC%;%INCLUDE%
set LIBRARY_DIRS=%LIBRARY_BIN%;%LIBRARY_LIB%

set JPEG_ROOT=%LIBRARY_PREFIX%
:: set JPEG2K_ROOT=%LIBRARY_PREFIX%
set ZLIB_ROOT=%LIBRARY_PREFIX%
:: set IMAGEQUANT_ROOT=%LIBRARY_PREFIX%
set TIFF_ROOT=%LIBRARY_PREFIX%
set FREETYPE_ROOT=%LIBRARY_PREFIX%
:: set LCMS_ROOT=%LIBRARY_PREFIX%


%PYTHON% -m pip install . --no-deps --ignore-installed --no-cache-dir --global-option="build_ext" --global-option="--enable-webp" -vvv
if errorlevel 1 exit 1
