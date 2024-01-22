# CMake generated Testfile for 
# Source directory: H:/VS2017/C++/RCONClientCross/RCONClientCross/rconpp
# Build directory: H:/VS2017/C++/RCONClientCross/RCONClientCross/test_win/rcon_cpp_lib
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(unittest "H:/VS2017/C++/RCONClientCross/RCONClientCross/test_win/rcon_cpp_lib/Debug/unittest.exe")
  set_tests_properties(unittest PROPERTIES  _BACKTRACE_TRIPLES "H:/VS2017/C++/RCONClientCross/RCONClientCross/rconpp/CMakeLists.txt;54;add_test;H:/VS2017/C++/RCONClientCross/RCONClientCross/rconpp/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(unittest "H:/VS2017/C++/RCONClientCross/RCONClientCross/test_win/rcon_cpp_lib/Release/unittest.exe")
  set_tests_properties(unittest PROPERTIES  _BACKTRACE_TRIPLES "H:/VS2017/C++/RCONClientCross/RCONClientCross/rconpp/CMakeLists.txt;54;add_test;H:/VS2017/C++/RCONClientCross/RCONClientCross/rconpp/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(unittest "H:/VS2017/C++/RCONClientCross/RCONClientCross/test_win/rcon_cpp_lib/MinSizeRel/unittest.exe")
  set_tests_properties(unittest PROPERTIES  _BACKTRACE_TRIPLES "H:/VS2017/C++/RCONClientCross/RCONClientCross/rconpp/CMakeLists.txt;54;add_test;H:/VS2017/C++/RCONClientCross/RCONClientCross/rconpp/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(unittest "H:/VS2017/C++/RCONClientCross/RCONClientCross/test_win/rcon_cpp_lib/RelWithDebInfo/unittest.exe")
  set_tests_properties(unittest PROPERTIES  _BACKTRACE_TRIPLES "H:/VS2017/C++/RCONClientCross/RCONClientCross/rconpp/CMakeLists.txt;54;add_test;H:/VS2017/C++/RCONClientCross/RCONClientCross/rconpp/CMakeLists.txt;0;")
else()
  add_test(unittest NOT_AVAILABLE)
endif()
