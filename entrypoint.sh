#!/bin/bash

hub checkout ${${REPO_BRANCH}:-master}
VERSION_NAME=`grep -oP 'versionName = "\K(.*?)(?=")' ./${APP_FOLDER}/build.gradle.kts`
hub release create -a ./${APP_FOLDER}/build/outputs/apk/debug/*-debug.apk -m "${RELEASE_TITLE} - v${VERSION_NAME}" $(date +%Y%m%d%H%M%S)
