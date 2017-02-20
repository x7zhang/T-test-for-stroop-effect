/*To find out if the average time for congruent is greater than 
the average time for incongruent------one-sided upper-tailed t-test
H0: U1 - U2 <= 0 (null hypothesis)
H1: U1 - U2 > 0 (alternative hypothesis)
*/
FILENAME REFFILE '/folders/myfolders/perceptual/stroopdata1.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=stroopdata;
	GETNAMES=YES;
RUN;

proc ttest data=stroopdata sides=u plots(shownull)=interval h0=0;
	class wordCondition;
	var time;
	title 'One-Sided t-Test Comparing congruent to incongruent';
run;