message(">> BINDLE @ ${CMAKE_CURRENT_SOURCE_DIR}")

add_executable(bindle)

target_sources(bindle
PRIVATE
    bindle.cpp
)

