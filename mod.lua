local M  = {
    xxx = function ()
        abc()
    end
}

function abc()
    print("there is in mod")
end

function M.abc()
    abc()
end

dofile("abc/mod2.lua")
dofile("abc/mod2.lua")

return M
