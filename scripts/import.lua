local function read_path(prompt)
    io.write(prompt)
    io.flush()
    return io.read("*l")
end

local function shell_quote(path)
    return "'" .. path:gsub("'", "'\\''") .. "'"
end

local source = read_path("where should files be imported from? ")
local destination = read_path("where should the imported files go? ")

if not source or source == "" or not destination or destination == "" then
    io.stderr:write("source and destination are required.\n")
    os.exit(1)
end

local command = "mv -- " .. shell_quote(source) .. " " .. shell_quote(destination)
local success = os.execute(command)

if success ~= true and success ~= 0 then
    io.stderr:write("could not move the imported files.\n")
    os.exit(1)
end

io.write("imported files moved to " .. destination .. ".\n")
