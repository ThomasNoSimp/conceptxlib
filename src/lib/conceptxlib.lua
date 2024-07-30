----------------------------------------------------------------------------------------------------------------------------
--- conceptxlib: Comprehensive Student Data Management Library
--
-- The `conceptxlib` library is meticulously designed to facilitate efficient interaction with a robust list of student records.
-- The library encompasses functionalities to fetch comprehensive student data, retrieve student records by unique ID, name,
-- email, and age. The `conceptxlib` table serves as a namespace, encapsulating all provided functionalities to ensure
-- organized and maintainable code.
local conceptxlib = {}

--- Student data repository.
-- This table serves as the primary storage for all student records within the library. Each entry represents a student,
-- encapsulating various fields that detail specific information about the student.
--
-- @table studentData
-- @field id number The unique identifier for the student. This numerical ID ensures each student record can be uniquely 
-- identified and efficiently fetched.
-- @field name string The full name of the student. This string field represents the student's full name, facilitating 
-- searches based on name.
-- @field age number The age of the student. This field denotes the student's age as a numerical value.
-- @field class string The class designation for the student. This string field indicates the student's current class level 
-- and section.
-- @field method string The learning method adopted by the student (e.g., "online", "offline"). This field signifies whether 
-- the student is engaged in online or offline learning.
-- @field email string The email address of the student. This field, when present, contains the student's email address for 
-- additional contact information.
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
    { id = 26, name = "Shoon Lae Lae Kyaw", age = 14, class = "Secondary 2A", method = "online"},
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

--- Retrieves the complete list of student records.
-- This function returns the entire dataset of student records. It is beneficial for scenarios where operations
-- need to be performed on the full dataset or where displaying all student records is required. The returned data
-- is encapsulated in a table, where each entry is a table representing an individual student.
--
-- @return table A table containing the comprehensive list of all student records.
-- @usage
-- local allStudents = conceptxlib.fetch()
-- for _, student in ipairs(allStudents) do
--     print(student.name, student.age, student.class, student.method, student.email)
-- end
--
-- In the example above, the `fetch` function is invoked to retrieve all student records. The returned table is then
-- iterated over, printing each student's details.
function conceptxlib.fetch()
    return studentData
end

--- Retrieves student records by their unique ID.
-- This function searches the student records for a student with the specified ID. It returns a table containing
-- the data of the student with the given ID. If no student with the provided ID is found, an empty table is returned.
-- This function is particularly useful for fetching specific student details based on their unique identifier.
--
-- @param id number The unique ID of the student to be fetched.
-- @return table A table containing the student data matching the provided ID.
-- @usage
-- local studentByID = conceptxlib.fetchByID(1)
-- if #studentByID > 0 then
--     local student = studentByID[1]
--     print(student.name, student.age, student.class, student.method, student.email)
-- else
--     print("No student found with the given ID.")
-- end
--
-- In this example, the `fetchByID` function is invoked with the ID 1. The returned table is checked for entries,
-- and the student's details are printed if a match is found.
function conceptxlib.fetchByID(id)
    local result = {}
    for _, student in ipairs(studentData) do
        if student.id == id then
            table.insert(result, student)
        end
    end
    return result
end

--- Retrieves student records by their name.
-- This function searches the student records for students with the specified name. It returns a table containing
-- the data of all students with the given name. If no students with the provided name are found, an empty table is returned.
-- This function is particularly useful for fetching details of students who share the same name.
--
-- @param name string The name of the student(s) to be fetched.
-- @return table A table containing the student data matching the provided name.
-- @usage
-- local studentsByName = conceptxlib.fetchByName("Eaint Thiri San")
-- for _, student in ipairs(studentsByName) do
--     print(student.name, student.age, student.class, student.method, student.email)
-- end
--
-- In this example, the `fetchByName` function is invoked with the name "Eaint Thiri San". The returned table is
-- iterated over, printing the details of each matching student.
function conceptxlib.fetchByName(name)
    local result = {}
    for _, student in ipairs(studentData) do
        if student.name == name then
            table.insert(result, student)
        end
    end
    return result
end

--- Retrieves student records by their email address.
-- This function searches the student records for a student with the specified email. It returns a table containing
-- the data of the student with the given email. If no student with the provided email is found, an empty table is returned.
-- This function is particularly useful for fetching specific student details based on their email address.
--
-- @param email string The email address of the student to be fetched.
-- @return table A table containing the student data matching the provided email.
-- @usage
-- local studentByEmail = conceptxlib.fetchByEmail("aungyewin.conceptx@gmail.com")
-- if #studentByEmail > 0 then
--     local student = studentByEmail[1]
--     print(student.name, student.age, student.class, student.method, student.email)
-- else
--     print("No student found with the given email.")
-- end
--
-- In this example, the `fetchByEmail` function is invoked with the email "aungyewin.conceptx@gmail.com". The returned table
-- is checked for entries, and the student's details are printed if a match is found.
function conceptxlib.fetchByEmail(email)
    local result = {}
    for _, student in ipairs(studentData) do
        if student.email == email then
            table.insert(result, student)
        end
    end
    return result
end

--- Retrieves student records by their age.
-- This function searches the student records for students with the specified age. It returns a table containing
-- the data of all students with the given age. If no students with the provided age are found, an empty table is returned.
-- This function is particularly useful for fetching details of students who share the same age.
--
-- @param age number The age of the student(s) to be fetched.
-- @return table A table containing the student data matching the provided age.
-- @usage
-- local studentsByAge = conceptxlib.fetchByAge(14)
-- for _, student in ipairs(studentsByAge) do
--     print(student.name, student.age, student.class, student.method, student.email)
-- end
--
-- In this example, the `fetchByAge` function is invoked with the age 14. The returned table is iterated over,
-- printing the details of each matching student.
function conceptxlib.fetchByAge(age)
    local result = {}
    for _, student in ipairs(studentData) do
        if student.age == age then
            table.insert(result, student)
        end
    end
    return result
end

--#endregion Functions

return conceptxlib
