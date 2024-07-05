local conceptxlib = require("src.lib.conceptxlib")

-- Fetch student data
local data = conceptxlib.fetch()

-- Print the fetched data
print("Fetched student data:")
for _, student in ipairs(data) do
    print(string.format("ID: %d, Name: %s, Age: %d, Class: %s, Method: %s",
                        student.id, student.name, student.age, student.class, student.method))
end

-- Fetch specific student data by name
local specificStudent = conceptxlib.fetchByName("Aung Ye Win")
print("\nFetched specific student data:")
for _, student in ipairs(specificStudent) do
    print(string.format("ID: %d, Name: %s, Age: %d, Class: %s, Method: %s",
                        student.id, student.name, student.age, student.class, student.method))
end

-- Fetch specific student data by ID
local specificStudentById = conceptxlib.fetchByID(3)
print("\nFethced student by ID:")
for _, student in ipairs(specificStudentById) do
    print(string.format("ID %d, Name: %s, Age: %d, Class: %s, Method: %s",
                        student.id, student.name, student.age, student.class, student.method))
end
