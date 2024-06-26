
# Power Query Functions
## Introduction

This repository offers a suite of Power Query functions and scripts, aiming to streamline data manipulation tasks. It addresses the lack of a centralized library system in Power Query, helping developers avoid redundant efforts and improve efficiency.

Power Query's absence of shared libraries leads to unnecessary duplication and inefficiencies in development. This project encourages more efficient data handling and reduces development time by aggregating reusable code.

Despite Power Query's limitations, such as its specific M code environment, this initiative promotes community collaboration to expand its capabilities. Through sharing code and expertise, it seeks to overcome inherent challenges and push the boundaries of Power Query's functionality.


### This M functions library stands on the shoulders of giants:
This repository was inspired by [Injae Park's YouTube video](https://www.youtube.com/watch?v=GXFxiEVAmfI) and [repository](https://github.com/PowerBIPark/PowerBI_MQueryTest) on how to version control M Code, his research and code is a cornerstone of this project; extremely useful were the references he included: 

- Imke Feldman's [post on expression evaluate](https://www.thebiccountant.com/2018/05/17/automatically-create-function-record-for-expression-evaluate-in-power-bi-and-power-query/) came particularly handy when dealing with documentation. 
- Kim Burgess' [repository, m-tools](https://github.com/acaprojects/m-tools/blob/master/M.pq) was instrumental when defining the usage of the functions, the readme file and the idea of "compiling" the functions in a single file to import.

## Usage
### Experimental stage of library ⚠️
This library is in a very early development stage, and lots of things are moving, meaning that there is a high probability of experiencing breaking changes. 

### Library installation and usage

This library is "imported" into Power Query by following these steps:

1. Open the file [M.pq](M.pq) and copy the code.
2. Open an advanced editor in Power Query and paste the code; rename the query to "M".
3. Use the functions as records on M. For example, PictureBinary, which is located in the General Folder, has as arguments one table and two numbers, can be invoked like: 

`M[General.PictureBinary](table, number, number)`

### GitHub rate limit
You may run into GitHub's API rate limit. To avoid this, add a Personal Access Token to the **"PAT"** parameter of the M code. 
Visit [this link to learn how to create a PAT.](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-fine-grained-personal-access-token) 

## Contributing
**Contributions are welcome!** Feel free to submit a pull request if you have any new functions or improvements to existing ones.

Please contribute in the folder category that best suits. If the folder does not exist, create it. 

The functions you create will only work if all the Power Query native functions used are declared in the [**M.pq**](M.pq) file. You can run the [M_Creator.py](M_Creator.py) Python script to locate all the functions via regex and rewrite an M.pq file. 

### How can you contribute?

 - New functions.
 - Upgrading existing functions.
 - Adding documentation to existing functions.
 - Solve open issues.

### Contributing guidelines
1. Make sure to add the corresponding credits to your code. Plagiarism will not be tolerated.
2. **Document your functions,** for this you can use the file  [M_FxDocTemplate.pq](https://github.com/OscarValerock/PowerQueryFunctions/blob/main/M_FxDocTemplate.pq "M_FxDocTemplate.pq")
3. Do not duplicate code. For example, if you have a better date table, upgrade the existing one instead of creating a new one.
4. Comment your code.
5. Have fun! 🎉

### Naming convention.
When naming the function, keep meaningfulness and brevity in mind. 

The M script creates the entry based on the folder where the function is stored and its name. 

**Example:** A function named Join in the folder Table will appear as **Table.Join**

This means there is no need to add the group (folder) of the function to its name.

## Other libraries
Below, you will find other handy PowerQuery libraries: 
1. [M-tools](https://github.com/acaprojects/m-tools/tree/master) by Kim Burgess
2. [M](https://github.com/ImkeF/M) by Imke Feldmann
3. [M Custom Functions](https://github.com/tirnovar/m-custom-functions) by Štěpán Rešl 
4. [PowerQueryLib](https://github.com/ninmonkey/Ninmonkey.PowerQueryLib) by NinMonkey

## License
This project is licensed under the [MIT License](LICENSE).
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE1OTI1OTk0MTgsMjU0MTIzMDI1LC0xMj
AyNzUxNTQxLC0xNDk4NzQzNTI2LC0xMjcwMTgxNzY5LDExMjg2
Mjc3OTksODY3ODY3OTA2LDUxMjg1MjE0LC02MzA0OTg0NjYsNj
k5Mjk3MzIyLC0xMTYzNzkyMjY2LDEwOTYyMjg1OTcsMjEwNDc3
MzcsMTMxNTgxODU0NiwxMTgyOTgyOTg2LC01MzIwNjA0MywtMT
Y3NTQzNzY4OF19
-->