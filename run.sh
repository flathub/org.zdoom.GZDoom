#!/usr/bin/env bash

clear
flatpak-builder --repo=testing-repo --force-clean build-dir org.zdoom.GZDoom.yaml
flatpak --user remote-add --if-not-exists --no-gpg-verify gzd-testing-repo testing-repo
flatpak --user install gzd-testing-repo org.zdoom.GZDoom -y
flatpak --user install gzd-testing-repo org.zdoom.GZDoom.Debug -y
flatpak update -y
