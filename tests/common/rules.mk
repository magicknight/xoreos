# xoreos - A reimplementation of BioWare's Aurora engine
#
# xoreos is the legal property of its developers, whose names
# can be found in the AUTHORS file distributed with this source
# distribution.
#
# xoreos is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 3
# of the License, or (at your option) any later version.
#
# xoreos is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with xoreos. If not, see <http://www.gnu.org/licenses/>.

# Unit tests for the Common namespace.

common_LIBS = \
    $(test_LIBS) \
    src/common/libcommon.la \
    tests/version/libversion.la \
    $(LDADD)

check_PROGRAMS                 += tests/common/test_util
tests_common_test_util_SOURCES  = tests/common/util.cpp
tests_common_test_util_LDADD    = $(common_LIBS)
tests_common_test_util_CXXFLAGS = $(test_CXXFLAGS)

check_PROGRAMS                      += tests/common/test_scopedptr
tests_common_test_scopedptr_SOURCES  = tests/common/scopedptr.cpp
tests_common_test_scopedptr_LDADD    = $(common_LIBS)
tests_common_test_scopedptr_CXXFLAGS = $(test_CXXFLAGS)

check_PROGRAMS                          += tests/common/test_disposableptr
tests_common_test_disposableptr_SOURCES  = tests/common/disposableptr.cpp
tests_common_test_disposableptr_LDADD    = $(common_LIBS)
tests_common_test_disposableptr_CXXFLAGS = $(test_CXXFLAGS)

check_PROGRAMS                    += tests/common/test_ptrlist
tests_common_test_ptrlist_SOURCES  = tests/common/ptrlist.cpp
tests_common_test_ptrlist_LDADD    = $(common_LIBS)
tests_common_test_ptrlist_CXXFLAGS = $(test_CXXFLAGS)

check_PROGRAMS                      += tests/common/test_ptrvector
tests_common_test_ptrvector_SOURCES  = tests/common/ptrvector.cpp
tests_common_test_ptrvector_LDADD    = $(common_LIBS)
tests_common_test_ptrvector_CXXFLAGS = $(test_CXXFLAGS)

check_PROGRAMS                   += tests/common/test_ptrmap
tests_common_test_ptrmap_SOURCES  = tests/common/ptrmap.cpp
tests_common_test_ptrmap_LDADD    = $(common_LIBS)
tests_common_test_ptrmap_CXXFLAGS = $(test_CXXFLAGS)
