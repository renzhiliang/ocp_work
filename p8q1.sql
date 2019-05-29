set pagesize 100;
set linesize 300;
ttitle 'employee and hiredate info';
accept fromdate prompt 'Please enter the from date range (MM/DD/YYYY):';
accept todate prompt 'Please enter the to date range (MM/DD/YYYY):';
select ename||','||job employees,hiredate from emp where hiredate>to_date('&fromdate','MM/DD/YYYY') and hiredate <to_date('&todate','MM/DD/YYYY');
ttitle off
