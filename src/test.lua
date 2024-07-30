local conceptxlib = require('src.lib.conceptxlib')

local student = conceptxlib.fetchByAge(14)
for _, i in ipairs(student) do
    print(i.name)
end
