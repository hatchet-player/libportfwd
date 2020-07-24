# src build file
#============================================================================


hatchet_inc += include_directories('.')


src_dirs = [
    'miniupnpc'
]


# if (get_option('with_tests'))
#     src_dirs += 'tests'
# endif


foreach dir : src_dirs
    subdir(dir)
endforeach
