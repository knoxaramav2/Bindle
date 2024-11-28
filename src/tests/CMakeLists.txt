message(">> TESTS @ ${CMAKE_CURRENT_SOURCE_DIR}")

add_executable(installer_tests)

target_sources(installer_tests
PRIVATE
    testGroups.cpp
)
