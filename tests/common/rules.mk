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

check_PROGRAMS                    += tests/common/test_ustring
tests_common_test_ustring_SOURCES  = tests/common/ustring.cpp
tests_common_test_ustring_LDADD    = $(common_LIBS)
tests_common_test_ustring_CXXFLAGS = $(test_CXXFLAGS)

check_PROGRAMS                    += tests/common/test_strutil
tests_common_test_strutil_SOURCES  = tests/common/strutil.cpp
tests_common_test_strutil_LDADD    = $(common_LIBS)
tests_common_test_strutil_CXXFLAGS = $(test_CXXFLAGS)

check_PROGRAMS                      += tests/common/test_binsearch
tests_common_test_binsearch_SOURCES  = tests/common/binsearch.cpp
tests_common_test_binsearch_LDADD    = $(common_LIBS)
tests_common_test_binsearch_CXXFLAGS = $(test_CXXFLAGS)

check_PROGRAMS                     += tests/common/test_datetime
tests_common_test_datetime_SOURCES  = tests/common/datetime.cpp
tests_common_test_datetime_LDADD    = $(common_LIBS)
tests_common_test_datetime_CXXFLAGS = $(test_CXXFLAGS)

check_PROGRAMS                          += tests/common/test_memreadstream
tests_common_test_memreadstream_SOURCES  = tests/common/memreadstream.cpp
tests_common_test_memreadstream_LDADD    = $(common_LIBS)
tests_common_test_memreadstream_CXXFLAGS = $(test_CXXFLAGS)

check_PROGRAMS                           += tests/common/test_memwritestream
tests_common_test_memwritestream_SOURCES  = tests/common/memwritestream.cpp
tests_common_test_memwritestream_LDADD    = $(common_LIBS)
tests_common_test_memwritestream_CXXFLAGS = $(test_CXXFLAGS)

check_PROGRAMS                     += tests/common/test_readfile
tests_common_test_readfile_SOURCES  = tests/common/readfile.cpp
tests_common_test_readfile_LDADD    = $(common_LIBS)
tests_common_test_readfile_CXXFLAGS = $(test_CXXFLAGS)

check_PROGRAMS                      += tests/common/test_writefile
tests_common_test_writefile_SOURCES  = tests/common/writefile.cpp
tests_common_test_writefile_LDADD    = $(common_LIBS)
tests_common_test_writefile_CXXFLAGS = $(test_CXXFLAGS)

check_PROGRAMS                      += tests/common/test_bitstream
tests_common_test_bitstream_SOURCES  = tests/common/bitstream.cpp
tests_common_test_bitstream_LDADD    = $(common_LIBS)
tests_common_test_bitstream_CXXFLAGS = $(test_CXXFLAGS)
