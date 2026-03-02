create table org_chart.cost_center
(id text,name text)

;

insert into org_chart.cost_center (id,name)
values
('A4B7C9','Marketing'),
('Z1G5X8','Sales'),
('K3J2L4','Research & Development (R&D)'),
('M9N7V2','Product Development'),
('D5F6Y3','Human Resources (HR)'),
('R8H4C1','Finance & Accounting'),
('T6P3A9','IT Support'),
('V2Q1J7','Customer Service'),
('W4B9T3','Legal Department'),
('E7D5N6','Quality Control')

;

create table org_chart.employee_manager
(worker_id text, manager_id text)

;

insert into org_chart.employee_manager
values
('7X3AKX6G25','FF97W42G1W'),
('7CPP1A5CJO','FF97W42G1W'),
('FF97W42G1W','B8UB4Q4AG6'),
('B8UB4Q4AG6','513ZTSC1PG'),
('513ZTSC1PG','8BQQHR5SUQ'),
('8BQQHR5SUQ','9P1NJLZ1GZ'),
('81ESU6C6SV','8BQQHR5SUQ'),
('BCEYFHE0SO','8BQQHR5SUQ'),
('U7HFFT7QJG','8BQQHR5SUQ'),
('U7HFFT7SF2','FF97W42G1W')

;

create table org_chart.cost_center_managers
(cost_center_id text, worker_id text)

;

insert into org_chart.cost_center_managers
values
('A4B7C9','7X3AKX6G25'),
('Z1G5X8','7CPP1A5CJO'),
('K3J2L4','FF97W42G1W'),
('M9N7V2','B8UB4Q4AG6'),
('D5F6Y3','513ZTSC1PG'),
('R8H4C1','8BQQHR5SUQ'),
('T6P3A9','81ESU6C6SV'),
('V2Q1J7','BCEYFHE0SO'),
('W4B9T3','U7HFFT7QJG'),
('E7D5N6','B8UB4Q4AG6'),
('L1M3C9','8BQQHR5SUQ')

;
