#############################################################
#
# nginx-rtmp-module
# https://github.com/arut/nginx-rtmp-module/releases/tag/v1.1.10
#############################################################

NGINX_RTMP_MODULE_VERSION = v1.1.10 
NGINX_RTMP_MODULE_SITE = $(call github,arut,nginx-rtmp-module,$(NGINX_RTMP_MODULE_VERSION))
NGINX_RTMP_MODULE_DEPENDENCIES = rtmpdump

$(eval $(generic-package))
