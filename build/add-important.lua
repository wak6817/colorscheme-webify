for line in io.lines() do
    local output = line

    if line:match(":") and line:match(";") then
        if not line:find("!important", 1, true) then
            output = line:gsub(";%s*$", " !important;")
        end
    end

    print(output)
end
