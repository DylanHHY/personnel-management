# README
## solution 2:
- ruby-3.1.2
- rails 6.1.7
### Database 關聯圖 
![關聯圖](../Desktop/%E6%88%AA%E5%9C%96%202022-12-02%2000.11.50.png)
## Solution 3:  Write an SQL query of MS SQL Server 
```shell
select MAX(salary) as Second_Salary
from Employee
where salary < 
(select MAX(salary) from Employee );
```