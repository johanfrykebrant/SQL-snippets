SELECT resource_type, resource_associated_entity_id,
     request_status, request_mode,request_session_id,
     resource_description, o.object_id, o.name, o.type_desc
FROM sys.dm_tran_locks l, sys.objects o
WHERE l.resource_associated_entity_id = o.object_id
    and resource_database_id = DB_ID()


SELECT *
FROM sys.dm_exec_sessions
