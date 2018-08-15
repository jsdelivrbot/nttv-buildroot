################################################################################
#
# perl-exiftool
#
################################################################################

PERL_EXIFTOOL_VERSION = 10.00
PERL_EXIFTOOL_SOURCE = Image-ExifTool-$(PERL_EXIFTOOL_VERSION).tar.gz
PERL_EXIFTOOL_SITE = $(BR2_CPAN_MIRROR)/authors/id/E/EX/EXIFTOOL
PERL_EXIFTOOL_DEPENDENCIES = perl


$(eval $(perl-package))
