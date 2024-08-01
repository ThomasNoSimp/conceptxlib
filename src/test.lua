local conceptxlib = require('src.lib.conceptxlib')

local studentData = conceptxlib.fetchByName('May Myat Mon')
for _, i in ipairs(studentData) do
    print(i.name, i.age, i.image_url)
end
