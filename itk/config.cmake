#==========================================================
# General
#==========================================================

# Install path prefix, prepended onto install directories.
set(CMAKE_INSTALL_PREFIX "$PREFIX" CACHE PATH "")

# Choose the type of build.
# TODO: Release
set(CMAKE_BUILD_TYPE "Debug" CACHE PATH "")

# Build the Examples directory.
set(BUILD_EXAMPLES "OFF" CACHE PATH "")

# Build the testing tree.
set(BUILD_TESTING "OFF" CACHE PATH "")

# Toggle building shared libraries
set(BUILD_SHARED_LIBS "ON" CACHE PATH "")

# Build the documentation (Doxygen).
set(BUILD_DOCUMENTATION "OFF" CACHE PATH "")

#==========================================================
# HDF5
#==========================================================

# Use an outside build of HDF5.
# ITK_USE_SYSTEM_HDF5:BOOL=ON

# HDF5 library compiled with parallel IO support
# HDF5_IS_PARALLEL:BOOL=FALSE

# The directory containing a CMake configuration file for HDF5.
# HDF5_DIR:PATH=HDF5_DIR-NOTFOUND

#---------------------------
# Executables
#---------------------------

# HDF5 Wrapper compiler.  Used only to detect HDF5 compile flags.
# HDF5_C_COMPILER_EXECUTABLE:FILEPATH=$PREFIX/bin/h5cc

# HDF5 C++ Wrapper compiler.  Used only to detect HDF5 compile flags.
# HDF5_CXX_COMPILER_EXECUTABLE:FILEPATH=$PREFIX/bin/h5c++

# HDF5 Fortran Wrapper compiler.  Used only to detect HDF5 compile flags.
# HDF5_Fortran_COMPILER_EXECUTABLE:FILEPATH=HDF5_Fortran_COMPILER_EXECUTABLE-NOTFOUND

# HDF5 file differencing tool.
# HDF5_DIFF_EXECUTABLE:FILEPATH=$PREFIX/bin/h5diff

#---------------------------
# Include directories
#---------------------------

# HDF5 include directories
#HDF5_C_INCLUDE_DIR:PATH=$PREFIX/include
# HDF5_CXX_INCLUDE_DIR:PATH=$PREFIX/include

#---------------------------
# Libraries
#---------------------------

# HDF5 Libraries
# HDF5_hdf5_LIBRARY_DEBUG:FILEPATH=HDF5_hdf5_LIBRARY_DEBUG-NOTFOUND
# HDF5_hdf5_LIBRARY_RELEASE:FILEPATH=$PREFIX/lib/libhdf5.so
# HDF5_hdf5_cpp_LIBRARY_DEBUG:FILEPATH=HDF5_hdf5_cpp_LIBRARY_DEBUG-NOTFOUND
# HDF5_hdf5_cpp_LIBRARY_RELEASE:FILEPATH=$PREFIX/lib/libhdf5_cpp.so

# m library
# HDF5_m_LIBRARY_DEBUG:FILEPATH=HDF5_m_LIBRARY_DEBUG-NOTFOUND
# HDF5_m_LIBRARY_RELEASE:FILEPATH=$PREFIX/lib/libm.so

# z library
# HDF5_z_LIBRARY_DEBUG:FILEPATH=HDF5_z_LIBRARY_DEBUG-NOTFOUND
# HDF5_z_LIBRARY_RELEASE:FILEPATH=$PREFIX/lib/libz.so

# dl library, provided by system, not conda`
# HDF5_dl_LIBRARY_DEBUG:FILEPATH=HDF5_dl_LIBRARY_DEBUG-NOTFOUND
# HDF5_dl_LIBRARY_RELEASE:FILEPATH=/usr/lib/libdl.so

# rt library, provided by system, not conda
# HDF5_rt_LIBRARY_DEBUG:FILEPATH=HDF5_rt_LIBRARY_DEBUG-NOTFOUND
# HDF5_rt_LIBRARY_RELEASE:FILEPATH=/usr/lib/librt.so

#==========================================================
# JPEG
#==========================================================

# ITK_USE_SYSTEM_JPEG:BOOL=ON
# JPEG_INCLUDE_DIR:PATH=$PREFIX/include
# JPEG_LIBRARY:FILEPATH=$PREFIX/lib/libjpeg.so

#==========================================================
# PNG
#==========================================================

# ITK_USE_SYSTEM_PNG:BOOL=ON
# PNG_LIBRARY_DEBUG:FILEPATH=PNG_LIBRARY_DEBUG-NOTFOUND
# PNG_LIBRARY_RELEASE:FILEPATH=$PREFIX/lib/libpng.so
# PNG_PNG_INCLUDE_DIR:PATH=$PREFIX/include

#==========================================================
# TIFF
#==========================================================

# ITK_USE_SYSTEM_TIFF:BOOL=ON
# TIFF_INCLUDE_DIR:PATH=$PREFIX/include
# TIFF_LIBRARY:FILEPATH=$PREFIX/lib/libtiff.so

#==========================================================
# VXL
#==========================================================

# ITK_USE_SYSTEM_VXL:BOOL=OFF
# Module_ITKVideoBridgeVXL:BOOL=OFF
# VXL_UPDATE_CONFIGURATION:BOOL=OFF

#==========================================================
# ZLIB
#==========================================================

# ITK_USE_SYSTEM_GDCM:BOOL=ON
# ZLIB_INCLUDE_DIR:PATH=$PREFIX/include
# ZLIB_LIBRARY:FILEPATH=$PREFIX/lib/libz.so

#==========================================================
# GDCM
#==========================================================

# ITK_USE_SYSTEM_GDCM:BOOL=OFF

#==========================================================
# FFTW
#==========================================================

# Use an installed version of fftw
# ITK_USE_SYSTEM_FFTW:BOOL=OFF

# Use double precision fftw if found
# ITK_USE_FFTWD:BOOL=OFF

# Use single precision fftw if found
# ITK_USE_FFTWF:BOOL=OFF
