# thirdparty.miniupnpc build file
#============================================================================

# dependencies
#============================================================================


miniupnpc_dep_list = [
    qt5_dep]


# src files
#============================================================================


miniupnpc_src_dir = join_paths(meson.source_root(), 'thirdparty/miniupnpc-1.6')
miniupnpc_inc = include_directories('.')


miniupnpc_src = files(
    join_paths(miniupnpc_src_dir, 'connecthostport.c'),
    join_paths(miniupnpc_src_dir, 'igd_desc_parse.c'),
    join_paths(miniupnpc_src_dir, 'minisoap.c'),
    join_paths(miniupnpc_src_dir, 'minissdpc.c'),
    join_paths(miniupnpc_src_dir, 'miniupnpc.c'),
    join_paths(miniupnpc_src_dir, 'miniwget.c'),
    join_paths(miniupnpc_src_dir, 'minixml.c'),
    join_paths(miniupnpc_src_dir, 'minixmlvalid.c'),
    join_paths(miniupnpc_src_dir, 'portlistingparse.c'),
    join_paths(miniupnpc_src_dir, 'receivedata.c'),
    join_paths(miniupnpc_src_dir, 'upnpcommands.c'),
    join_paths(miniupnpc_src_dir, 'upnperrors.c'),
    join_paths(miniupnpc_src_dir, 'upnpreplyparse.c'))

    # contains main() like upnp.c, so building a shared lib fails
    # join_paths(miniupnpc_src_dir, '#${MINIUPNP_DIR}/minixmlvalid.c 
    # join_paths(miniupnpc_src_dir, '#${MINIUPNP_DIR}/upnpc.c



# Link args
#============================================================================


miniupnpc_link_list = []

miniupnpc_link_args = []


# build
#============================================================================


miniupnpc_lib = library(
    'miniupnpc',
    install : true,
    install_mode : 'rwxr-xr-x',
    install_dir : libdir,
    include_directories : miniupnpc_inc,
    sources : miniupnpc_src,
    link_with : miniupnpc_link_list,
    link_args : miniupnpc_link_args,
    dependencies : miniupnpc_dep_list)


miniupnpc_dep = declare_dependency(
    link_with : miniupnpc_lib,
    include_directories : include_directories('.'))