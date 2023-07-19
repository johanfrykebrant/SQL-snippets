SELECT l.resource_type
    , l.resource_associated_entity_id
    , l.request_status
    , l.request_mode
    , request_session_id
	, ex.session_id
    , l.resource_description
    , o.object_id
    , o.name
    , o.type_desc
    , ex.client_interface_name
    , ex.login_name
    , ex.STATUS
    , ex.cpu_time
    , ex.memory_usage
    , ex.total_scheduled_time
    , ex.total_elapsed_time
    , ex.last_request_start_time
    , ex.last_request_end_time
FROM sys.dm_tran_locks l
LEFT JOIN sys.dm_exec_sessions ex
    ON l.request_session_id = ex.session_id
LEFT JOIN sys.objects o
    ON l.resource_associated_entity_id = o.object_id
