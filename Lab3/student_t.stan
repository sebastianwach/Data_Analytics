data {
  real nu;  	//degrees of freedom
  real mu;	//mean
  real sigma;	//sigma
}

generated quantities {
  real S_sim=student_t_rng(nu,mu,sigma);
}
