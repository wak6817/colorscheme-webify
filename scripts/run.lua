local is_windows = package.config:sub(1, 1) == "\\"

local function build(script)
    if is_windows then
        local windows_script = script:gsub("/unix/", "/windows/"):gsub("%.sh$", ".bat")
        os.execute('call "' .. windows_script:gsub("/", "\\") .. '"')
    else
        os.execute('sh "' .. script .. '"')
    end
end

function ChooseColorscheme()
    print("Catppuccin Frappé, Catppuccin Mocha or Nord")
    local colorscheme = io.read()

    if colorscheme == "Catppuccin Frappe" then
        Cfrappe()
    elseif colorscheme == "Catppuccin Mocha" then
        Cmocha()
    elseif colorscheme == "Nord" then
        Nord()
    else
        print("write Catppuccin Frappe, Catppuccin Mocha or Nord")
    end
end

function Cfrappe()
    print("color version, modern version or pixel art version")
    local version = io.read()

    if version == "*" then
        build("build/cfrappe/unix/build-colorv.sh")
        build("build/cfrappe/unix/build-modernv.sh")
        build("build/cfrappe/unix/build-pixelv.sh")
    elseif version == "color version" then
        build("build/cfrappe/unix/build-colorv.sh")
    elseif version == "modern version" then
        build("build/cfrappe/unix/build-modernv.sh")
    elseif version == "pixel art version" then
        build("build/cfrappe/unix/build-pixelv.sh")
    else
        print("write color version, modern version or pixel version")
        Cfrappe()
    end
    print("building file in /build/dist/ (could take 10 seconds)")
end

function Cmocha()
    print("color version, modern version or pixel art version")
    local version = io.read()

    if version == "*" then
        build("build/cmocha/unix/build-colorv.sh")
        build("build/cmocha/unix/build-modernv.sh")
        build("build/cmocha/unix/build-pixelv.sh")
    elseif version == "color version" then
        build("build/cmocha/unix/build-colorv.sh")
    elseif version == "modern version" then
        build("build/cmocha/unix/build-modernv.sh")
    elseif version == "pixel art version" then
        build("build/cmocha/unix/build-pixelv.sh")
    else
        print("write color version, modern version or pixel version")
        Cmocha()
    end
    print("building file in /build/dist/")
end

function Nord()
    print("color version, modern version or pixel art version")
    local version = io.read()

    if version == "*" then
        build("build/nord/unix/build-colorv.sh")
        build("build/nord/unix/build-modernv.sh")
        build("build/nord/unix/build-pixelv.sh")
    elseif version == "color version" then
        build("build/nord/unix/build-colorv.sh")
    elseif version == "modern version" then
        build("build/nord/unix/build-modernv.sh")
    elseif version == "pixel art version" then
        build("build/nord/unix/build-pixelv.sh")
    else
        print("write color version, modern version or pixel version")
        Nord()
    end
    print("building file in /build/dist/<chosen colorscheme>/<chosen type>")
end

ChooseColorscheme()
