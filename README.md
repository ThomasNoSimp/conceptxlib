# conceptxlib: Student Data Management Library

## Overview

`conceptxlib` is a Lua library designed for managing a list of student records. It provides functions to fetch all student data, fetch student data by ID, fetch student data by name, and fetch student data by email. This library is useful for educational software that needs to manage and retrieve student information efficiently.

## Table of Contents

1. [Installation](#installation)
2. [Usage](#usage)
    - [Fetching All Student Data](#fetching-all-student-data)
    - [Fetching Student Data by ID](#fetching-student-data-by-id)
    - [Fetching Student Data by Name](#fetching-student-data-by-name)
    - [Fetching Student Data by Email](#fetching-student-data-by-email)
3. [API Reference](#api-reference)
    - [fetch](#fetch)
    - [fetchByID](#fetchbyid)
    - [fetchByName](#fetchbyname)
    - [fetchByEmail](#fetchbyemail)
4. [Student Data Structure](#student-data-structure)

## Installation

```bash
luarocks install conceptxlib
```

```lua
local conceptxlib = require("conceptxlib")
```

## Usage

### Fetching All Student Data

The `fetch` function returns the complete list of student data. This can be useful when you need to work with all student records at once.

```lua
local data = conceptxlib.fetch()
for _, student in ipairs(data) do
    print(student.name, student.age, student.class, student.method)
end
```

### Fetching Student Data by ID

The `fetchByID` function searches for a student with a specific ID and returns their data. If no student with the given ID is found, an empty table is returned.

```lua
local student = conceptxlib.fetchByID(1)
for _, s in ipairs(student) do
    print(s.name, s.age, s.class, s.method)
end
```

### Fetching Student Data by Name

The `fetchByName` function searches for students with a specific name and returns their data. If no students with the given name are found, an empty table is returned.

```lua
local students = conceptxlib.fetchByName("Eaint Thiri San")
for _, student in ipairs(students) do
    print(student.name, student.age, student.class, student.method)
end
```

### Fetching Student Data by Email

The `fetchByEmail` function searches for a student with a specific email and returns their data. If no student with the given email is found, an empty table is returned.

```lua
local student = conceptxlib.fetchByEmail("aungyewin.conceptx@gmail.com")
for _, s in ipairs(student) do
    print(s.name, s.age, s.class, s.method, s.email)
end
```

## API Reference

### fetch

Fetches the complete list of student data.

**Returns:**  
`table`: A table containing all student data.

**Usage:**

```lua
local data = conceptxlib.fetch()
```

### fetchByID

Fetches the student data by ID.

**Parameters:**  
`id` (number): The ID of the student to fetch.

**Returns:**  
`table`: A table containing student data matching the ID.

**Usage:**

```lua
local student = conceptxlib.fetchByID(1)
```

### fetchByName

Fetches the student data by name.

**Parameters:**  
`name` (string): The name of the student to fetch.

**Returns:**  
`table`: A table containing student data matching the name.

**Usage:**

```lua
local students = conceptxlib.fetchByName("Eaint Thiri San")
```

### fetchByEmail

Fetches the student data by email.

**Parameters:**  
`email` (string): The email of the student to fetch.

**Returns:**  
`table`: A table containing student data matching the email.

**Usage:**

```lua
local student = conceptxlib.fetchByEmail("aungyewin.conceptx@gmail.com")
```

## Student Data Structure

The student data is stored in a table where each entry represents a student. Each student record contains the following fields:

- `id` (number): The unique identifier for the student.
- `name` (string): The full name of the student.
- `age` (number): The age of the student.
- `class` (string): The class level and section of the student.
- `method` (string): The method of learning (e.g., "online", "offline").
- `email` (string, optional): The email address of the student.

**Example:**

```lua
{
    { id = 1, name = "Aung Ye Win", age = 14, class = "Secondary 2A", method = "online", email = "aungyewin.conceptx@gmail.com" },
    { id = 2, name = "Eaint Thiri San", age = 14, class = "Secondary 2A", method = "online", email = "eaintthirisanconceptx@gmail.com" },
    -- more student records
}
```

This library provides a straightforward and efficient way to manage and retrieve student data in Lua. Whether you need to access the entire dataset, or find specific students by their ID, name, or email, `conceptxlib` has the functions to help you do so.
