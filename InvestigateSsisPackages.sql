SELECT
	b.package_name,
	b.executable_name,
	a.execution_path,
	a.execution_duration/60000.00 AS DurationInMinutes,
	CONVERT(VARCHAR(20), CONVERT(DATETIME2, a.start_time), 120) AS StartTime,
	CONVERT(VARCHAR(20), CONVERT(DATETIME2, a.end_time), 120) AS EndTime
FROM [SSISDB].[catalog].[executable_statistics] a
	LEFT JOIN internal.executables b ON a.executable_id = b.executable_id
WHERE CONVERT(DATETIME2, StartTime) >= 'YYYY-HH-MM hh:mm'
	AND b.package_name = <some_package>
	AND b.executable_name like '%<some_executable>%'
ORDER BY StartTime DESC,EndTime ASC
