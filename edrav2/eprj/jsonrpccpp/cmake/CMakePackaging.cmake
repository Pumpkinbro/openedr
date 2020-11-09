include(InstallRequiredSystemLibraries)
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "libjson-rpc-cpp")
set(CPACK_PACKAGE_VENDOR "Peter Spiess-Knafl <dev@spiessknafl.at>")
set(CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_CURRENT_SOURCE_DIR}/README.md")
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE.txt")
set(CPACK_PACKAGE_VERSION_MAJOR "${MAJOR_VERSION}")
set(CPACK_PACKAGE_VERSION_MINOR "${MINOR_VERSION}")
set(CPACK_PACKAGE_VERSION_PATCH "${PATCH_VERSION}")

if (WIN32 AND NOT UNIX)
    set(CPACK_GENERATOR "NSIS")
    set(CPACK_NSIS_DISPLAY_NAME "${CPACK_PACKAGE_INSTALL_DIRECTORY} libjson-rpc-cpp")
    set(CPACK_NSIS_HELP_LINK "http://github.com/cinemast/libjson-rpc-cpp")
    set(CPACK_NSIS_URL_INFO_ABOUT "http://github.com/cinemast/libjson-rpc-cpp")
    set(CPACK_NSIS_CONTACT "Peter Spiess-Knafl <dev@spiessknafl.at>")
    set(CPACK_NSIS_MODIFY_PATH ON)
endif(WIN32 AND NOT UNIX)

include(CPack)