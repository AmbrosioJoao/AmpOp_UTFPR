% Matriz vd (tensão)
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

% Matriz it (corrente)
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

it_mA = it * 1000;

% Plotando o gráfico
figure;
plot(vd, it_mA, '-o', 'LineWidth', 2, 'MarkerSize', 6);
xlabel('V_d (V)', 'FontSize', 12);
ylabel('I_t (mA)', 'FontSize', 12);
title('Curva Característica do Diodo', 'FontSize', 14);
grid on;

% Ajustes nos eixos (opcional)
xlim([min(vd) max(vd)]);
ylim([min(it) max(it_mA)]);