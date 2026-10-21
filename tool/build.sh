#!/usr/bin/env bash
set -euo pipefail
echo "starting the build process"

echo "generating flutter_feather_icons.dart file"
dart run ./tool/generate_fonts.dart ./fonts/icons.json

echo "formatting flutter_feather_icons.dart file"
dart format lib tool test -l 120

echo "build process completed successfully"
