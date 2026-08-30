# README.md

[subreddit](https://www.reddit.com/r/colorscheme_webify/)
[my reddit posts](https://www.reddit.com/user/Special-Lawyer-7069/submitted/)

this project gives you ready-made css themes for websites. it lets you build a color palette, add fonts and spacing, and then copy the generated stylesheet into your own app or site.

this is meant to be used as a theme source, not as a project you edit in place. the usual flow is:

1. clone the project
2. generate the css you want
3. copy the build output into your project
4. include the stylesheet in your html

## install

you need Lua and Python installed on your machine.

```sh
git clone https://github.com/wak6817/colorscheme-webify.git
cd colorscheme-webify
```

then run the build script from the project root:

```sh
lua scripts/run.lua
```

this will ask which palette you want and which version to generate.

## choose a palette

the project includes these palettes:

- catppuccin
- dracula
- nord

within catppuccin, you can choose:

- latte
- frappe
- macchiato
- mocha

within dracula, you can choose:

- dracula
- alucard

## choose a version

there are three generated styles:

- colorv: colors only
- modernv: colors + fonts + spacing
- pixelv: colors + pixel-style fonts + spacing

if you want all versions for one theme, choose the full option. if you only want one file, choose just that version.

## build output

after running the script, the generated files are placed in the build folder.

example paths:

```text
build/dist/dracula/modernv/style.css
build/dist/nord/pixelv/style.css
build/dist/cmocha/colorv/style.css
```

some versions also copy their sound assets and icon files into the same dist folder.

## use in your own project

copy the generated css file to your website or app.

for example, if you want to use dracula modern:

```sh
cp build/dist/dracula/modernv/style.css /path/to/your/project/styles/
```

then load it in your html:

```html
<link rel="stylesheet" href="./styles/style.css" />
```

if you use a modernv or pixelv build, also copy the related assets folder into your app so the project can find the fonts and sounds.

```text
build/dist/dracula/modernv/
  style.css
  sound.js
  assets/
```

you can then keep the same relative structure in your project.

## include the theme in html

this is the basic pattern:

```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>my app</title>
    <link rel="stylesheet" href="./styles/style.css" />
  </head>
  <body>
    <h1>hello</h1>
    <button>click me</button>
  </body>
</html>
```

## using sound assets

the modernv and pixelv includes a sound file, copy the matching folder into your project and reference the script as needed:

```html
<script src="./assets/sound.js"></script>
```

if you are using a pixel version, keep the fonts and assets together so the paths still resolve correctly.

## fonts and nerdfonts

this project uses nerdfont files for icons and monospace styling. the font files live in the fonts folder and are referenced by the generated css.

if you want a different font, you can replace the font urls in the generated css or supply your own font files.

## quick example

```sh
git clone https://github.com/wak6817/colorscheme-webify.git
cd colorscheme-webify
lua scripts/run.lua
```

choose:

- dracula
- modernv

then copy:

```text
build/dist/dracula/modernv/style.css
```

into your app and load it with:

```html
<link rel="stylesheet" href="./styles/style.css" />
```

that is all you need to start using the theme in a custom project.

## notes

- keep the compiled css and asset folder together
- modernv and pixelv depend on bundled font and asset files
- colorv is the smallest option if you only need colors

## demo

[before](/demo/before.png)
[after](/demo/after.png)
[used imports](/demo/used-imports.png)

for more project details, see `CONTRIBUTING.md`.
