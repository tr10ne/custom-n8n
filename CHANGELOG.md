# Changelog

All notable changes to this project are documented here.
Format: [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).
Versioning: [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.0] - 2026-10-19

First release.

### Added
- n8n image built from npm with the version pinned by the `N8N_VERSION` build argument.
- Media and document toolchain: Ghostscript, GraphicsMagick, Python 3 with build tools.
- `tini` as entrypoint and `su-exec` for init scripts; the container runs as `node`.
