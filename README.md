# README
## solution 2:
- ruby-3.1.2
- rails 6.1.7
### Database 關聯圖 
![關聯圖](../Desktop/%E8%B3%87%E6%96%99%E8%A1%A8%E9%97%9C%E8%81%AF%E5%9C%96.png)
## Solution 3:  Write an SQL query of MS SQL Server 
```shell
select MAX(salary) as Second_Salary
from Employee
where salary < 
(select MAX(salary) from Employee );
```