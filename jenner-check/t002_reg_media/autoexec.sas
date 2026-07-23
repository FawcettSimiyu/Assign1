/* cap input rows for the captured run */
options obs=100;

/* Substitutes for the upstream PROC IMPORT of svedka.csv (a hardcoded
   SAS Studio path, /home/u59960140/svedka.csv, not present in the repo):
   builds vodka_data in WORK with the same variable names and types the
   assignment scripts read, so their PROC logic runs unchanged. */
data vodka_data;
    length BrandName $16;
    input BrandName $ Tier TotalSales DollarSales PricePerUnit
          Mag News Outdoor Broad Print TotalMinusSales Marketshare;
    datalines;
Absolut       1 1580.4 24680.2 15.61 120.5 88.2 45.0 210.3 60.1 320.6 11.8
Grey_Goose    1 2210.7 41230.9 18.64 340.1 190.4 88.6 410.2 150.9 410.2 18.2
Ketel_One     1 1890.3 33110.5 17.51 260.7 140.2 70.1 330.6 110.4 380.1 15.1
Belvedere     1 1420.9 27650.1 19.45 300.2 160.6 82.3 360.9 130.7 290.4 9.7
Stolichnaya   2 1310.6 18420.7 14.05 90.3 60.1 30.2 150.4 45.6 260.8 8.4
Svedka        2 1480.2 19980.4 13.49 110.6 72.4 38.9 180.1 55.2 275.3 10.2
Skyy          2 1250.8 17110.2 13.68 85.1 55.7 28.4 140.9 40.3 240.6 7.9
Smirnoff      2 1720.5 22340.8 12.98 130.4 84.6 44.1 200.7 66.8 300.5 13.6
Three_Olives  2 1180.4 15980.3 13.54 70.2 48.9 24.6 120.3 35.1 220.4 6.8
New_Amsterdam 3 980.6  11240.5 11.46 40.1 28.3 14.2 80.6 20.4 180.2 4.9
Burnetts      3 870.3  9210.7  10.58 30.5 22.1 11.0 65.2 15.9 160.7 3.7
Popov         3 760.9  7480.2  9.83  22.4 16.8 8.5  50.1 11.2 140.3 2.8
Taaka         3 690.2  6320.4  9.16  18.1 13.2 6.7  42.6 9.1  128.6 2.1
Gordons       3 910.5  9980.1  10.96 35.7 25.4 12.9 72.8 18.6 172.9 4.3
Barton        3 640.8  5810.6  9.07  15.3 11.4 5.9  38.2 8.0  120.4 1.9
Nikolai       3 720.1  6740.9  9.36  20.2 14.9 7.4  46.9 10.3 134.7 2.4
Sobieski      2 1350.7 18960.3 14.04 95.6 63.8 32.1 158.7 48.4 268.2 8.9
Pinnacle      2 1420.3 19440.6 13.69 105.9 69.2 36.5 172.4 52.8 278.6 9.6
Chopin        1 1760.9 32870.4 18.67 240.3 128.6 66.8 310.5 100.2 360.7 14.4
Titos         1 2050.6 38210.7 18.63 310.8 172.9 84.2 390.1 140.6 400.3 17.1
;
run;
