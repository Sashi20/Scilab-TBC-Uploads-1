// Variable declaration
n = 16                      // sample size
Mean = 3.42                 // sample mean
std_dev = 0.68              // standard deviation

// Calculation
// t(0.025) = 2.131
t = 2.131

y1 = Mean - t*(std_dev / sqrt(n))           // lower limit of range
y2 = Mean + t*(std_dev / sqrt(n))           // upper limit of range

// Result
printf ( "95%% confidence interval(in grams): ( %.2f , %.2f )",y1,y2)
