# - Find RDKAFKA
# Find the native RDKAFKA includes and library
#
#  RDKAFKA_INCLUDES    - where to find rdkafka.h
#  RDKAFKA_LIBRARIES   - List of libraries when using RDKAFKA.
#  RDKAFKA_FOUND       - True if RDKAFKA found.

if (RDKAFKA_INCLUDES)
  # Already in cache, be silent
  set (RDKAFKA_FIND_QUIETLY TRUE)
endif (RDKAFKA_INCLUDES)

find_path (RDKAFKA_INCLUDES rdkafka.h)

IF (WIN32)
include_directories(${RDKAFKA_INCLUDES})
find_library (RDKAFKA_LIBRARIES NAMES ${RDKAFKA_LIBRARIES})
ELSE(WIN32)
find_library (RDKAFKA_LIBRARIES NAMES rdkafka)
ENDIF(WIN32)




# handle the QUIETLY and REQUIRED arguments and set RDKAFKA_FOUND to TRUE if
# all listed variables are TRUE
include (FindPackageHandleStandardArgs)
find_package_handle_standard_args (RDKAFKA DEFAULT_MSG RDKAFKA_LIBRARIES RDKAFKA_INCLUDES)

mark_as_advanced (RDKAFKA_LIBRARIES RDKAFKA_INCLUDES)
