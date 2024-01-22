cmake_minimum_required(VERSION 3.10)

set(PROJECT_NAME RCONClientCross)
project(${PROJECT_NAME} VERSION 1.0 LANGUAGES C CXX)

set(BUILD_SHARED_LIBS 0)
set(BUILD_TESTS 0)

add_subdirectory(rconpp rcon_cpp_lib)

add_executable(${PROJECT_NAME} 
	src/main.cpp
)

target_link_libraries(${PROJECT_NAME} PRIVATE
	rconpp
)
target_include_directories(${PROJECT_NAME} PRIVATE 
	rconpp/include
)