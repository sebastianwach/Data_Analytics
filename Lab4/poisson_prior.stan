data {
  int M;//number of years analyzed
  real lam;
}


generated quantities {
  int y_sim[M];
  for (k in 1:M) {
    y_sim[k] = poisson_rng(lam);
  }
}
