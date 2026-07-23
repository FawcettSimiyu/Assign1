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
