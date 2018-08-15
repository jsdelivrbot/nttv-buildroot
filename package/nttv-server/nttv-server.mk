################################################################################
#
# nttv-server
#
################################################################################

NTTV_SERVER_VERSION = 5bdd99bdbdf49fee9cfaac1afd66a030b470f525
NTTV_SERVER_SITE_METHOD = git
NTTV_SERVER_SITE = ssh://git@git.kopismobile.org/nttv/software/nttv-server.git
NTTV_SERVER_DEPENDENCIES = zeromq gstreamer1 gstreamermm glibmm protobuf cppzmq gpsd paho-mqtt-cpp
NTTV_SERVER_INSTALL_TARGET = YES


define NTTV_SERVER_COPY_WEB_SERVER
	mkdir -p $(TARGET_DIR)/root/py_web_server/
    cp -r $(@D)/py_web_server/* $(TARGET_DIR)/root/py_web_server/
endef

NTTV_SERVER_POST_INSTALL_TARGET_HOOKS += NTTV_SERVER_COPY_WEB_SERVER

$(eval $(cmake-package))

