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
        print("write Catppuccin Frappe or Nord")
    end
end

function Cfrappe()
    print("color version, modern version or pixel art version")
    local version = io.read()

    if version == "*" then
        os.execute("sh build/cfrappe/build-colorv.sh")
        os.execute("sh build/cfrappe/build-modernv.sh")
        os.execute("sh build/cfrappe/build-pixelv.sh")
    elseif version == "color version" then
        os.execute("sh build/cfrappe/build-colorv.sh")
    elseif version == "modern version" then
        os.execute("sh build/cfrappe/build-modernv.sh")
    elseif version == "pixel art version" then
        os.execute("sh build/cfrappe/build-pixelv.sh")
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
        os.execute("sh build/cmocha/build-colorv.sh")
        os.execute("sh build/cmocha/build-modernv.sh")
        os.execute("sh build/cmocha/build-pixelv.sh")
    elseif version == "color version" then
        os.execute("sh build/cmocha/build-colorv.sh")
    elseif version == "modern version" then
        os.execute("sh build/cmocha/build-modernv.sh")
    elseif version == "pixel art version" then
        os.execute("sh build/cmocha/build-pixelv.sh")
    else
        print("write color version, modern version or pixel version")
        Cfrappe()
    end
    print("building file in /build/dist/ (could take 10 seconds)")
end

function Nord()
    print("color version, modern version or pixel art version")
    local version = io.read()

    if version == "*" then
        os.execute("sh build/nord/build-colorv.sh")
        os.execute("sh build/nord/build-modernv.sh")
        os.execute("sh build/nord/build-pixelv.sh")
    elseif version == "color version" then
        os.execute("sh build/nord/build-colorv.sh")
    elseif version == "modern version" then
        os.execute("sh build/nord/build-modernv.sh")
    elseif version == "pixel art version" then
        os.execute("sh build/nord/build-pixelv.sh")
    else
        print("write color version, modern version or pixel version")
        Nord()
    end
    print("building file in /build/dist/<chosen lang>/<chosen version> (could take a few minutes)")
end

ChooseColorscheme()
