#!/bin/bash

infer run \
    -- xcodebuild clean build \
        -project fbinfer-memoryleak.xcodeproj \
        -scheme fbinfer-memoryleak \
        -sdk iphonesimulator