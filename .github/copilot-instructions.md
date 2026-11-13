# Instructions for coding agents

This is the Jekyll source for [pycal.org](https://pycal.org). See [README.md](../README.md) to build and run it. Changes must match the site's existing design.

## Content

- Packages, team members, standards and footer links live in `_data/*.yml`, and the pages loop over them. Add a field or an item there and extend the loop. Don't hard-code a one-off element in a template.
- Footer links go in `_data/footer_nav.yml`. Use the optional `rel` field for values like `me`.

## Styling

- All styles live in `assets/css/style.css`. Use the tokens in `:root` for colors and fonts, never raw values.
- Give every new element a class styled like its neighbors. For a new sibling of an existing element, add its class to the existing selector list. An unstyled `<a>` picks up the teal accent and looks out of place.
- No inline `style=` attributes, and no new stylesheets, fonts or frameworks.
- Don't load images or scripts from other domains. Save them under `assets/`.

## Markup

- Build headings with `{% include heading.html title="..." %}`. Other pages link to their anchors, so don't rename headings casually.
- Pages use `layout: page` with `title`, `hero_sub` and `description` front matter.
- External links use `target="_blank" rel="noopener"`.
- Link to pages and files on this site with `relative_url`, for example `{{ '/software' | relative_url }}`, never a bare `/software`. Pull request previews are served under a path, and bare links break there.

## Before opening a PR

- `bundle exec jekyll build` must succeed.
- Check the changed page at desktop width and at 640px.
- Follow the [AI policy](https://pycal.org/ai-policy/).
