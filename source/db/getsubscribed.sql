SELECT * FROM kommune WHERE kuid = (SELECT kuid_pk FROM Subscribers WHERE uid_pk = %s)