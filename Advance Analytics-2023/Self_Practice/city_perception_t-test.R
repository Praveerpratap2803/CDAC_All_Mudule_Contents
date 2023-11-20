independent_t_factor <- read_excel("D:/CDAC_Course/Advance Analytics-2023/Self_Practice/independent_t_factor.xlsx")
attach(independent_t_factor)
str(independent_t_factor)
t.test(independent_t_factor$perception~independent_t_factor$City)

