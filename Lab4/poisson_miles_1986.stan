data {
  int M;//number of years analyzed
  real theta;
  vector[M] miles; //number of miles flown each year
  int y[M];//number of deaths
}

model {

  for (k in 1:M) {
    y[k] ~ poisson(miles[k]*theta);
  }
}
generated quantities {
  int y_1986 = poisson_rng(9100*theta);
}
