select 
    ccm.cost_center_id
    ,cc.name as cost_center
    ,org.manager_id as authorized_user
    ,false as cc_manager
    ,'hierarchical' as access_type
from
    (
    with recursive cte as 
        (
        select 
            worker_id
            ,manager_id
            ,0 AS employee_level
        from 
            org_chart.employee_manager
        where 
            manager_id is not null
        union all
        select 
            usr.worker_id
            ,mgr.manager_id
            ,mgr.employee_level + 1
        from   
            org_chart.employee_manager as usr
        inner join cte as mgr
            on usr.manager_id = mgr.worker_id
        where  
            usr.manager_id is not null
        )
    select 
        * 
    from
        cte as u
    order by 
        employee_level
    ) org
left join org_chart.cost_center_managers ccm
    on org.worker_id=ccm.worker_id
left join org_chart.cost_center cc 
    on ccm.cost_center_id=cc.id
where 
    ccm.worker_id is not null

union all

select
    cc.id as cost_center_id
    ,cc.name as cost_center
    ,ccm.worker_id as authorized_user
    ,true as cc_manager
    ,'cc_manager' as access_type
from 
    org_chart.cost_center cc
left join org_chart.cost_center_managers ccm
	on cc.id=ccm.cost_center_id
