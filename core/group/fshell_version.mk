# fshell_version.mk
# 
# Copyright (c) 2010 Accenture. All rights reserved.
# This component and the accompanying materials are made available
# under the terms of the "Eclipse Public License v1.0"
# which accompanies this distribution, and is available
# at the URL "http://www.eclipse.org/legal/epl-v10.html".
# 
# Initial Contributors:
# Accenture - Initial contribution
#
GENERATED_SOURCE_DIR = $(EPOCROOT)epoc32\build\fshell\core\generated
GENERATED_SOURCE = $(GENERATED_SOURCE_DIR)\fshell_version.cpp

MAKMAKE :
	perl -S emkdir.pl $(GENERATED_SOURCE_DIR)
	echo perl .\genver.pl $(PLATFORM) $(CFG)
	perl .\genver.pl $(PLATFORM) > $(GENERATED_SOURCE)

CLEAN :
	perl -S ermdir.pl $(GENERATED_SOURCE_DIR)

BLD FREEZE LIB CLEANLIB RESOURCE SAVESPACE RELEASABLES FINAL : 
