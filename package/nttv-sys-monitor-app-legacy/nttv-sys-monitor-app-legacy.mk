################################################################################
#
# nttv-sys-monitor-app-legacy
#
################################################################################

NTTV_SYS_MONITOR_APP_LEGACY_VERSION = master
NTTV_SYS_MONITOR_APP_LEGACY_SITE_METHOD = git
NTTV_SYS_MONITOR_APP_LEGACY_SITE = ssh://git@git.kopismobile.org/nttv/software/nttv-system-monitor-application.git
NTTV_SYS_MONITOR_APP_LEGACY_INSTALL_TARGET = YES

$(eval $(cmake-package))
