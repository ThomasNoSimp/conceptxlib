----------------------------------------------------------------------------------------------------------------------------

--- conceptxlib: Student Data Management Library
--
-- This library provides functions to interact with a list of student records. It includes features to fetch all student data,
-- fetch student data by ID, and fetch student data by name. The `conceptxlib` table acts as a namespace for the library, 
-- encapsulating all functionalities provided.
local conceptxlib = {}

--- Student data list to store student data and information.
-- This table serves as the main storage for all student records in the library. Each entry in this table represents
-- a student and contains various fields that hold specific information about the student.
-- 
-- @table studentData
-- @field id number The ID of the student. Each student has a unique numerical identifier, which helps to 
-- uniquely identify and fetch student records.
-- @field name string The name of the student. This is a string representing the student's full name. 
-- It is used to fetch student records by name.
-- @field age number The age of the student. This field represents the student's age as a number.
-- @field class string The class the student is enrolled in. This field indicates the student's current class 
-- level and section.
-- @field method string The method of learning (e.g., "online", "offline"). This indicates whether the student 
-- is learning online or offline.
local studentData = {
    { id = 1, name = "Aung Ye Win", age = 14, class = "Secondary 2A", method = "online", email = "aungyewin.conceptx@gmail.com"},
    { id = 2, name = "Eaint Thiri San", age = 14, class = "Secondary 2A", method = "online", email = "eaintthirisanconceptx@gmail.com"},
    { id = 3, name = "Eaint Thu Kha", age = 14, class = "Secondary 2A", method = "online"},
    { id = 4, name = "Ei Lin Pyae", age = 14, class = "Secondary 2A", method = "online"},
    { id = 5, name = "Ei Pwint Phyu", age = 14, class = "Secondary 2A", method = "online"},
    { id = 6, name = "Hay Mar Pyae Sone", age = 14, class = "Secondary 2A", method = "online"},
    { id = 7, name = "Hein Htet Naing", age = 14, class = "Secondary 2A", method = "online"},
    { id = 8, name = "Hsu Dagu Naing", age = 14, class = "Secondary 2A", method = "online"},
    { id = 9, name = "Hsu Htoo Phyu Sin", age = 14, class = "Secondary 2A", method = "online"},
    { id = 10, name = "Htin Htin Lu Win", age = 14, class = "Secondary 2A", method = "online"},
    { id = 11, name = "Kaung Myat Ye Aung", age = 14, class = "Secondary 2A", method = "online"},
    { id = 12, name = "Kyaw Kyal Sin Moe", age = 14, class = "Secondary 2A", method = "online"},
    { id = 13, name = "Kyaw Myitzu Thar", age = 14, class = "Secondary 2A", method = "online"},
    { id = 14, name = "Lin Pyae Aung", age = 14, class = "Secondary 2A", method = "online"},
    { id = 15, name = "Wint Yati Kyaw", age = 14, class = "Secondary 2A", method = "online"},
    { id = 16, name = "Mahay Thi", age = 14, class = "Secondary 2A", method = "online"},
    { id = 17, name = "May Myat Mon", age = 14, class = "Secondary 2A", method = "online"},
    { id = 18, name = "Nan Hom Kham", age = 14, class = "Secondary 2A", method = "online"},
    { id = 19, name = "Nan Mwam Mwam", age = 14, class = "Secondary 2A", method = "online"},
    { id = 20, name = "Nway Thit Cho", age = 14, class = "Secondary 2A", method = "online"},
    { id = 21, name = "Nyan Lin Myint", age = 14, class = "Secondary 2A", method = "online"},
    { id = 22, name = "Paing Nyi Han", age = 14, class = "Secondary 2A", method = "online"},
    { id = 23, name = "Pe Ti Khin Nan Win", age = 14, class = "Secondary 2A", method = "online"},
    { id = 24, name = "San Wana Zaw", age = 14, class = "Secondary 2A", method = "online"},
    { id = 25, name = "Shine Wana Htun", age = 14, class = "Secondary 2A", method = "online"},
    { id = 26, name = "Shoon lae Lae Kyaw", age = 14, class = "Secondary 2A", method = "online"},
    { id = 27, name = "Shwe Sin Minn", age = 14, class = "Secondary 2A", method = "online"},
    { id = 28, name = "Shwe Yee Hnin Wai", age = 14, class = "Secondary 2A", method = "online"},
    { id = 29, name = "Shwe Yee Htet", age = 14, class = "Secondary 2A", method = "online"},
    { id = 30, name = "Shwe Yi Chan Myae", age = 14, class = "Secondary 2A", method = "online"},
    { id = 31, name = "Su Myat Thet", age = 14, class = "Secondary 2A", method = "online"},
    { id = 32, name = "Su Sandy Htun", age = 14, class = "Secondary 2A", method = "online"},
    { id = 33, name = "Su Shweyi Khaing", age = 14, class = "Secondary 2A", method = "online"},
    { id = 34, name = "Thura Wai Zin", age = 14, class = "Secondary 2A", method = "online"},
    { id = 35, name = "Zay Nyi Han", age = 14, class = "Secondary 2A", method = "online"},
    { id = 36, name = "Saung Hnin Shan", age = 14, class = "Secondary 2A", method = "online"},
}

