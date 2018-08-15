################################################################################
#
# nttv-sys-monitor-app-v3
#
################################################################################

NTTV_SYS_MONITOR_APP_V3_VERSION = master
NTTV_SYS_MONITOR_APP_V3_SITE_METHOD = git
NTTV_SYS_MONITOR_APP_V3_SITE = ssh://git@git.kopismobile.org/nttv/software/nttv-system-monitor-application-v3.git
NTTV_SYS_MONITOR_APP_V3_INSTALL_TARGET = YES
NTTV_SYS_MONITOR_APP_V3_DEPENDENCIES = protobuf zeromq

$(eval $(cmake-package))
