data {
  real mu;
  real phi;
}

generated quantities {
  real S_sim=neg_binomial_2_rng(mu,phi);
}
