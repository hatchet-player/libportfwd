# miniupnpc build file
#============================================================================


# check if miniupnpc is already installed
#---------------------------------------------------
miniupnpc_dep = dependency('miniupnpc', required : false)


# If not, include the submodule
#---------------------------------------------------
if not miniupnpc_dep.found()
  miniupnpc_proj = subproject('miniupnpc')
  miniupnpc_dep = declare_dependency(
    link_with : miniupnpc_proj.get_variable('miniupnpc_lib'),
    include_directories : miniupnpc_proj.get_variable('miniupnpc_inc'))
endif


# Set HAVE_MINIUPNPC in config.h
#---------------------------------------------------
config_h.set(
    'HAVE_MINIUPNPC',
    miniupnpc_dep.found(),
    description : '')