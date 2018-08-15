################################################################################
#
# gstreamermm
#
################################################################################

GSTREAMERMM_VERSION_MAJOR = 1.4
GSTREAMERMM_VERSION = $(GSTREAMERMM_VERSION_MAJOR).3
GSTREAMERMM_SOURCE = gstreamermm-$(GSTREAMERMM_VERSION).tar.xz
GSTREAMERMM_SITE = http://ftp.gnome.org/pub/gnome/sources/gstreamermm/$(GSTREAMERMM_VERSION_MAJOR)
GSTREAMERMM_INSTALL_STAGING = YES
GSTREAMERMM_DEPENDENCIES = glibmm libglib2 libsigc libxmlpp gstreamer1 gst1-plugins-good gst1-plugins-base host-pkgconf

# force c++11
GSTREAMERMM_CONF_ENV += CXXFLAGS="$(TARGET_CXXFLAGS) -std=c++11"

$(eval $(autotools-package))
