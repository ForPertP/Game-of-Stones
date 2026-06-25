-- Game-of-Stones



--
-- Complete the 'gameOfStones' function below.
--
-- The function is expected to return a STRING.
-- The function accepts INTEGER n as parameter.
--




local fptr = io.open(os.getenv("OUTPUT_PATH"), "w")

local t = io.stdin:read("*n", "*l")

for titr = 1, t do
    local n = io.stdin:read("*n", "*l")

    local result = gameOfStones(n)

    fptr:write(result, "\n")
end

fptr:close()
