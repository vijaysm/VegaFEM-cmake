include_directories(
   ${CMAKE_CURRENT_SOURCE_DIR}
   ${CMAKE_SOURCE_DIR}/include
)

add_library(imageIO SHARED imageIO.cpp)
