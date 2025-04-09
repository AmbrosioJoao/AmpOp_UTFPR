% Dados de tensão (V)
vd = [
    0.132
    0.233
    0.283
    0.4
    0.466
    0.447
    0.487
    0.504
    0.513
    0.53
    0.544
    0.555
    0.64
    0.67
    0.705
    0.726
];

% Dados de corrente (A)
it = [
    0
    0
    0
    1.28e-5
    5.80e-5
    3.68e-5
    9.50e-5
    1.40e-4
    1.70e-4
    2.34e-4
    3.20e-4
    4.11e-4
    2.20e-3
    4.00e-3
    8.64e-3
    0.013
];

% Evitar divisão por zero: substituir zeros por NaN (opcional)
it_no_zero = it;
it_no_zero(it_no_zero == 0) = NaN;

% Resistência DC (Ohms)
r_dc = vd ./ it_no_zero;

% Plotando resistência DC
figure;
plot(vd, r_dc, '-o', 'LineWidth', 2, 'MarkerSize', 6);
xlabel('V_d (V)', 'FontSize', 12);
ylabel('R_{DC} (Ohms)', 'FontSize', 12);
title('Resistência DC do Diodo', 'FontSize', 14);
grid on;
