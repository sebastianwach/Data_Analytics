data {
  real mu;
  real phi;
}

generated quantities {
  real nbinDis=neg_binomial_2_rng(mu,phi);
}
