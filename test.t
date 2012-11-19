#!/usr/bin/env cram

# This file is part of git-big-picture
#
# Copyright (C) 2012 Valentin Haenel <valentin.haenel@gmx.de>
#
# git-big-picture is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# git-big-piture is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with git-big-picture.  If not, see <http://www.gnu.org/licenses/>.

# Cram (http://pypi.python.org/pypi/cram) tests for git-big-picture

# No repo

  $ git-big-picture
  fatal: '/tmp/cramtests-.{6}/test.t' is probably not a Git repository (re)
  [10]

# create a fake repo

  $ git init -q
  $ git commit -q --allow-empty -m "foo"

# run without options

  $ git-big-picture .
  fatal: Must provide and output option. Try '-h' for more information
  [8]

# run plain

  $ git-big-picture -p
  digraph {
  \t"[0-9a-f]{40}"[label="master", color="/pastel13/2", style=filled]; (re) (esc)
  }


# vim: set syntax=sh :
