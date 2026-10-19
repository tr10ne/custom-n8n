# Changelog

All notable changes to this project are documented here.
Format: [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).
Versioning: [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.3] - 2026-10-19

### Changed
- n8n updated to 2.43.8.

## [1.0.2] - 2026-10-19

### Changed
- Default `N8N_VERSION` raised to 2.41.6 so the published image matches the running
  instance; the previous default would have deployed an older n8n.

## [1.0.1] - 2026-10-19

### Changed
- Repository renamed to `n8n-media-toolkit`: the name now says what the image adds —
  the media toolchain for PDF and image workflows.

## [1.0.0] - 2026-10-19

First release.

### Added
- n8n image built from npm with the version pinned by the `N8N_VERSION` build argument.
- Media and document toolchain: Ghostscript, GraphicsMagick, Python 3 with build tools.
- `tini` as entrypoint and `su-exec` for init scripts; the container runs as `node`.
