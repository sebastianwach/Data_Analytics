data {
    int N;
    vector [N] mu;
    matrix [N,N] Sigma;
}


generated quantities {
  real y_pred[N];
  y_pred = multi_normal_rng(mu,Sigma);
  
}
