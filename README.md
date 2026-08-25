# colorscheme-webify

some small CSS files you can import to make your website catppuccin frappe themed

there are 2 versions of the project: the default version with only the colors (`/src/colorv/`) and there is a
version with the colors, margins and font included (`/src/fullv/`)

because color schemes doesn't have a default font this project is gonna use DepartureMonoNerdFont or
AwaitaMonoNerdFont, you can choose another font. Nerd Fonts are great because they have the most icons
(https://www.nerdfonts.com/), and their open-source + free to use

# setup

dependencies: Lua 5.1+
run the dependency install script for your os

clone the GitHub repo: `git clone https://www.github.com/wak6817/colorscheme-webify.git` open a shell in the root
folder of the project and run `lua run.lua`, choose color version for only the color stylesheet or choose full
version for the colors, fonts and margins

copy the `colorv.css` file, `modernv.css` or `pixelv` + `clickbtn` version to your project and assign it
to every HTML file, it will overwrite all your non-!important CSS attributes automatically

# api

there are 3 classes that you can use in your website: error, warning and success. they will color the text of your HTML tag

# demo

before (Catppuccin Frappe):
![img.png](/demo/before.png)

after:
![img_1.png](demo/after.png)
