ALTER TABLE Users
ADD CONSTRAINT DF_User DEFAULT GETDATE() FOR LastLoginTime