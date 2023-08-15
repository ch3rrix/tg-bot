cmake_minimum_required(VERSION 3.0.0)
project(tg-bot VERSION 0.1.0)

aux_source_directory(src SOURCES)
include_directories(include)

add_executable(tg-bot ${SOURCES})
