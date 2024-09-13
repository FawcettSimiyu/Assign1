/*Question 1*/
proc import datafile="/home/u59960140/svedka.csv"
    out=vodka_data
    dbms=csv
    replace;
    getnames=yes;
run;

proc print data=vodka_data(obs=10);
run;

proc contents data=vodka_data;
run;

/*Question 2*/

proc means data=vodka_data n mean std min max;
    var TotalSales DollarSales PricePerUnit Mag News Outdoor Broad Print TotalMinusSales Marketshare;
run;

proc freq data=vodka_data;
    tables BrandName Tier;
run;

proc univariate data=vodka_data;
    var TotalSales DollarSales PricePerUnit Mag News Outdoor Broad Print TotalMinusSales Marketshare;
    histogram / normal;
run;

/*Question 3*/

proc reg data=vodka_data;
    model TotalSales = PricePerUnit;
run;

proc print data=regout;
run;

/*Question 4*/

proc reg data=vodka_data;
    model TotalSales = PricePerUnit Mag News Outdoor Broad Print;
run;

proc print data=regout;
run;

/*Question 5*/

data vodka_data;
    set vodka_data;
    if Tier = 1 then Tier1_Dummy = 1;
    else Tier1_Dummy = 0;

    if Tier = 2 then Tier2_Dummy = 1;
    else Tier2_Dummy = 0;
run;

proc reg data=vodka_data;
    model TotalSales = PricePerUnit Mag News Outdoor Broad Tier1_Dummy Tier2_Dummy;
run;

proc print data=regout;
run;

/*Question 6*/

proc reg data=vodka_data;
    model TotalSales = PricePerUnit Mag News Outdoor Broad Tier1_Dummy Tier2_Dummy / vif;
run;

proc print data=regout;
run;

/*Question 7*/

data elasticity;
    set vodka_data;
    mean_total_sales = 1400.41445;
    mean_price_per_unit = 15.61;
    price_coef = -14.23154;

    elasticity = (price_coef * mean_price_per_unit) / mean_total_sales;
run;

proc print data=elasticity;
    var elasticity;
run;






