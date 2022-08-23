cmake_minimum_required(VERSION 3.8)

set(This GTEST-CMAKE-CALCULATOR)

project(${This} C CXX)

set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(gtest_force_shared_crt ON CACHE BOOL "force shared crt" FORCE)

#       DOWNLOAD ALL THE SUBMODULES
if(EXISTS  "${PROJECT_SOURCE_DIR}/googletest/CMakeLists.txt")
    message("Submodule was founded!")
else()
    find_package(Git QUIET)
    if(GIT_FOUND AND EXISTS "${PROJECT_SOURCE_DIR}/.git")
    # Update submodules as needed
        option(GIT_SUBMODULE "Check submodules during build" ON)
        if(GIT_SUBMODULE)
            message(STATUS "Submodule update")
            execute_process(COMMAND ${GIT_EXECUTABLE} submodule update --init -recursive
                            WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
                            RESULT_VARIABLE GIT_SUBMOD_RESULT)
            if(NOT GIT_SUBMOD_RESULT EQUAL "1")
                message(FATAL_ERROR "git submodule update --init failed with ${GIT_SUBMOD_RESULT}, please checkout")
            endif()
        endif()
    endif()
endif()


#       CHECK ALL THE SUBMODULES
if(NOT EXISTS "${PROJECT_SOURCE_DIR}/googletest/CMakeLists.txt")
    message(FATAL_ERROR "googletest submodules was not downloaded! GIT_SUBMODULE was turned off or failed. Please check!")
endif()

enable_testing()

add_subdirectory(googletest)

set(
    Headers
    Calculator.hpp
)

set(
    Sources
    Calculator.cpp
)



add_library(${This} STATIC ${Sources} ${Headers})

add_subdirectory(test)