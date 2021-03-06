#!/bin/bash

#   ***************************************************************************
#     build-all.sh - builds android QGIS
#      --------------------------------------
#      Date                 : 01-Jun-2011
#      Copyright            : (C) 2011 by Marco Bernasocchi
#      Email                : marco at bernawebdesign.ch
#   ***************************************************************************
#   *                                                                         *
#   *   This program is free software; you can redistribute it and/or modify  *
#   *   it under the terms of the GNU General Public License as published by  *
#   *   the Free Software Foundation; either version 2 of the License, or     *
#   *   (at your option) any later version.                                   *
#   *                                                                         *
#   ***************************************************************************/


set -e
#######Load config#######
source `dirname $0`/config.conf
$SCRIPT_DIR/build-qgis-and-apk.sh
$SCRIPT_DIR/install-apk.sh
$SCRIPT_DIR/debug-apk.sh

