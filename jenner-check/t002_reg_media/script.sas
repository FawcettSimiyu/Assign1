/*Question 3*/

proc reg data=vodka_data;
    model TotalSales = PricePerUnit;
run;

/*Question 4*/

proc reg data=vodka_data;
    model TotalSales = PricePerUnit Mag News Outdoor Broad Print;
run;
