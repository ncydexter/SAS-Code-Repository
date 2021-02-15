/* Arithmetic Operators */
+ Addition
- Subtraction
* Multiplication
/ Division
** Exponentiation


/* Comparison Operators */
Equal to                       = EQ
Not Equal to                   ^= ~= NE
Greater than                   > GT
Greater than or equal to       >= GE
Less than                      > GT
Greater than or equal to       >= GE


/* Logical Operators */
AND &
OR |
NOT ^


/* IF Statement */
IF (conditions) THEN (statement);
ELSEIF (conditions) THEN (statement);
ELSE (statement);


/* DO Loop - within data steps */
data rand1;
seed = 123;
do i = 1 to 100;
  x = ranuni(seed);
  output;
  end;
run;

proc univarite data=rand1; run;


/* Sleep */
data _null_;
  x = sleep(90);
run;


/* GZIP */
gzip < file.txt > file.txt.gz
gzip -c file.txt > file.txt.gz


/* SQL row to variable */
proc sql noprint;
select name
into :var_list separated by ' t '
from fields
;
quit;

/* Random Number */
data a;
  call streaminit(0);
  do i = 1 to 6;
    random = rand('uniform');
  end;
run;


/* Check SAS License */
proc SETINIT; run;


/* Set missing to 0 */
proc stdize out=dsname reponly missing = 0;
  var varlist;
run;

proc stdize data=dsname_in out=dsname_out reponly missing = 0;
  var _numeric_;
run;


/* Transpose */
*rsubmit;
proc transpose data=dsname_in out=dsname_out (drop=_NAME_);
  var varlist;
  by variables;
  id variable;
run;
