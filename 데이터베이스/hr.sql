-- 2024.09.01

select *
    from departments;
    
select department_id, department_name
    from departments;
    
select *
    from countries;
    
select country_id, country_name
    from countries;
    
select country_id AS ����ID, country_name AS ������
    from countries;

select distinct region_id
    from countries;
    
select country_name || country_id
    from countries;
    
select *
    from locations;
    
select street_address, city
    from locations;
    
select job_id, job_title
    from jobs;

select job_title, min_salary * 1.1, max_salary * 1.1
    from jobs;
    
select distinct job_id
    from employees;

select first_name ||' '|| last_name
    from employees;

select *
    from employees
where employee_id = 110;

select *
    from employees
where employee_id <> 110;

select *
    from employees
where employee_id < 110;

select *
    from employees
where employee_id > 110;

select *
    from employees
where employee_id <= 110;

select *
    from employees
where employee_id >= 110;

select *
    from employees
where employee_id >= 120 and employee_id <= 130;

select *
    from employees
where salary >= 10000 and salary <= 12000;

select *
    from employees
where manager_id = 100 or manager_id = 120;

-- 2024.09.02

select *
    from employees
where last_name = 'King' or last_name = 'Smith';

select * 
    from employees
    where not department_id = 50;
    
select * 
    from employees
    where not department_id = 50 and not department_id = 80;
    
select *
    from employees
    where first_name = 'David';

select * 
    from jobs
    where min_salary = 4000;
    
select * 
    from jobs
    where min_salary > 8000;
    
select * 
    from jobs
    where max_salary >= 10000;
    
select * 
    from jobs
    where min_salary >= 4000 and max_salary <= 10000;
    
select * 
    from employees
    where job_id = 'IT_PROG' and salary > 5000;

-- order by
select first_name, last_name
    from employees
    order by first_name; -- first_name���� ��������
    
select first_name, last_name
    from employees
    order by first_name desc; -- ��������

select department_name
    from departments
    order by department_name desc; -- �������� 

select country_id, city
    from locations
    order by country_id, city; 
-- country_id �������� �������� ����, �� ���� city������ ����

select location_id, department_name
    from departments
    order by location_id desc, department_name;

-- between ������
-- �� ���� ������ �ش��ϴ� �����͸� ����Ҷ� ���Ǵ� Ȯ�忬����
select * 
    from employees
    where employee_id between 120 and 130;
    
select * 
    from employees
    where salary between 10000 and 12000
    order by salary;

-- IN ������
-- ���� ���� ������ ���� �����Ͽ� ��ġ�ϴ� �����͸� ����� �� ���
select *
    from employees
    where first_name in ('Steven', 'John', 'Peter')
    order by first_name;
    
select *
    from countries
    where country_id in ( 'US', 'IL' , 'SG' );
    
select * 
    from locations
    where city in ('Sao Paulo' , 'London' , 'Southlake' );
    
select * 
    from locations
    where city not in ('Sao Paulo' , 'London' , 'Southlake' );
    
-- IS NULL ������
-- Ư�� �Ӽ��� ���� NULL �������� ���Ͽ� ������ ��ȸ

select *
    from locations
    where state_province is null;
    
select * 
    from employees
    where commission_pct is not null
    order by commission_pct;

-- Like ������
-- ���ڿ� �Ӽ����� �κ������� ��ġ�ϴ� �͸� ����� �� ���
-- % 0�� �̻��� ���� ( ������ ����� ������ ��� ���� )
-- _ 1���� ���� ( ������ ������ ��� ���� )

select *
    from locations
    where city like 'South%';
-- South�� �����ϴ� ���ڿ� 

select *
    from locations
    where street_address like '%St';
-- St�� ������ ���ڿ�

select * 
    from locations
    where city like 'South____';
-- South�� �����ϴ� 9�ڸ� ���ڿ�

-- ���� ������
-- ������ �յ��� ���� ���Ͽ� ������ ��ȸ
-- union ������ ( �ߺ� ���� )
-- union all ������ ( �ߺ� ���� )
-- minus ������
-- intersect ������

select employee_id, first_name, department_id
    from employees
    where department_id = 60
    union
select employee_id, first_name, department_id
    from employees
    where department_id = 100;

-- �������� �����Ӽ����� �����ִ°͸� ����

select employee_id, first_name
    from employees
    where employee_id <= 160
union all
select employee_id, first_name
    from employees
    where employee_id >= 140;
-- ������ �ߺ�����

select employee_id, first_name
    from employees
    where employee_id <= 160
minus
select employee_id, first_name
    from employees
    where employee_id >= 140;
-- ������ 140 �̻��ΰ� ����

select employee_id, first_name
    from employees
    where employee_id <= 160
intersect
select employee_id, first_name
    from employees
    where employee_id >= 140;
-- ������ 140~160

select job_title
    from jobs
    order by job_title;
    
select country_name
    from countries
    order by country_name desc;
    
select *
    from employees
    where salary between 10000 and 12000;
    
select *
    from employees
    where job_id in ( 'IT_PROG', 'ST_MAN' );

select *
    from employees
    where manager_id is null;
    
select * 
    from departments
    where manager_id is not null;

select * 
    from employees
    where job_id like ( 'AD%' );
    
select * 
    from employees
    where first_name like ( '%ni%' );
    
select location_id, street_address, city
    from locations
    where location_id <= 3000
union all
select location_id, street_address, city
    from locations
    where location_id >= 2000;
    
    select location_id, street_address, city
    from locations
    where location_id <= 3000
minus
select location_id, street_address, city
    from locations
    where location_id >= 2000;

select location_id, street_address, city
    from locations
    where location_id <= 3000
intersect
select location_id, street_address, city
    from locations
    where location_id >= 2000;



    
    


