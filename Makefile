# Copyright (C) 2014 Free Software Foundation, Inc.
# This Makefile is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.

srcdir = .
top_srcdir = .

DIST_COMMON = README Recipe.of.eggs \
	config/config.eggs config/config.microwave \
	config/install-plate

RECURSIVE_TARGETS = wash_eggs check_eggs check_skillet \
	pour_oil crack_eggs flat_egg try_salt mk_fried_eggs

wash_eggs:
	clear eggs

check_eggs:
	test eggs

check_skillet:
	test skillet

pour_oil:
	select `oil bottle`; do $(pour the oil into the skillet); done > fried.eggs

crack_eggs:
	test chack eggs > fried.eggs

flat_egg:
	select eggs; do $(pour the contents of the egg onto the skillet); done > fried.eggs

try_salt:

mk_fried_eggs:
	echo 'success' > fried.eggs

clean:
	-rm -f skillet fried.eggs

fried: $(RECURSIVE_TARGETS)
