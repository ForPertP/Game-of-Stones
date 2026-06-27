

--
-- Complete the 'gameOfStones' function below.
--
-- The function is expected to return a STRING.
-- The function accepts INTEGER n as parameter.
--

function gameOfStones(n)
    local dp = {}

    for i = 0, n do
        dp[i] = false
    end

    for i = 2, n do
        if (i >= 2 and not dp[i - 2]) or
           (i >= 3 and not dp[i - 3]) or
           (i >= 5 and not dp[i - 5]) then
            dp[i] = true
        end
    end

    if dp[n] then
        return "First"
    else
        return "Second"
    end
end


function gameOfStones2(n)
    if n % 7 < 2 then
        return "Second"
    else
        return "First"
    end
end


local fptr = io.open(os.getenv("OUTPUT_PATH"), "w")

local t = io.stdin:read("*n", "*l")

for titr = 1, t do
    local n = io.stdin:read("*n", "*l")

    local result = gameOfStones(n)

    fptr:write(result, "\n")
end

fptr:close()
