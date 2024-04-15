# Homebrew Tiny Shell Script Example

A tiny shell script that is installable via homebrew. Given a GitHub username, returns the number of public repositories.

- [Homebrew Tiny Shell Script Example](#homebrew-tiny-shell-script-example)
  - [Goals](#goals)
  - [Initial Executable Version](#initial-executable-version)
  - [Updating](#updating)


## Goals

- Create a simple shell script that can be installed via homebrew and run using the alias `tiny-sh-example`
- Utilize one or more dependencies to ensure they get installed correctly
- Document any missteps or gotchas along the way

## Initial Executable Version

`mkdir homebrew-tiny-sh-example`
`mkdir src/`
`touch README.md`
`touch src/run.sh`
`git init`
`git add -A`
`git commit -m "initial commit"`
`git push origin main`
`git tag -a v0.0.1 -m "0.0.1"`
`git push origin v0.0.1`

Go to https://github.com/mvogelgesang/homebrew-tiny-sh-example/releases. 
Create new release, auto generate release notes.
Copy link to tar.gz source code

`HOMEBREW_NO_INSTALL_FROM_API=1`
`brew tap --force homebrew/core`
`brew create https://github.com/mvogelgesang/homebrew-tiny-sh-example/archive/refs/tags/v0.0.1.tar.gz`

Copy contents of file into `Formula/tiny-sh-example.sh`

`git add -A`
`git commit -m "Added formula"`
`git push origin main`

Let's try tapping the formula and installing it

`brew tap mvogelgesang/tiny-sh-example`

    ==> Tapping mvogelgesang/tiny-sh-example
    Cloning into '/opt/homebrew/Library/Taps/mvogelgesang/    homebrew-tiny-sh-example'...
    remote: Enumerating objects: 11, done.
    remote: Counting objects: 100% (11/11), done.
    remote: Compressing objects: 100% (9/9), done.
    remote: Total 11 (delta 1), reused 10 (delta 0), pack-reused 0
    Receiving objects: 100% (11/11), done.
    Resolving deltas: 100% (1/1), done.
    Tapped 1 formula (14 files, 10KB).

`brew install tiny-sh-example`

    ==> Fetching dependencies for mvogelgesang/tiny-sh-example/tiny-sh-example: oniguruma and jq
    ==> Fetching oniguruma
    ==> Downloading https://ghcr.io/v2/homebrew/core/oniguruma/    manifests/6.9.9
    #################################################### 100.0%
    ==> Downloading https://ghcr.io/v2/homebrew/core/oniguruma/blobs/    sha256:53913ccbdad8ce504d0266fc20a867f2fc306d7331d066f2895f48d1671    02a24
    #################################################### 100.0%
    ==> Fetching jq
    ==> Downloading https://ghcr.io/v2/homebrew/core/jq/manifests/1.7.    1
    #################################################### 100.0%
    ==> Downloading https://ghcr.io/v2/homebrew/core/jq/blobs/    sha256:07bc9081c0fdb43aca089e5839f6a270fc45ca9aa7d7633e16fac0fdfe4    c4ad8
    #################################################### 100.0%
    ==> Fetching mvogelgesang/tiny-sh-example/tiny-sh-example
    ==> Downloading https://github.com/mvogelgesang/    homebrew-tiny-sh-example/archive/refs/tags/v0.0.1.tar.gz
    Already downloaded: /Users/vogelgesang/Library/Caches/Homebrew/    downloads/    c2c769a9827904fafb8bb380747b228786036760ad3c7e410a138910d9193d27--    homebrew-tiny-sh-example-0.0.1.tar.gz
    ==> Installing tiny-sh-example from mvogelgesang/tiny-sh-example
    ==> Installing dependencies for mvogelgesang/tiny-sh-example/    tiny-sh-example: oniguruma and jq
    ==> Installing mvogelgesang/tiny-sh-example/tiny-sh-example     dependency: oniguruma
    ==> Downloading https://ghcr.io/v2/homebrew/core/oniguruma/    manifests/6.9.9
    Already downloaded: /Users/vogelgesang/Library/Caches/Homebrew/    downloads/    35140c4d3995b75388bed026ef6d0acbb4d6076047cdcd895bfd996c0c8d6487--    oniguruma-6.9.9.bottle_manifest.json
    ==> Pouring oniguruma--6.9.9.arm64_sonoma.bottle.tar.gz
    🍺  /opt/homebrew/Cellar/oniguruma/6.9.9: 14 files, 1.4MB
    ==> Installing mvogelgesang/tiny-sh-example/tiny-sh-example     dependency: jq
    ==> Downloading https://ghcr.io/v2/homebrew/core/jq/manifests/1.7.    1
    Already downloaded: /Users/vogelgesang/Library/Caches/Homebrew/    downloads/    14ea65c5fc62c8bfce4e240eabff95e77c7d3cf2a3ba6db78deb65b739774ff4--    jq-1.7.1.bottle_manifest.json
    ==> Pouring jq--1.7.1.arm64_sonoma.bottle.tar.gz
    🍺  /opt/homebrew/Cellar/jq/1.7.1: 19 files, 1.4MB
    ==> Installing mvogelgesang/tiny-sh-example/tiny-sh-example
    🍺  /opt/homebrew/Cellar/tiny-sh-example/0.0.1: 4 files, 3.9KB,     built in 1 second
    ==> Running `brew cleanup tiny-sh-example`...
    Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
    Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).

Try running it

`tiny-sh-example`

    Enter your GitHub username: mvogelgesang
    103

## Updating

Make changes to the code, readme, etc. Commit and push to `main`
Create tag `git tag -a {versionNumber} -m {versionNumber}` push to main
Create new release from tag
Copy tarball link, update Formula
Fetch SHA-256 using tarball link

`curl -L {tarballLink} | shasum -a 256`

Update Formula sha256

Commit all formula changes and push to main

`brew update`
`brew upgrade tiny-sh-example`
