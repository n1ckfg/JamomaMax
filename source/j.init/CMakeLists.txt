cmake_minimum_required(VERSION 3.0)
project(j.init)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/j.init.cpp
)

include(${CMAKE_CURRENT_SOURCE_DIR}/../../Shared/CMake/MaxExternalCommon.cmake)

install(TARGETS ${PROJECT_NAME}
           DESTINATION "${JAMOMAMAX_MODULAR_INSTALL_FOLDER}/Jamoma/externals"
           COMPONENT JamomaMaxModularOnly)
