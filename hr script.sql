SELECT empno, ename, deptno, sal, ROW_NUMBER()OVER(ORDER BY sal)
FROM emp
ORDER BY sal;

--deptno wise on salary give the row no
SELECT empno,ename,deptno,sal,ROW_NUMBER() OVER(PARTITION BY deptno ORDER BY deptno)
FROM emp
ORDER BY deptno;
--Rank the salary in EMP table
SELECT empno,ename,deptno,sal, RANK() OVER(ORDER BY sal)
FROM emp
ORDER BY sal;
--dept wise salary ranking 
SELECT empno,ename,deptno,sal, RANK() OVER(PARTITION BY deptno ORDER BY deptno,sal)
FROM emp
ORDER BY deptno,sal;
--find the rank of 2975 over order by sal
SELECT RANK(1300) WITHIN GROUP (ORDER BY SAl)
FROM emp
ORDER BY sal;
--rank of 1300 over order by sal
SELECT RANK(1300) WITHIN GROUP (ORDER BY sal)
FROM emp
ORDER BY sal;
--find the rank of martin order ny salary
SELECT RANK('martin') WITHIN GROUP(ORDER BY ename)
FROM emp;

---DENSE rank 
===========================================
SELECT empno,ename,deptno,sal, DENSE_RANK() OVER(PARTITION BY deptno ORDER BY deptno,sal)
FROM emp
ORDER BY deptno,sal

---min and max salary order by deptno wise
SELECT deptno,
      MIN(sal) keep(DENSE_RANK FIRST ORDER BY comm),  --DEptno-30==>min sal is 950 but the min comm 0 has sal 1500
      MAX(sal) keep(DENSE_RANK LAST ORDER BY comm)    --deptno-30==>max sal is 3000 but the max comm 1400 has sal 1250
FROM 
    emp
GROUP BY
    deptno
ORDER BY
    deptno;
    
UPDATE emp SET comm=null WHERE empno=7900;    
---------------
  SELECT empno,ename,deptno,sal,comm, DENSE_RANK() OVER(PARTITION BY deptno ORDER BY comm)
FROM emp
ORDER BY comm ; 

NSERT INTO EMP VALUES(9999,'JOHN','CLERK',7698,to_date('23-1-1992','dd-mm-yyyy'),4000,NULL,30,104);