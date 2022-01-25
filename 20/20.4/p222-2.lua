local mt = {
    __index = function(t)
        return t.___
    end
}

function setDefault(t, d)
    t.___ = d
    setmetatable(t, mt)
end

tab = {x = 10, y = 20}
print(tab.x, tab.z) --> 10      nil

setDefault(tab, 0)
print(tab.x, tab.z) --> 10      0
