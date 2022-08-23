# CMake generated Testfile for 
# Source directory: C:/Users/ilker/Desktop/CmakeProject/Calculator/test
# Build directory: C:/Users/ilker/Desktop/CmakeProject/Calculator/build-vscode/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(CalculatorTests "C:/Users/ilker/Desktop/CmakeProject/Calculator/build-vscode/test/Debug/CalculatorTests.exe")
  set_tests_properties(CalculatorTests PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/ilker/Desktop/CmakeProject/Calculator/test/CMakeLists.txt;17;add_test;C:/Users/ilker/Desktop/CmakeProject/Calculator/test/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(CalculatorTests "C:/Users/ilker/Desktop/CmakeProject/Calculator/build-vscode/test/Release/CalculatorTests.exe")
  set_tests_properties(CalculatorTests PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/ilker/Desktop/CmakeProject/Calculator/test/CMakeLists.txt;17;add_test;C:/Users/ilker/Desktop/CmakeProject/Calculator/test/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(CalculatorTests "C:/Users/ilker/Desktop/CmakeProject/Calculator/build-vscode/test/MinSizeRel/CalculatorTests.exe")
  set_tests_properties(CalculatorTests PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/ilker/Desktop/CmakeProject/Calculator/test/CMakeLists.txt;17;add_test;C:/Users/ilker/Desktop/CmakeProject/Calculator/test/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(CalculatorTests "C:/Users/ilker/Desktop/CmakeProject/Calculator/build-vscode/test/RelWithDebInfo/CalculatorTests.exe")
  set_tests_properties(CalculatorTests PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/ilker/Desktop/CmakeProject/Calculator/test/CMakeLists.txt;17;add_test;C:/Users/ilker/Desktop/CmakeProject/Calculator/test/CMakeLists.txt;0;")
else()
  add_test(CalculatorTests NOT_AVAILABLE)
endif()
