#!/bin/sh

build_static_lib() {
  local PROJECT=$1
  local TARGET=$2
  local OVERRIDE_CONFIG=$3
  xcodebuild \
    -project ${PROJECT} \
    -target ${TARGET} \
    -xcconfig ${OVERRIDE_CONFIG} \
    -configuration ${CONFIGURATION} \
    -sdk ${PLATFORM_NAME} \
    BUILD_DIR="${BUILD_DIR}" \
    TARGET_BUILD_DIR="${TARGET_BUILD_DIR}" \
    ARCHS="${ARCHS}" \
    build
}

build_static_lib $1 $2 $3
