
SELECT 
    parents.member AS parents_id,
    parents.name AS parent_name,
    parents.personality AS parent_personality,
    parents.age AS parent_age,
    child.name as child_name
FROM 
    parents   
JOIN 
    child
ON 
    parents.member = child.parents_member
ORDER BY 
    parents.age DESC
LIMIT 1;
