# libportfwd build file
#============================================================================


# src files
#============================================================================


libportfwd_src_dir = meson.current_source_dir()
libportfwd_inc += include_directories('.')

libportfwd_src = files(
    join_paths(libportfwd_src_dir, 'main.cpp'),
    join_paths(libportfwd_src_dir, 'portfwd.cpp'))

libportfwd_dep_list = [
    miniupnpc_dep,
    qt5_dep]

# Link args
#============================================================================


libportfwd_link_list = []

libportfwd_link_args = []


# build
#============================================================================


libportfwd_lib = library(
    'portfwd',
    install : true,
    install_mode : 'rwxr-xr-x',
    install_dir : libdir,
    include_directories : libportfwd_inc,
    sources : libportfwd_src,
    link_with : libportfwd_link_list,
    link_args : libportfwd_link_args,
    dependencies : libportfwd_dep_list)

libportfwd_bin = executable(
    'portfwd-demo',
    install : true,
    install_mode : 'rwxr-xr-x',
    install_dir : bindir,
    include_directories : libportfwd_inc,
    sources : libportfwd_src,
    link_with : libportfwd_lib,
    dependencies : libportfwd_dep_list)


libportfwd_dep = declare_dependency(
    link_with : libportfwd_lib,
    include_directories : libportfwd_inc)
