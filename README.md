# README
## solution 2:
- ruby-3.1.2
- rails 6.1.7
### Database 關聯圖 
<img width="1061" alt="資料表關聯圖" src="https://user-images.githubusercontent.com/98085617/205129131-2ae6fc55-9fe0-4640-a639-f74015c992fc.png">
## Solution 3:  Write an SQL query of MS SQL Server 
```shell
select MAX(salary) as Second_Salary
from Employee
where salary < 
(select MAX(salary) from Employee );
```
