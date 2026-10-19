# custom-n8n

Container image of [n8n](https://n8n.io) extended with the tools that media and document
workflows need: Ghostscript, GraphicsMagick, Python 3 with build tools, `git`, `tini` and
`su-exec`.

## Why

The stock n8n image is minimal. Workflows that convert PDF, resize images, or call Python
helpers fail inside it. This image adds the toolchain once, so workflows do not install
packages at runtime.

## Build

```bash
docker build -t custom-n8n .
docker build --build-arg N8N_VERSION=2.36.9 -t custom-n8n:2.36.9 .
```

`N8N_VERSION` is a build argument, so the same Dockerfile pins or upgrades n8n explicitly.

## Run

```bash
docker run --rm -p 5678:5678 \
  -v "$PWD/data:/home/node/.n8n" \
  custom-n8n
```

The container runs as the unprivileged `node` user (uid 1000); the data directory must be
writable by that user.

## Contents

- n8n installed globally from npm, version from `N8N_VERSION`;
- Ghostscript and GraphicsMagick for PDF and image processing;
- Python 3, pip and build essentials for workflow-level scripting;
- `tini` as the entrypoint so n8n handles signals correctly;
- `su-exec` for init scripts.

## License

MIT.
