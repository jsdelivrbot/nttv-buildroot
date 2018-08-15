################################################################################
#
# paho-mqtt-cpp
#
################################################################################

PAHO_MQTT_CPP_VERSION = v1.0.0
PAHO_MQTT_CPP_SITE = $(call github,eclipse,paho.mqtt.cpp,$(PAHO_MQTT_CPP_VERSION))
PAHO_MQTT_CPP_LICENSE = EPL-1.0 or BSD-3-Clause
PAHO_MQTT_CPP_LICENSE_FILES = epl-v10 edl-v10
PAHO_MQTT_CPP_DEPENDENCIES = paho-mqtt-c
PAHO_MQTT_CPP_INSTALL_TARGET = YES
PAHO_MQTT_CPP_INSTALL_STAGING = YES

ifeq ($(BR2_PACKAGE_OPENSSL),y)
PAHO_MQTT_CPP_DEPENDENCIES += openssl
PAHO_MQTT_CPP_CONF_OPTS += -DPAHO_WITH_SSL=TRUE
else
PAHO_MQTT_CPP_CONF_OPTS += -DPAHO_WITH_SSL=FALSE
endif

#PAHO_MQTT_CPP_CONF_OPTS += -DPAHO_MQTT_C_PATH=

$(eval $(cmake-package))
