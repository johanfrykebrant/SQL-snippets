SELECT <SomeId>, <SomeTimestamp>, COUNT(<SomeId>) AS NbrOfDuplicates 
FROM <SomeTable> 
GROUP BY <SomeId>, <SomeTimestamp> 
HAVING COUNT(<SomeId>) > 1
ORDER BY <SomeTimestamp> DESC
