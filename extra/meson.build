# libportfwd Extra Build File
#============================================================================

extra_dir = meson.current_source_dir()

# build config.h
#---------------------------------------------------
config_h = configure_file(
    input : 'Config.h.in',
    output : 'Config.h',
    configuration : config_h)


# install headers
#---------------------------------------------------
install_headers(
    config_h,
    install_dir : join_paths(includedir, 'portfwd'))


# include directories
#============================================================================

libportfwd_inc += include_directories('.')

# extra_dirs = [
#     'admin',
#     'lang']

# foreach dir : extra_dirs
#     subdir(dir)
# endforeach

