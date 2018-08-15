################################################################################
#
# iperf3
#
################################################################################

IPERF3_VERSION = 499a6d8142ddcada52fbd7f62ab3259afd1e2eb1
IPERF3_SITE = $(call github,dmdailey,iperf,$(IPERF3_VERSION))
IPERF3_LICENSE = BSD-3c, BSD-2c, MIT
IPERF3_LICENSE_FILES = LICENSE

$(eval $(autotools-package))
