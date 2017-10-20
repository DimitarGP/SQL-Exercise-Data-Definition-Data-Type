--Remove Username field from the primary key so only the field Id would be primary key.
ALTER TABLE Users
DROP CONSTRAINT [PK_Users]

ALTER TABLE Users
ADD CONSTRAINT PK_Users PRIMARY KEY(Id)

--Now add unique constraint to the Username field to ensure that the values there are at least 3
ALTER TABLE Users
ADD CONSTRAINT CHK_Users CHECK(LEN(UserName)>3)
ALTER TABLE Users
ADD CONSTRAINT UK_Users UNIQUE(UserName)