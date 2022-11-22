# Pewlett Hackard Analysis

## Overview of the Project
Pewlett Hackard is an established company that employs several thousand employees.  As the company grows and time passes, a large portion of the Pewlett Hackard employees are reaching an age where they will soon retire. The analyst was tasked with helping Bobby, a fellow analyst at Pewlett Hackard run a SQL analysis to determine how many employees are at an age where they could soon retire, and provide the amount of non-retiring employees that would be eligible to participate in a mentorship program.

## Results
- The first section of the analysis consisted of determining the amount of employees that are in a position to retire.  The analyst created a sequel query to compile a table showing all the employees that were born between 1952-01-01 and 1955-12-31.  To do that the following block of code was written:

    ![retirement_tables_code.png](https://github.com/hillmanj1995/Pewlett-Hackard-Analysis./blob/main/Resources/retirement_tables_code.png)

    That code excerpt produced the following table:

    ![retirement_titles.png](https://github.com/hillmanj1995/Pewlett-Hackard-Analysis./blob/main/Resources/retirement_titles.png)

    From that table, the analyst wrote a block of code below to remove the duplicate items from the table and create a new table of unique job titles.  The code excerpt and unique titles table are shown below:

    Unique titles code:

    ![unique_titles_code.png](https://github.com/hillmanj1995/Pewlett-Hackard-Analysis./blob/main/Resources/unique_titles_code.png)

    Unique titles table:

    ![unique_titles.png](https://github.com/hillmanj1995/Pewlett-Hackard-Analysis./blob/main/Resources/unique_titles.png)

    Using the unique titles table, the analyst was able to take a count of the titles to get a total number of employees eligible for retirement grouped by their job title.  That count is shown below:

    ![retiring_titles.png](https://github.com/hillmanj1995/Pewlett-Hackard-Analysis./blob/main/Resources/retiring_titles.png)

- The second section of the analysis required the analyst to compile a list of employees that were eligible for a potential mentorship program that were born between the dates of '1965-01-01' and '1965-12-31'.  The analyst used the following code to create a table providing that information.

    ![mentorship_table_code.png](https://github.com/hillmanj1995/Pewlett-Hackard-Analysis./blob/main/Resources/mentorship_table_code.png)

    That code produced the following table:

    ![mentorship_table.png](https://github.com/hillmanj1995/Pewlett-Hackard-Analysis./blob/main/Resources/mentorship_table.png)

## Summary

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?

    Pewlett Hackard has a substantial number of employees that are in a postion to potentially retire.  Looking at the previous table showing the count of employees reaching retirement age (also shown below), it is clear that many roles will need to be filled in the coming years.

    ![retiring_titles.png](https://github.com/hillmanj1995/Pewlett-Hackard-Analysis./blob/main/Resources/retiring_titles.png)

    The issue with this data is that the count is taken from the total employees database instead of the current employees database.  This allows for an inflated count of employees that are within the analyst's criteria from approaching retirement.  If the data-range is refined to only include a count of current employees, the analyst would have a more accurate number of employees approaching retirement.  See below for that table:

    ![retiring_employee_count.png](https://github.com/hillmanj1995/Pewlett-Hackard-Analysis./blob/main/Resources/retiring_employee_count.png) 

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

    To answer this question, the analyst has to create a table that provides a count of employees that are eligible for the mentor program, so that a comparison can be made against the previous table that showed how many current employees could possibly retire.  That eligible mentor count table is shown below:

    ![mentor_count.png](https://github.com/hillmanj1995/Pewlett-Hackard-Analysis./blob/main/Resources/mentor_count.png) 

    When a comparison is made between the two tables, it is observed that for positions that have a lesser amount of turn over, such as Staff, Engineer, and Assistant Engineer, have lower new hire to mentor ratio.  However, for the positions of high turnover, such as Senior Engineer, Senior Staff, and Technique Leader, the new hire to mentor ratio increases greatly.  Those ratios are shown below: 

        Senior Engineer 60:1
        Senior Staff  27:1
        Technique Leader 21:1
        Staff 8:1
        Engineer 6:1
        Assistant Engineer 4:1
    
    This shows that for the more senior leadership positions, there will not be enough mentors to next generation of employees in the event of a sudden wave of retirees.  While the probability of all the people that are eligible for retirement actually retire at the same time is low, the company should be prepared to high more employees to fit these roles.
