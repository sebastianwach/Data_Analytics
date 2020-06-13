functions {
  vector tail_delta(vector y, vector quantile, real[] x_r, int[] x_i) {
    vector[1] deltas;
    deltas[1] = inv_gamma_cdf(quantile[1],3, exp(y[1]))  - 0.98;
    return deltas;
  }
}

data {
  vector[1] y_guess; 
  vector[1] quantile;       // Target quantile
}

transformed data {

  vector[1] y;
  real x_r[0];
  int x_i[0];

  y = algebra_solver(tail_delta, y_guess, quantile, x_r, x_i);
}

generated quantities {
  real beta = exp(y[1]);
}