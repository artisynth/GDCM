#
# This module is provided as GDCM_USE_FILE by GDCMConfig.cmake.
# It can be INCLUDEd in a project to load the needed compiler and linker
# settings to use GDCM:
#   FIND_PACKAGE(GDCM REQUIRED)
#   INCLUDE(${GDCM_USE_FILE})

IF(NOT GDCM_USE_FILE_INCLUDED)
  SET(GDCM_USE_FILE_INCLUDED 1)

  # Load the compiler settings used for GDCM.
  IF(GDCM_BUILD_SETTINGS_FILE)
    INCLUDE(${CMAKE_ROOT}/Modules/CMakeImportBuildSettings.cmake)
    CMAKE_IMPORT_BUILD_SETTINGS(${GDCM_BUILD_SETTINGS_FILE})
  ENDIF(GDCM_BUILD_SETTINGS_FILE)

  # Add compiler flags needed to use GDCM.
  SET(CMAKE_C_FLAGS
    "${CMAKE_C_FLAGS} ${GDCM_REQUIRED_C_FLAGS}")
  SET(CMAKE_CXX_FLAGS
    "${CMAKE_CXX_FLAGS} ${GDCM_REQUIRED_CXX_FLAGS}")
  SET(CMAKE_EXE_LINKER_FLAGS
    "${CMAKE_EXE_LINKER_FLAGS} ${GDCM_REQUIRED_EXE_LINKER_FLAGS}")
  SET(CMAKE_SHARED_LINKER_FLAGS
    "${CMAKE_SHARED_LINKER_FLAGS} ${GDCM_REQUIRED_SHARED_LINKER_FLAGS}")
  SET(CMAKE_MODULE_LINKER_FLAGS
    "${CMAKE_MODULE_LINKER_FLAGS} ${GDCM_REQUIRED_MODULE_LINKER_FLAGS}")

  # Add include directories needed to use GDCM.
  INCLUDE_DIRECTORIES(${GDCM_INCLUDE_DIRS})

  # Add link directories needed to use GDCM.
  LINK_DIRECTORIES(${GDCM_LIBRARY_DIRS})

  # Add cmake module path.
  SET(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${GDCM_CMAKE_DIR}")

  # Use VTK.
  IF(NOT GDCM_NO_USE_VTK)
    SET(VTK_DIR ${GDCM_VTK_DIR})
    FIND_PACKAGE(VTK)
    IF(VTK_FOUND)
      INCLUDE(${VTK_USE_FILE})
    ELSE(VTK_FOUND)
      MESSAGE("VTK not found in GDCM_VTK_DIR=\"${GDCM_VTK_DIR}\".")
    ENDIF(VTK_FOUND)
  ENDIF(NOT GDCM_NO_USE_VTK)

ENDIF(NOT GDCM_USE_FILE_INCLUDED)
