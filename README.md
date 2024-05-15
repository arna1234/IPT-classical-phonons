# IPT-classical-phonons

This code wants to perform a DMFT (Dynamical Mean Field Theory) calculation including self-consistently the effect of classical phonons.

The Hamiltonian that should be studied is the Holstein-Hubbard one:

$$
H = \sum_{i,j,\sigma}t_{ij}c_{i,\sigma}^{\dagger}c_{j,\sigma}+h.c-\mu\sum_{i,\sigma}c_{i,\sigma}^{\dagger}c_{i,\sigma}-g\sum_{i,\sigma}X_ic_{i,\sigma}^{\dagger}c_{i,\sigma}+U\sum_{i}c_{i,\uparrow}^{\dagger}c_{i,\uparrow}c_{i,\downarrow}^{\dagger}c_{i,\downarrow}+\frac12k\sum_{i}X_i^2
$$

We treat the interacting part with a DMFT self-consistency with an IPT (Iterated Perturbation Theory) impurity solver but the phononic part is included self-consistently by solving a bounce of impurity problems and the averaging the impurity Green's functions obtained. The average Green's function is the local Green's function used in the DMFT loop. The probability distribution of the classical phonons is calculated self-consistently with the formula

$$
P(X)=e^{\beta(-\frac12kX^2+E_{el}(X))}
$$

where the electron energy is an approximation for the free-energy that cannot be calculated in an IPT context and it's expression is obtained by averaging over all the states the Hamiltonian. The final result is:

$$
E_{el}(X_i) = T\sum_{\omega_n}(\Delta(i\omega_n,X_i)-gX_i-\frac12\Sigma(i\omega_n,X_i))G_{ii}(i\omega_n,X_i)
$$
