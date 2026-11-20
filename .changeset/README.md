# Changesets

This folder is used by [Changesets](https://github.com/changesets/changesets) to manage versioning and releases.

## Adding a changeset

When you make a change that should be released, run:

```bash
npx changeset
```

Commit the generated markdown file in `.changeset/`.

When changes are merged to `main`, the release workflow opens/updates a "Version Packages" PR. Merging that PR bumps `package.json` version, updates `CHANGELOG.md`, creates a git tag, and publishes a GitHub Release.

> Note: Keep `SKILL.md` `metadata.version` in sync with releases when publishing skill updates.
