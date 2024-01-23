# deadcode Checker GitHub Action

A Github Action for checking unused code fragments in Golang projects.

## Usage

Create a new GitHub Actions workflow in your project, e.g. at [.github/workflows/deadcode-check.yml](.github/workflows/deadcode-check.yml)

```yaml
name: Deadcode Check

on:
  push:
  pull_request:
    branches: 'main'

jobs:
  commit-check:
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@v3
    - name: Test deadcode
      uses: ahmet/go-deadcode-checker@v1
        with:
          directory: .
```

## Optional Inputs

### `directory`

- **Description**: path to run checks on.
- Default: '.'

## Versioning

Versioning follows [Semantic Versioning](https://semver.org/).

## Have question or feedback?

To provide feedback (requesting a feature or reporting a bug) please post to [issues](https://github.com/ahmet/go-deadcode-checker/issues).
