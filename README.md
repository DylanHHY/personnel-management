# README
## solution 1:
此題有上傳到我的 GitHib 帳號，以下為此檔案的連結：
[https://github.com/DylanHHY/Question-1](https://github.com/DylanHHY/Question-1)
## solution 2:
### 使用版本
- ruby-3.1.2
- rails 6.1.7
### 使用說明
1. bundle install
2. yarn install
3. rake dev:fake
### Database 關聯圖 
以下為各資料表關聯：
![資料表關聯圖](%E8%B3%87%E6%96%99%E8%A1%A8%E9%97%9C%E8%81%AF%E5%9C%96.png)
1. 每個員工(employee) 都會有一組帳號(user) 跟一個身份(role)。
2. 給個客戶(client) 都會有一個或多個負責的員工(employee) 跟多份紀錄(record)。
### 說明
假設有一名員工可能會被分配到多個客戶，一位客戶有只會有一位員工負責。
而每位客戶的會有多個紀錄。
因為這是人員管理系統，所以每個員工都會有一組帳號(user)，有這組帳號才能進到系統查看客戶資料。
## Solution 3:  Write an SQL query of MS SQL Server 
```sql
select MAX(salary) as Second_Salary
from Employee
where salary < 
(select MAX(salary) from Employee );
```