
 --#	DB Queries
--1	 Display all the information of the EMP table?
SELECT *
FROM EMP;
--2	 Display unique Jobs from EMP table?
SELECT UNIQUE JOB
FROM EMP;
--3	 List the emps in the asc order of their Salaries?
SELECT EMPNO,ENAME,SAL
FROM EMP
ORDER BY SAL;
--4	 List the details of the emps in asc order of the Dptnos and desc of Jobs?
SELECT EMPNO,ENAME,DEPTNO,sal,JOB
FROM EMP
ORDER BY JOB desc ,DEPTNO;
--5	 Display all the unique job groups in the descending order?
SELECT UNIQUE JOB
FROM EMP
ORDER BY JOB DESC;
---6	 Display all the details of all ‘Mgrs’
SELECT MGR
FROM EMP;
---7	 List the emps who joined before 1981
SELECT *
FROM EMP 
WHERE HIREDATE<('01-JAN-1981');
---8	 List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal
SELECT EMPNO,ENAME,SAL,SAL/30,SAL*12 ANNSAL
FROM EMP
ORDER BY ANNSAL;
--9	 Display the Empno, Ename, job, Hiredate, Exp of all Mgrs
;
--10	 List the Empno, Ename, Sal, Exp of all emps working for Mgr 7369

--11	 Display all the details of the emps whose Comm  Is more than their Sal
SELECT *
FROM EMP 
WHERE COMM>SAL
ORDER BY COMM;
--13	 List the emps along with their Exp and Daily Sal is more than Rs 100
select *
from emp
where sal/30>100;


--14	 List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order
select *
from emp
where job='CLERK'or job='ANALYST'
order by job DESC;
--15	 List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of seniority
select ename,empno,job,hiredate
from emp
where hiredate in ('01-MAY-1981','03-DEC-1981','17-DEC-1981','19-jan-1980')
order by hiredate;
--16	 List the emp who are working for the Deptno 10 or20
select *
from emp
where deptno in ('10','20')
order by deptno;

--17	 List the emps who are joined in the year 81
select *
from emp
where hiredate between '01-jan-81' and '31-12-81'
order by deptno;
--19	 List the emps Who Annual sal ranging from 22000 and 45000
select ename,empno,deptno,job,sal,sal*12 annlsal
from emp
where sal*12 between '22000' and '45000'
order by sal;
--20	 List the Enames those are having five characters in their Names
select ename ,length(ename)n_cha
from emp
where length(ename)=5;
--21	 List the Enames those are starting with ‘S’ and with five characters
select ename,empno,deptno
from emp
where ename like'S%' and length(ename)=5;
--22	 List the emps those are having four chars and third character must be ‘r’
select ename,empno,deptno
from emp
where length(ename)=4 and ename like '%%R%';
--23	 List the Five character names starting with ‘S’ and ending with ‘H’
select ename
from emp
where length(ename)=5 and ename like 'S%%%H';
--24	 List the emps who joined in January
;

--27	 List the emps whose names having a character set ‘ll’ together
select ename
from emp
where ename like '%LL%';
--29	 List the emps who does not belong to Deptno 20
select *
from emp
where deptno!=20
order by deptno;
--30	 List all the emps except ‘PRESIDENT’ & ‘MGR” in asc order of Salaries
select *
from emp
where job!='PRESIDENT' and job!='MANAGER'
order by sal;
--31	 List the emps whose Empno not starting with digit78
select *
from emp
where empno not like '78%'
order by empno;
--33	 List the emps who are working under ‘MGR’
select *
from emp
where mgr in (select empno from emp where job='MANAGER';
order by job;
--34	 List the emps who joined in any year but not belongs to the month of March
select *
from emp
where to_char(hiredate, 'MON')!='MARCH';
--35	 List all the Clerks of Deptno 20
select *
from emp
where deptno=20
order by ename;
--36	 List the emps of Deptno 30 or 10 joined in the year 1981
select *
from emp
where to_char(hiredate,'YYYY')=1981 and (deptno=30 or deptno=10);
--37	 Display the details of SMITH
select *
from emp
where ename like ('SMITH');
--38	 Display the location of SMITH
