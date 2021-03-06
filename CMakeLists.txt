cmake_minimum_required(VERSION 3.0)
project(JamomaMax)

SET(JAMOMAMAX_PATH ${CMAKE_CURRENT_SOURCE_DIR})
include(${CMAKE_CURRENT_SOURCE_DIR}/Shared/CMake/addMaxSupport.cmake)
SET(BUILD_JAMOMAMAX True)
### GetGitDescription ###
# TODO put this in a module
# I tried around a09620ce2717e10cc0a624c805146727996a4266
# and it worked locally but not on Travis CI...
if($ENV{TRAVIS})
  string(SUBSTRING $ENV{TRAVIS_COMMIT} 0 7 GIT_SHA_SHORT)
  SET(GIT_TAG $ENV{TRAVIS_TAG})
elseif($ENV{APPVEYOR})
  string(SUBSTRING $ENV{APPVEYOR_REPO_COMMIT} 0 7 GIT_SHA_SHORT)
  SET(GIT_TAG $ENV{APPVEYOR_REPO_TAG_NAME})
else()
  include(${CMAKE_CURRENT_SOURCE_DIR}/Shared/CMake/modules/GetGitRevisionDescription.cmake)
  #get_jamoma_version()
  set(HASH "error")
  get_git_head_revision(REFSPEC HASH --always --tags)
  git_describe(GIT_TAG --abbrev=0 --tags)
  # git_get_exact_tag(GIT_TAG)
  if(NOT ${HASH} STREQUAL "error")
    string(SUBSTRING ${HASH} 0 7 GIT_SHA_SHORT)
    message("building on Git rev : " ${GIT_SHA_SHORT})
    message("Git tag : " ${GIT_TAG})
    string(LENGTH "${GIT_TAG}" taglen)
    message("Git tag length : " ${taglen})
    if (taglen GREATER 1)
      string(REPLACE "." ";" GIT_TAG_LIST ${GIT_TAG}) # make a list from the tag string
      list(LENGTH GIT_TAG_LIST len)
      if (len GREATER 0)
              list(GET GIT_TAG_LIST 0 GIT_VERSION_MAJ)
      endif (len GREATER 0)
      if (len GREATER 1)
              list(GET GIT_TAG_LIST 1 GIT_VERSION_MIN)
      endif (len GREATER 1)
      if (len GREATER 2)
              list(GET GIT_TAG_LIST 2 GIT_VERSION_SUB)
      endif (len GREATER 2)
      if (len GREATER 3)
              list(GET GIT_TAG_LIST 3 GIT_VERSION_MOD_LONG)
      endif (len GREATER 3)
      list(LENGTH GIT_VERSION_MOD_LONG len2)
      if (len2 GREATER 0)
              string(REPLACE "-" ";" GIT_VERSION_MOD_LIST ${GIT_VERSION_MOD_LONG})
              list(GET GIT_VERSION_MOD_LIST 0 GIT_VERSION_MOD)
      endif (len2 GREATER 0)
    endif (taglen GREATER 1)
  endif()
endif()

configure_file("${CMAKE_CURRENT_SOURCE_DIR}/library/includes/JamomaMaxVersion.h.in" "${CMAKE_CURRENT_SOURCE_DIR}/library/includes/JamomaMaxVersion.h" @ONLY)
configure_file("${CMAKE_CURRENT_SOURCE_DIR}/Jamoma/javascript/j.js_systeminfo.js.in" "${CMAKE_CURRENT_SOURCE_DIR}/Jamoma/javascript/j.js_systeminfo.js" @ONLY)

    if (APPLE)
        option(FAT_BINARY "Build a fat binary (32bit and 64bit)" ON)
    endif(APPLE)
    set(JAMOMA_CORE_SRC_PATH "${PROJECT_SOURCE_DIR}/JamomaCore" CACHE STRING "Path to JamomaCore source folder")

    include(${JAMOMA_CORE_SRC_PATH}/Shared/CMake/JamomaConfiguration.cmake NO_POLICY_SCOPE)
    include(${JAMOMA_CORE_SRC_PATH}/Shared/CMake/JamomaPlatformSpecific.cmake NO_POLICY_SCOPE)
    # include(${JAMOMA_CORE_SRC_PATH}/Shared/CMake/JamomaPack.cmake NO_POLICY_SCOPE)
	# include(${JAMOMA_CORE_SRC_PATH}/Shared/CMake/JamomaExports.cmake NO_POLICY_SCOPE)

    if(FAT_BINARY)
        set(CMAKE_OSX_ARCHITECTURES "i386;x86_64")
    endif(FAT_BINARY)

    set(JAMOMAMAX_INSTALL_FOLDER "JamomaMax" CACHE STRING "Max Package Install folder")
    set(JAMOMAMAX_MODULAR_INSTALL_FOLDER "JamomaMaxModularOnly" CACHE STRING "Modular Only Max Package Install folder")

    install(DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/Jamoma"
        DESTINATION ${JAMOMAMAX_INSTALL_FOLDER}
            COMPONENT JamomaMax)
    add_subdirectory(${JAMOMA_CORE_SRC_PATH})






if((APPLE AND NOT IOS) OR WIN32)

	if(WIN32 AND CMAKE_BUILD_TYPE STREQUAL "Release")
		add_definitions(-DMAXAPI_USE_MSCRT)
	endif()
	add_subdirectory(library)
	add_subdirectory(source)
endif()

if (WIN32 AND NOT MINGW-W64)
  find_package(LibXml2 CONFIG)
  get_target_property(XML2_DLL xml2 IMPORTED_LOCATION)
  install(FILES "${XML2_DLL}"
    DESTINATION "${JAMOMAMAX_INSTALL_FOLDER}/Jamoma/support/${SUPPORT_FOLDER}")
endif()
