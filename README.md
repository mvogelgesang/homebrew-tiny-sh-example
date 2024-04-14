# Homebrew Tiny Shell Script Example

A tiny shell script that is installable via homebrew. Given a GitHub username, returns the number of public repositories.

## Goals

- Create a simple shell script that can be installed via homebrew and run using the alias `tiny-sh-example`
- Utilize one or more dependencies to ensure they get installed correctly
- Document any missteps or gotchas along the way

## Releasing Updates

`git tag -a {versionNumber} -m {message}`
`git push origin {versionNumber}`

Go to https://github.com/mvogelgesang/homebrew-tiny-sh-example/releases. 
Create new release, auto generate release notes.
Copy link to tar.gz source code

## Getting Started

`HOMEBREW_NO_INSTALL_FROM_API=1`
`brew tap --force homebrew/core`
`brew create https://github.com/mvogelgesang/homebrew-tiny-sh-example/archive/refs/tags/v0.0.1.tar.gz`

Copy contents of file into `Formula/tiny-sh-example.sh`