--#region Functions

--- Fetches the complete list of student data.
-- This function returns the entire student data list. It can be used to retrieve all records at once.
-- This is useful when you need to perform operations on the entire dataset or when you need to display
-- all student records. The data is returned as a table, where each element is a table representing a student.
--
-- @return table A table containing all student data.
-- @usage
-- local data = conceptxlib.fetch()
-- for _, student in ipairs(data) do
--     print(student.name, student.age, student.class, student.method)
-- end
-- 
-- In the above example, the `fetch` function is called to get all student data. The returned table is then 
-- iterated over, and each student's details are printed.
function conceptxlib.fetch()
    return studentData
end

--- Fetches the student data by ID.
-- This function searches the student data list for a student with the specified ID. 
-- It returns a table containing the data of the student with that ID. If no student with the given ID is found,
-- an empty table is returned. This function is useful when you need to retrieve information about a specific 
-- student by their unique identifier.
--
-- @param id number The ID of the student to fetch.
-- @return table A table containing student data matching the ID.
-- @usage
-- local student = conceptxlib.fetchByID(1)
-- for _, s in ipairs(student) do
--     print(s.name, s.age, s.class, s.method)
-- end
--
-- In the example, the `fetchByID` function is called with the ID 1. The returned table, which contains the 
-- student data, is then iterated over, and the student's details are printed.
function conceptxlib.fetchByID(id)
    local result = {}
    for _, student in ipairs(studentData) do
        if student.id == id then
            table.insert(result, student)
        end
    end
    return result
end

--- Fetches the student data by name.
-- This function searches the student data list for students with the specified name.
-- It returns a table containing the data of the students with that name. If no students with the given name 
-- are found, an empty table is returned. This function is useful when you need to retrieve information about 
-- one or more students who share the same name.
--
-- @param name string The name of the student to fetch.
-- @return table A table containing student data matching the name.
-- @usage
-- local students = conceptxlib.fetchByName("Eaint Thiri San")
-- for _, student in ipairs(students) do
--     print(student.name, student.age, student.class, student.method)
-- end
--
-- In this example, the `fetchByName` function is called with the name "Eaint Thiri San". The returned table, which 
-- contains the student data, is then iterated over, and the student's details are printed.
function conceptxlib.fetchByName(name)
    local result = {}
    for _, student in ipairs(studentData) do
        if student.name == name then
            table.insert(result, student)
        end
    end
    return result
end

--- Fetches the student data by email.
-- This function searches the student data list for a student with the specified email.
-- It returns a table containing the data of the student with that email. If no student with the given email is found,
-- an empty table is returned. This function is useful when you need to retrieve information about a specific 
-- student by their email address.
--
-- @param email string The email of the student to fetch.
-- @return table A table containing student data matching the email.
-- @usage
-- local student = conceptxlib.fetchByEmail("aungyewin.conceptx@gmail.com")
-- for _, s in ipairs(student) do
--     print(s.name, s.age, s.class, s.method, s.email)
-- end
--
-- In this example, the `fetchByEmail` function is called with the email "aungyewin.conceptx@gmail.com". 
-- The returned table, which contains the student data, is then iterated over, and the student's details are printed.
function conceptxlib.fetchByEmail(email)
    local result = {}
    for _, student in ipairs(studentData) do
        if student.email == email then
            table.insert(result, student)
        end
    end
    return result
end

--#endregion Functions

return conceptxlib
