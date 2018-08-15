################################################################################
#
# python-gpxpy
#
################################################################################

PYTHON_GPXPY_VERSION = 1.0.0
PYTHON_GPXPY_SOURCE = gpxpy-$(PYTHON_GPXPY_VERSION).tar.gz
# The official Django site has an unpractical URL
PYTHON_GPXPY_SITE = https://pypi.python.org/packages/source/g/gpxpy
PYTHON_GPXPY_LICENSE = Apache
PYTHON_GPXPY_LICENSE_FILES = LICENSE
PYTHON_GPXPY_SETUP_TYPE = distutils

$(eval $(python-package))
