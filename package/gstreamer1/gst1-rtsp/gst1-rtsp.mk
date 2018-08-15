################################################################################
#
# gst1-rtsp
#
################################################################################

GST1_RTSP_VERSION = $(GSTREAMER1_VERSION)
GST1_RTSP_SOURCE = gst-rtsp-server-$(GST1_RTSP_VERSION).tar.xz
GST1_RTSP_SITE = http://gstreamer.freedesktop.org/src/gst-rtsp-server
GST1_RTSP_LICENSE = LGPLv2+
GST1_RTSP_LICENSE_FILES = COPYING COPYING.LIB
GST1_RTSP_INSTALL_STAGING = YES
GST1_RTSP_DEPENDENCIES = \
	host-pkgconf \
	gstreamer1 \
	gst1-plugins-base \
	gst1-plugins-good

ifeq ($(BR2_PACKAGE_LIBCGROUP),y)
GST1_RTSP_DEPENDENCIES += libcgroup
endif

ifeq ($(BR2_PACKAGE_GST1_PLUGINS_BAD),y)
GST1_RTSP_DEPENDENCIES += gst1-plugins-bad
endif

define GST1_RTSP_MOVE_TEST_LAUNCH
	mv $(@D)/examples/test-launch $(TARGET_DIR)/bin/
	mv $(@D)/examples/test-auth $(TARGET_DIR)/bin/
endef

GST1_RTSP_POST_INSTALL_TARGET_HOOKS += GST1_RTSP_MOVE_TEST_LAUNCH

$(eval $(autotools-package))
