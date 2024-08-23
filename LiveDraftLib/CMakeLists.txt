add_library(LiveDraftLib)

add_subdirectory(sqlite3)

target_link_libraries(LiveDraftLib
    sqlite3
)


