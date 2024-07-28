SELECT 
    parents.name AS parent_name, 
    COUNT(child.member) AS number_of_children
FROM 
    parents
LEFT JOIN 
    child 
ON 
    parents.member = child.parents_member
GROUP BY 
    parents.name;
