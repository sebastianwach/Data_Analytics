data {
  int M;//number of years analyzed
  real theta;
  vector[M] miles; //number of miles flown each year
  
}


generated quantities {
  int y_sim[M];
  for (k in 1:M) {
    y_sim[k] = poisson_rng(theta*miles[k]);
  }
}
