# +---------------+---------+
# | Column Name   | Type    |
# +---------------+---------+
# | id            | int     |
# | name          | varchar |
# +---------------+---------+
# id is the primary key for this table.
# This table contains the account id and the user name of each account.

# +---------------+---------+
# | Column Name   | Type    |
# +---------------+---------+
# | id            | int     |
# | login_date    | date    |
# +---------------+---------+
# There is no primary key for this table, it may contain duplicates.
# This table contains the account id of the user who logged in and the login date. A user may log in multiple times in the day.

CREATE SCHEMA active_users;

USE active_users;

DROP TABLE Accounts;
CREATE TABLE Accounts
(
    id   int,
    name varchar(255)
);

INSERT INTO Accounts (id, name)
VALUES (1, 'Winston');
INSERT INTO Accounts (id, name)
VALUES (7, 'Jonathan');

DROP TABLE Logins;
CREATE TABLE Logins
(
    id         int,
    login_date datetime
);

INSERT INTO Logins (id, login_date)
VALUES (7, '2020-05-30');
INSERT INTO Logins (id, login_date)
VALUES (1, '2020-05-30');
INSERT INTO Logins (id, login_date)
VALUES (7, '2020-05-31');
INSERT INTO Logins (id, login_date)
VALUES (7, '2020-06-01');
INSERT INTO Logins (id, login_date)
VALUES (7, '2020-06-02');
INSERT INTO Logins (id, login_date)
VALUES (7, '2020-06-02');
INSERT INTO Logins (id, login_date)
VALUES (7, '2020-06-03');
INSERT INTO Logins (id, login_date)
VALUES (1, '2020-06-07');
INSERT INTO Logins (id, login_date)
VALUES (7, '2020-06-10');


select *
from Logins l
inner join Accounts a on a.id = l.id
          order by login_date;


WITH RECURSIVE rec_t AS
                   (SELECT 1 AS days
                    UNION ALL
                    SELECT days + 1 FROM rec_t where days < 3)
SELECT * FROM rec_t;

