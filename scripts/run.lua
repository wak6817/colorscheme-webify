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
    print("Catppuccin Latte, Catppuccin Frappe, Catppuccin Mocha or Nord")
    local colorscheme = io.read()

    if colorscheme == "*" then
        for _, scheme in ipairs({ "clatte", "cfrappe", "cmocha", "nord" }) do
            for _, version in ipairs({ "colorv", "modernv", "pixelv" }) do
                build("build/" .. scheme .. "/unix/build-" .. version .. ".sh")
            end
        end
        print("building all files in /build/dist/")
    elseif colorscheme == "Catppuccin Latte" then
        Clatte()
    elseif colorscheme == "Catppuccin Frappe" then
        Cfrappe()
    elseif colorscheme == "Catppuccin Mocha" then
        Cmocha()
    elseif colorscheme == "Nord" then
        Nord()
    else
        print("write Catppuccin Latte, Catppuccin Frappe, Catppuccin Mocha or Nord")
    end
end

function Clatte()
    print("color version, modern version or pixel art version")
    local version = io.read()

    if version == "*" then
        build("build/clatte/unix/build-colorv.sh")
        build("build/clatte/unix/build-modernv.sh")
        build("build/clatte/unix/build-pixelv.sh")
    elseif version == "color version" then
        build("build/clatte/unix/build-colorv.sh")
    elseif version == "modern version" then
        build("build/clatte/unix/build-modernv.sh")
    elseif version == "pixel art version" then
        build("build/clatte/unix/build-pixelv.sh")
    else
        print("write color version, modern version or pixel version")
        Cfrappe()
    end
    print("building file in /build/dist/")
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
    print("building file in /build/dist/")
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
    print("building file in /build/dist/chosen-colorscheme/chosen-version/ (could take 10 seconds)")
end

ChooseColorscheme()
