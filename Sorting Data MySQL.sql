#sorting :- 
# 1. Order By clause ASC  
#By default the orderby clause return rows in Asc order. 
select firstname, lastname from employee order by firstname ASC;

#Order By clause desc
select firstname, id from employee order by firstname asc, id DESC;
