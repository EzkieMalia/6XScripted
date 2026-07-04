local Table = {}

local function DeepSearch(Table)
    if typeof(Table) ~= "table" then
        return
    end

    for Index, Object in next, Table do
        DeepSearch(Table)
        table.insert(Table, {})
    end
end

while task.wait() do
    DeepSearch(Table)
end
