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

/*Question 6*/

proc reg data=vodka_data;
    model TotalSales = PricePerUnit Mag News Outdoor Broad Tier1_Dummy Tier2_Dummy / vif;
run;
