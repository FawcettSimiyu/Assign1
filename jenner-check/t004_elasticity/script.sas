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
