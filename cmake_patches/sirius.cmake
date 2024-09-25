include(FetchContent)
find_package(sirius_solver QUIET)
set(BUILD_SIRIUS CACHE INTERNAL ON)
if (NOT sirius_solver_FOUND AND BUILD_SIRIUS)
    message("SIRIUS not found, fetching it from github")
FetchContent_Declare(sirius_solver
        GIT_REPOSITORY https://github.com/rte-france/sirius-solver
        GIT_TAG antares-integration-v1.5
        SOURCE_SUBDIR src
        OVERRIDE_FIND_PACKAGE ON
)
FetchContent_MakeAvailable(sirius_solver)
find_package(sirius_solver REQUIRED)
endif ()