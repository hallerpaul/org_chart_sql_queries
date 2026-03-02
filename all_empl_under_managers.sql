with recursive cte as
    (
    select
        manager_id
        ,worker_id
        ,0 as employee_level 
    from 
        employee_manager
    where 
        manager_id is not null

    union all

    select 
        c.manager_id
        ,t.worker_id
        ,employee_level + 1 as employee_level 
    from 
        employee_manager as t
    inner join cte as c 
        on c.worker_id=t.manager_id
    )
select 
    * 
from 
    cte
