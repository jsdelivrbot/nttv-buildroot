#############################################################
#
# python-parse
#
#############################################################

PYTHON_PARSE_VERSION = master
PYTHON_PARSE_SITE    = git://github.com/dgrtwo/ParsePy.git
PYTHON_PARSE_SETUP_TYPE = distutils

$(eval $(python-package))
