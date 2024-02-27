local M = {}

M.shallowOverride = function(a, ...)
    local res = a or {}
    local number_of_args = select('#', ...)
    for i = 1, number_of_args do
        local b = select(i, ...)
        if b ~= nil then
            for k, v in pairs(b) do
                res[k] = v
            end
        end
    end
    return res
end

return M
