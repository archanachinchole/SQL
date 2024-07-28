SELECT
      child.member as child_id,
      child.name as child_name,
      child.personality as child_personality 
from
child
join       
parents
ON
child.parents_member = parents.member
where 
parents.age >=50;

