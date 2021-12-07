
-- This code counts and returns the numbers of columns in _MYLOCALTEMPTABLE
select *
INTO _MYLOCALTEMPTABLE
FROM 
--- Add your function, table or view here that you want to investigate

select count(*)
from Information_Schema.Columns c
where table_name = '_MYLOCALTEMPTABLE'

DROP TABLE [dbo].[_MYLOCALTEMPTABLE]
