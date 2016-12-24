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

# Unit tests for the Aurora namespace.

aurora_LIBS = \
    $(test_LIBS) \
    src/aurora/libaurora.la \
    src/common/libcommon.la \
    tests/version/libversion.la \
    $(LDADD)

check_PROGRAMS                 += tests/aurora/test_util
tests_aurora_test_util_SOURCES  = tests/aurora/util.cpp
tests_aurora_test_util_LDADD    = $(aurora_LIBS)
tests_aurora_test_util_CXXFLAGS = $(test_CXXFLAGS)

check_PROGRAMS                     += tests/aurora/test_language
tests_aurora_test_language_SOURCES  = tests/aurora/language.cpp
tests_aurora_test_language_LDADD    = $(aurora_LIBS)
tests_aurora_test_language_CXXFLAGS = $(test_CXXFLAGS)

check_PROGRAMS                      += tests/aurora/test_locstring
tests_aurora_test_locstring_SOURCES  = tests/aurora/locstring.cpp
tests_aurora_test_locstring_LDADD    = $(aurora_LIBS)
tests_aurora_test_locstring_CXXFLAGS = $(test_CXXFLAGS)

check_PROGRAMS                    += tests/aurora/test_lytfile
tests_aurora_test_lytfile_SOURCES  = tests/aurora/lytfile.cpp
tests_aurora_test_lytfile_LDADD    = $(aurora_LIBS)
tests_aurora_test_lytfile_CXXFLAGS = $(test_CXXFLAGS)
