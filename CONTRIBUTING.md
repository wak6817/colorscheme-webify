# CONTRIBUTING.md

this project is a small css theme generator for websites and apps. it turns palette definitions into ready-to-use stylesheet files that can be copied into your own project.

## project overview

colorscheme-webify is built around a few simple ideas:

- define a color palette once
- combine it with layout styles and fonts
- generate a version for your app
- copy the resulting css and assets into another project

the repository contains these main sections:

- src/: the generated source css for each palette and version
- build/: the scripts used to assemble the final dist files
- demo/: sample pages for previewing the themes
- fonts/: font files used by the modern and pixel versions
- icons/: svg icon assets
- sounds/: sound files used by some builds
- tests/: small html check pages for testing themes and assets
- scripts/: helper scripts for generation and setup

## dependencies

this project expects the following tools to be installed:

- Lua 5.1+
- Python 3

if you are on linux or macos, you can use the shell scripts in the scripts folder. if you are on Windows, use WSL for the build flow.

## clone and run

```sh
git clone https://github.com/wak6817/colorscheme-webify.git
cd colorscheme-webify
python3 scripts/run.py
```

when the script runs, it asks which palette and version you want to build.

## palette choices

this project includes a few color families:

- catppuccin
  - latte
  - frappe
  - macchiato
  - mocha
- dracula
  - dracula
  - alucard
- nord

the palette folder names are kept in lowercase because they match the generated theme names.

## version choices

there are three output styles:

- colorv: color-only css
- modernv: colors, fonts, and spacing
- pixelv: pixel-inspired styling with fonts and spacing

the generated file is created under the build/dist folder.

example output:

```text
build/dist/dracula/modernv/style.css
build/dist/nord/pixelv/style.css
build/dist/cmocha/colorv/style.css
```

## what gets generated

the build scripts concatenate several css pieces into one final stylesheet. for example:

- color palette variables
- text styles
- interaction styles
- layout spacing
- fonts and margin rules for the modern and pixel versions

some versions also copy sound and icon assets into the dist folder so the theme still works when moved into another app.

## how to use the result in a project

after building the project, copy the generated files into another website or app.

for example:

```sh
cp build/dist/dracula/modernv/style.css /path/to/your/project/styles/
cp -r build/dist/dracula/modernv/assets /path/to/your/project/assets/
```

then include the css in your html:

```html
<link rel="stylesheet" href="./styles/style.css" />
```

if you use the modern or pixel version, keep the generated assets folder with the css file. the font urls and sound paths are relative to that structure.

## css structure and theme usage

this project is designed so that the generated files can be used as a full theme layer. each palette folder contains the source pieces that define the color variables and default styling.

in your own project, you can:

- use the generated css as-is
- override certain variables in your own stylesheet
- mix theme colors with your own app styles

the project is meant to be a foundation, not a final app design. your project can build on top of it without changing the upstream theme files.

## fonts

because not every palette includes a default font, the project uses nerd fonts for the generated styles. the modern version and the pixel version rely on font files in the fonts folder.

nerd fonts are useful here because they include many icons and work well for code, terminals, and ui mockups. the project also supports swapping the font later if you want another monospace family.

## sound files

some generated themes include sound assets, such as click effects. the build script copies the matching files into the dist folder. when you move the project to another app, keep the audio files with the generated css and script references.

## testing

there are small html files in the tests folder for checking output visually. they are useful for verifying that the theme and its related assets render correctly.

examples include:

- api html checks
- interaction checks
- text checks
- template checks
- icon checks

this is useful when developing new palettes or adjusting generated css.

## contribution flow

if you want to contribute:

1. create a branch
2. update or add the relevant source files
3. build the theme locally
4. verify the output in the tests or demo pages
5. submit a pull request

please keep changes focused and easy to review.

## notes

- this project is mostly a build and theme-generation repo
- styles are designed to be copied into other projects
- the generated output should stay in a folder structure that matches the asset paths
- if you change the font or sound references, keep those changes consistent across the generated files

for a quick setup and usage walkthrough, see `README.md`.
