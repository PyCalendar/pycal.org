# pycal.org

Source for [pycal.org](https://pycal.org) — the Python Calendaring Ecosystem website. Built with [Jekyll](https://jekyllrb.com/).

## Prerequisites

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/) 3.4+
- [Bundler](https://bundler.io/)
- [pre-commit](https://pre-commit.com/)

## Setup

```sh
bundle install
pre-commit install
```

## Local development

```sh
bundle exec jekyll serve --livereload
```

Open <http://localhost:4000>.

## Deployment

Pushes to `main` are automatically built and deployed to GitHub Pages.

Read the Docs builds a preview of every pull request (see `.readthedocs.yaml`). The pull request's checks link to it.
