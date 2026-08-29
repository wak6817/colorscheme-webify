local is_windows = package.config:sub(1, 1) == "\\"

local function build(script)
  if is_windows then
    local windows_script = script
        :gsub("/unix/", "/windows/")
        :gsub("%.sh$", ".bat")

    os.execute('call "' .. windows_script:gsub("/", "\\") .. '"')
  else
    os.execute('sh "' .. script .. '"')
  end
end

local schemes = {
  catppuccin = {
    "clatte",
    "cfrappe",
    "cmacchiato",
    "cmocha"
  },
  dracula = {
    "dracula",
    "alucard"
  },
  other = {
    "nord"
  }
}

local versions = {
  "colorv",
  "modernv",
  "pixelv"
}

local function build_all()
  for _, schemes_list in pairs(schemes) do
    for _, scheme in ipairs(schemes_list) do
      for _, version in ipairs(versions) do
        build("build/" .. scheme .. "/unix/build-" .. version .. ".sh")
      end
    end
  end
end

local function build_scheme(scheme)
  print("color version, modern version or pixel art version")
  local version = io.read()

  if version == "*" then
    for _, v in ipairs(versions) do
      build("build/" .. scheme .. "/unix/build-" .. v .. ".sh")
    end
  elseif version == "color version" then
    build("build/" .. scheme .. "/unix/build-colorv.sh")
  elseif version == "modern version" then
    build("build/" .. scheme .. "/unix/build-modernv.sh")
  elseif version == "pixel art version" then
    build("build/" .. scheme .. "/unix/build-pixelv.sh")
  else
    print("write color version, modern version or pixel art version")
    build_scheme(scheme)
  end

  print("building file in /build/dist/")
end

local function choose_colorscheme()
  print("Catppuccin, Dracula, Other, or *")
  local choice = io.read()

  -- Build EVERYTHING
  if choice == "*" then
    build_all()
    print("building everything in /build/dist/")
    return
  end

  if choice == "Catppuccin" or choice == "catppuccin" then
    print("Latte, Frappe, Macchiato, Mocha, or *")
    local colorscheme = io.read()

    if colorscheme == "*" then
      for _, scheme in ipairs(schemes.catppuccin) do
        build_scheme(scheme)
      end
    elseif colorscheme == "Latte" or colorscheme == "latte" then
      build_scheme("clatte")
    elseif colorscheme == "Frappe" or colorscheme == "frappe" then
      build_scheme("cfrappe")
    elseif colorscheme == "Macchiato" or colorscheme == "macchiato" then
      build_scheme("cmacchiato")
    elseif colorscheme == "Mocha" or colorscheme == "mocha" then
      build_scheme("cmocha")
    else
      choose_colorscheme()
    end
  elseif choice == "Dracula" or choice == "dracula" then
    print("Dracula, Alucard, or *")
    local colorscheme = io.read()

    if colorscheme == "*" then
      for _, scheme in ipairs(schemes.dracula) do
        build_scheme(scheme)
      end
    elseif colorscheme == "Dracula" or colorscheme == "dracula" then
      build_scheme("dracula")
    elseif colorscheme == "Alucard" or colorscheme == "alucard" then
      build_scheme("alucard")
    else
      choose_colorscheme()
    end
  elseif choice == "Other" or choice == "other" then
    print("Nord or *")
    local colorscheme = io.read()

    if colorscheme == "*" then
      build_scheme("nord")
    elseif colorscheme == "Nord" or colorscheme == "nord" then
      build_scheme("nord")
    else
      choose_colorscheme()
    end
  else
    print("Please choose Catppuccin, Dracula, Other, or *")
    choose_colorscheme()
  end
end

choose_colorscheme()
