-- only supports Catppuccin flavors

local color_names = {
    "rosewater", "flamingo", "pink", "mauve", "red", "maroon", "peach",
    "yellow", "green", "teal", "sky", "sapphire", "blue", "lavender",
    "text", "subtext1", "subtext0", "overlay2", "overlay1", "overlay0",
    "surface2", "surface1", "surface0", "base", "mantle", "crust"
}

local function read_file(path)
    local file = io.open(path, "r")
    if not file then
        return nil
    end

    local content = file:read("*a")
    file:close()
    return content
end

local function write_file(path, content)
    local file = assert(io.open(path, "w"))
    file:write(content)
    file:close()
end

local function valid_name(name)
    return name and name:match("^[%w_-]+$") ~= nil
end

local function extract_colors(css)
    local colors = {}

    for name, value in css:gmatch("%-%-([%w_-]+)%s*:%s*(#[%da-fA-F]+)%s*;") do
        colors[name] = value
    end

    return colors
end

local function json_escape(value)
    return value:gsub('\\', '\\\\'):gsub('"', '\\"')
end

local function export_theme()
    print("colorscheme to export: cfrappe, clatte, cmocha or nord")
    local colorscheme = io.read()

    if colorscheme == "nord" then
        print("nord is not supported")
        return
    end

    if not valid_name(colorscheme) then
        print("write cfrappe, clatte, cmocha or nord")
        return
    end

    local css = read_file("src/" .. colorscheme .. "/trans.css")
    if not css then
        print("colorscheme does not exist")
        return
    end

    local colors = extract_colors(css)
    local output = '{\n  "name": "' .. json_escape(colorscheme) .. '",\n  "colors": {\n'

    for index, name in ipairs(color_names) do
        local value = colors[name]
        if not value then
            print("colorscheme is missing --" .. name)
            return
        end

        output = output .. '    "' .. name .. '": "' .. value .. '"'
        if index < #color_names then
            output = output .. ","
        end
        output = output .. "\n"
    end

    output = output .. "  }\n}\n"
    write_file("build/dist/exported.json", output)
    print("exported to build/dist/exported.json")
end

export_theme()
