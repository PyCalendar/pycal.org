# pycal.org

Source for [pycal.org](https://pycal.org) — the Python Calendaring Ecosystem website. Built with [Jekyll](https://jekyllrb.com/).

## Prerequisites

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/) 3.3+ with its development headers (`ruby-dev` on Debian and Ubuntu)
- [pre-commit](https://pre-commit.com/)

## Setup

```sh
make dev
```

This installs [Bundler](https://bundler.io/) if it is missing, the gems into `vendor/bundle/`, and the pre-commit hooks.

## Local development

```sh
make livehtml
```

Open <http://localhost:4000>. The page reloads when you save a change.
Run `make help` for the other targets.

## Deployment

Pushes to `main` are automatically built and deployed to GitHub Pages.
