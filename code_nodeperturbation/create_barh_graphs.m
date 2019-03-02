% Create grouped bar graph for supplementary material (DISC1 paper)
function create_barh_graphs
% Specify colour scheme (colorbrewer: 4-class Accent)
global colour_scheme max_value
colour_scheme = [127, 201, 127; 190, 174, 212; 253, 192, 134; 255, 255, 153];
colour_scheme = colour_scheme./255;

%==========================================================================
% miR10b-KLF4: OE
%==========================================================================
% FM2 miR10b OE
fm2_miR10b_OE_data_zero = [0.1286 0.1309 0.1281 0.1305];
fm2_miR10b_OE_data_140  = [0      0      0      0     ];
fm2_miR10b_OE_title     = 'Functional module 2: miR10b-OE';

% FM2 KLF4 OE
fm2_klf4_OE_data_zero   = [0.1452 0.1313 0.1430 0.1343];
fm2_klf4_OE_data_140    = [0      0      0      0     ];
fm2_klf4_OE_title       = 'Functional module 2: KLF4-OE';

% FM4 miR10b OE
fm4_miR10b_OE_data_zero = [0.1255 0.1298 0.1233 0.1305];
fm4_miR10b_OE_data_140  = [0      0      0      0     ];
fm4_miR10b_OE_title     = 'Functional module 4: miR10b-OE';

% FM4 KLF4 OE
fm4_klf4_OE_data_zero   = [0.1411 0.1244 0.1421 0.1216];
fm4_klf4_OE_data_140    = [0      0      0      0     ];
fm4_klf4_OE_title       = 'Functional module 4: KLF4-OE';

max_value               = max([fm2_miR10b_OE_data_zero fm2_miR10b_OE_data_140 ...
                               fm2_klf4_OE_data_zero   fm2_klf4_OE_data_140 ...
                               fm4_miR10b_OE_data_zero fm4_miR10b_OE_data_140 ...
                               fm4_klf4_OE_data_zero   fm4_klf4_OE_data_140])+ 0.0025;
                           
% Make figure with four subplots and fit it to A4 paper
fig        = tight_subplot(4,1,0);
set(gcf, 'Units', 'centimeters', 'Position', [2 2 20/2 29/2]);

% Plot FM2 miR10b OE
plot_barh(fig, 1, fm2_miR10b_OE_data_zero,  fm2_miR10b_OE_data_140, fm2_miR10b_OE_title);

% Plot FM2 KLF4 OE
plot_barh(fig, 2, fm2_klf4_OE_data_zero,    fm2_klf4_OE_data_140,   fm2_klf4_OE_title);

% Plot FM4 miR10b OE
plot_barh(fig, 3, fm4_miR10b_OE_data_zero,  fm4_miR10b_OE_data_140, fm4_miR10b_OE_title);

% Plot FM4 KLF4 OE
plot_barh(fig, 4, fm4_klf4_OE_data_zero,    fm4_klf4_OE_data_140,   fm4_klf4_OE_title);

% Save this plot
print('01-miR10b-KLF4_OE.svg', '-dsvg');

% Close this figure
close(gcf);

% Clear some variables to prevent accidental usage elsewhere
clear fm2_miR10b_OE_data_zero fm2_klf4_OE_data_zero  fm4_miR10b_OE_data_zero ... 
      fm4_klf4_OE_data_zero   fm2_miR10b_OE_data_140 fm2_klf4_OE_data_140 ...
      fm4_miR10b_OE_data_140  fm4_klf4_OE_data_140   fm2_miR10b_OE_title ...
      fm2_klf4_OE_title       fm4_miR10b_OE_title    fm4_klf4_OE_title

%==========================================================================
% miR10b-KLF4: KO
%==========================================================================
% FM 2 miR10b-KO
fm2_miR10b_KO_data_zero = [0.1454 0.1355 0.1370 0.1389];
fm2_miR10b_KO_data_140  = [0      0      0      0     ];
fm2_miR10b_KO_title     = 'Functional module 2: miR10b-KO';

% FM 2 KLF4-KO
fm2_klf4_KO_data_zero   = [0.1418 0.1326 0.1313 0.1405];
fm2_klf4_KO_data_140    = [0      0      0      0     ];
fm2_klf4_KO_title       = 'Functional module 2: KLF4-KO';

% FM 4 miR10b-KO
fm4_miR10b_KO_data_zero = [0.1350 0.1329 0.1330 0.1361];
fm4_miR10b_KO_data_140  = [0      0      0      0     ];
fm4_miR10b_KO_title     = 'Functional module 4: miR10b-KO';

% FM 4 KLF4-KO
fm4_klf4_KO_data_zero   = [0.1329 0.1315 0.1280 0.1370];
fm4_klf4_KO_data_140    = [0      0      0      0     ];
fm4_klf4_KO_title       = 'Functional module 4: KLF4-KO';

max_value               = max([fm2_miR10b_KO_data_zero fm2_miR10b_KO_data_140 ...
                               fm2_klf4_KO_data_zero   fm2_klf4_KO_data_140 ...
                               fm4_miR10b_KO_data_zero fm4_miR10b_KO_data_140 ...
                               fm4_klf4_KO_data_zero   fm4_klf4_KO_data_140])+ 0.0025;

% Make figure with four subplots and fit it to A4 paper
fig        = tight_subplot(4,1,0);
set(gcf, 'Units', 'centimeters', 'Position', [2 2 20/2 29/2]);

% Plot FM2 miR10b KO
plot_barh(fig, 1, fm2_miR10b_KO_data_zero,  fm2_miR10b_KO_data_140, fm2_miR10b_KO_title);

% Plot FM2 KLF4 KO
plot_barh(fig, 2, fm2_klf4_KO_data_zero,    fm2_klf4_KO_data_140,   fm2_klf4_KO_title);

% Plot FM4 miR10b KO
plot_barh(fig, 3, fm4_miR10b_KO_data_zero,  fm4_miR10b_KO_data_140, fm4_miR10b_KO_title);

% Plot FM4 KLF4 KO
plot_barh(fig, 4, fm4_klf4_KO_data_zero,    fm4_klf4_KO_data_140,   fm4_klf4_KO_title);

% Save this plot
print('01-miR10b-KLF4_KO.svg', '-dsvg');

% Close this figure
close(gcf);

% Clear some variables to prevent accidental usage elsewhere
clear fm2_miR10b_KO_data_zero fm2_klf4_KO_data_zero  fm4_miR10b_KO_data_zero ...
      fm4_klf4_KO_data_zero   fm2_miR10b_KO_data_140 fm2_klf4_KO_data_140 ...
      fm4_miR10b_KO_data_140  fm4_klf4_KO_data_140   fm2_miR10b_KO_title ...
      fm2_klf4_KO_title       fm4_miR10b_KO_title    fm4_klf4_KO_title
% -------------------------------------------------------------------------

% =========================================================================
% miR17-STAT3: OE
% =========================================================================
% FM 2 miR17-OE
fm2_miR17_OE_data_zero = [0.1272 0.1305 0.1260 0.1319];
fm2_miR17_OE_data_140  = [0      0      0      0   ];
fm2_miR17_OE_title     = 'Functional module 2: miR17-OE';

% FM 2 STAT3-OE
fm2_stat3_OE_data_zero = [0.1496 0.1243 0.2159 0.1234];
fm2_stat3_OE_data_140  = [0      0      0.0750 0     ];
fm2_stat3_OE_title     = 'Functional module 2: STAT3-OE';

% FM 4 miR17-OE
fm4_miR17_OE_data_zero = [0.1203 0.1260 0.1191 0.1284];
fm4_miR17_OE_data_140  = [0      0      0      0     ];
fm4_miR17_OE_title     = 'Functional module 4: miR17-OE';

% FM 4 STAT3-OE
fm4_stat3_OE_data_zero = [0.1392 0.120 0.2765 0.1209];
fm4_stat3_OE_data_140  = [0      0     0.1470 0     ];
fm4_stat3_OE_title     = 'Functional module 4: STAT3-OE';

max_value              = max([fm2_miR17_OE_data_zero   fm2_miR17_OE_data_140 ...
                              fm2_stat3_OE_data_zero   fm2_stat3_OE_data_140 ...
                              fm4_miR17_OE_data_zero   fm4_miR17_OE_data_140 ...
                              fm4_stat3_OE_data_zero   fm4_stat3_OE_data_140])+ 0.0025;

% Make figure with four subplots and fit it to A4 paper
fig        = tight_subplot(4,1,0);
set(gcf, 'Units', 'centimeters', 'Position', [2 2 20/2 29/2]);

% Plot FM 2 miR17-OE
plot_barh(fig, 1, fm2_miR17_OE_data_zero,  fm2_miR17_OE_data_140, fm2_miR17_OE_title);

% Plot FM 2 STAT3-OE
plot_barh(fig, 2, fm2_stat3_OE_data_zero,  fm2_stat3_OE_data_140, fm2_stat3_OE_title);

% Plot FM 4 miR17-OE
plot_barh(fig, 3, fm4_miR17_OE_data_zero,  fm4_miR17_OE_data_140, fm4_miR17_OE_title);

% Plot FM 4 STAT3-OE
plot_barh(fig, 4, fm4_stat3_OE_data_zero,  fm4_stat3_OE_data_140, fm4_stat3_OE_title);

% Save this plot
print('02-miR17-STAT3_OE.svg', '-dsvg');

% Close this figure
close(gcf);

% Clear some variables to prevent accidental usage elsewhere
clear fm2_miR17_OE_data_zero fm2_stat3_OE_data_zero fm4_miR17_OE_data_zero ...
      fm4_stat3_OE_data_zero fm2_miR17_OE_data_140  fm2_stat3_OE_data_140 ...
      fm4_miR17_OE_data_140  fm4_stat3_OE_data_140  fm2_miR17_OE_title ...
      fm2_stat3_OE_title     fm4_miR17_OE_title     fm4_stat3_OE_title
  
% =========================================================================
% miR17-STAT3: KO
% =========================================================================
% FM 2 miR17-KO
fm2_miR17_KO_data_zero = [0.1472 0.1357 0.1345 0.1384];
fm2_miR17_KO_data_140  = [0      0      0      0   ];
fm2_miR17_KO_title     = 'Functional module 2: miR17-KO';

% FM 2 STAT3-KO
fm2_stat3_KO_data_zero = [0.1398 0.1405 0.1314 0.1402];
fm2_stat3_KO_data_140  = [0      0      0      0     ];
fm2_stat3_KO_title     = 'Functional module 2: STAT3-KO';

% FM 4 miR17-KO
fm4_miR17_KO_data_zero = [0.1373 0.1298 0.1328 0.1342];
fm4_miR17_KO_data_140  = [0      0      0      0     ];
fm4_miR17_KO_title     = 'Functional module 4: miR17-KO';

% FM 4 STAT3-KO
fm4_stat3_KO_data_zero = [0.1351 0.1326 0.1264 0.1377];
fm4_stat3_KO_data_140  = [0      0      0      0     ];
fm4_stat3_KO_title     = 'Functional module 4: STAT3-KO';

max_value              = max([fm2_miR17_KO_data_zero   fm2_miR17_KO_data_140 ...
                              fm2_stat3_KO_data_zero   fm2_stat3_KO_data_140 ...
                              fm4_miR17_KO_data_zero   fm4_miR17_KO_data_140 ...
                              fm4_stat3_KO_data_zero   fm4_stat3_KO_data_140])+ 0.0025;

% Make figure with four subplots and fit it to A4 paper
fig        = tight_subplot(4,1,0);
set(gcf, 'Units', 'centimeters', 'Position', [2 2 20/2 29/2]);

% Plot FM 2 miR17-KO
plot_barh(fig, 1, fm2_miR17_KO_data_zero,  fm2_miR17_KO_data_140, fm2_miR17_KO_title);

% Plot FM 2 STAT3-KO
plot_barh(fig, 2, fm2_stat3_KO_data_zero,  fm2_stat3_KO_data_140, fm2_stat3_KO_title);

% Plot FM 4 miR17-KO
plot_barh(fig, 3, fm4_miR17_KO_data_zero,  fm4_miR17_KO_data_140, fm4_miR17_KO_title);

% Plot FM 4 STAT3-KO
plot_barh(fig, 4, fm4_stat3_KO_data_zero,  fm4_stat3_KO_data_140, fm4_stat3_KO_title);

% Save this plot
print('02-miR17-STAT3_KO.svg', '-dsvg');

% Close this figure
close(gcf);

% Clear some variables to prevent accidental usage elsewhere
clear fm2_miR17_KO_data_zero fm2_stat3_KO_data_zero fm4_miR17_KO_data_zero ...
      fm4_stat3_KO_data_zero fm2_miR17_KO_data_140  fm2_stat3_KO_data_140 ...
      fm4_miR17_KO_data_140  fm4_stat3_KO_data_140  fm2_miR17_KO_title ...
      fm2_stat3_KO_title     fm4_miR17_KO_title     fm4_stat3_KO_title
% -------------------------------------------------------------------------

% =========================================================================
% miR20a-CCND1: OE
% =========================================================================
% FM 2 miR20a-OE
fm2_miR20a_OE_data_zero = [0.1261 0.1335 0.1268 0.1339];
fm2_miR20a_OE_data_140  = [0      0      0      0     ];
fm2_miR20a_OE_title     = 'Functional module 2: miR20a-OE';

% FM 2 CCND1-OE
fm2_ccnd1_OE_data_zero  = [0.1405 0.1301 0.1353 0.1327];
fm2_ccnd1_OE_data_140   = [0      0      0      0     ];
fm2_ccnd1_OE_title      = 'Functional module 2: CCND1-OE';

% FM 4 miR20a-OE
fm4_miR20a_OE_data_zero = [0.1171 0.1247 0.1197 0.1255];
fm4_miR20a_OE_data_140  = [0      0      0      0     ];
fm4_miR20a_OE_title     = 'Functional module 4: miR20a-OE';

% FM 4 CCND1-OE
fm4_ccnd1_OE_data_zero = [0.1429 0.1216 0.1398 0.1215];
fm4_ccnd1_OE_data_140  = [0      0      0      0     ];
fm4_ccnd1_OE_title     = 'Functional module 4: CCND1-OE';

max_value              = max([fm2_miR20a_OE_data_zero  fm2_miR20a_OE_data_140 ...
                              fm2_ccnd1_OE_data_zero   fm2_ccnd1_OE_data_140 ...
                              fm4_miR20a_OE_data_zero  fm4_miR20a_OE_data_140 ...
                              fm4_ccnd1_OE_data_zero   fm4_ccnd1_OE_data_140])+ 0.0025;

% Make figure with four subplots and fit it to A4 paper
fig        = tight_subplot(4,1,0);
set(gcf, 'Units', 'centimeters', 'Position', [2 2 20/2 29/2]);

% Plot FM 2 miR20a-OE
plot_barh(fig, 1, fm2_miR20a_OE_data_zero, fm2_miR20a_OE_data_140, fm2_miR20a_OE_title);

% Plot FM 2 CCND1-OE
plot_barh(fig, 2, fm2_ccnd1_OE_data_zero,  fm2_ccnd1_OE_data_140,  fm2_ccnd1_OE_title);

% Plot FM 4 miR20a-OE
plot_barh(fig, 3, fm4_miR20a_OE_data_zero, fm4_miR20a_OE_data_140, fm4_miR20a_OE_title);

% Plot FM 4 CCND1-OE
plot_barh(fig, 4, fm4_ccnd1_OE_data_zero,  fm4_ccnd1_OE_data_140,  fm4_ccnd1_OE_title);

% Save this plot
print('03-miR20a-CCND1_OE.svg', '-dsvg');

% Close this figure
close(gcf);

% Clear some variables to prevent accidental usage elsewhere
clear fm2_miR20a_OE_data_zero fm2_ccnd1_OE_data_zero fm4_miR20a_OE_data_zero ...
      fm4_ccnd1_OE_data_zero  fm2_miR20a_OE_data_140 fm2_ccnd1_OE_data_140 ...
      fm4_miR20a_OE_data_140  fm4_ccnd1_OE_data_140  fm2_miR20a_OE_title ...
      fm2_ccnd1_OE_title      fm4_miR20a_OE_title    fm4_ccnd1_OE_title
  
% =========================================================================
% miR20a-CCND1: KO
% =========================================================================
% FM 2 miR20a-KO
fm2_miR20a_KO_data_zero = [0.1434 0.1392 0.1341 0.1409];
fm2_miR20a_KO_data_140  = [0      0      0      0     ];
fm2_miR20a_KO_title     = 'Functional module 2: miR20a-KO';

% FM 2 CCND1-KO
fm2_ccnd1_KO_data_zero  = [0.1463 0.1380 0.1341 0.1384];
fm2_ccnd1_KO_data_140   = [0      0      0      0     ];
fm2_ccnd1_KO_title      = 'Functional module 2: CCND1-KO';

% FM 4 miR20a-KO
fm4_miR20a_KO_data_zero = [0.1369 0.1296 0.1307 0.1357];
fm4_miR20a_KO_data_140  = [0      0      0      0     ];
fm4_miR20a_KO_title     = 'Functional module 4: miR20a-KO';

% FM 4 CCND1-KO
fm4_ccnd1_KO_data_zero  = [0.1315 0.1323 0.1274 0.1346];
fm4_ccnd1_KO_data_140   = [0      0      0      0     ];
fm4_ccnd1_KO_title      = 'Functional module 4: CCND1-KO';

max_value              = max([fm2_miR20a_KO_data_zero  fm2_miR20a_KO_data_140 ...
                              fm2_ccnd1_KO_data_zero   fm2_ccnd1_KO_data_140 ...
                              fm4_miR20a_KO_data_zero  fm4_miR20a_KO_data_140 ...
                              fm4_ccnd1_KO_data_zero   fm4_ccnd1_KO_data_140])+ 0.0025;

% Make figure with four subplots and fit it to A4 paper
fig        = tight_subplot(4,1,0);
set(gcf, 'Units', 'centimeters', 'Position', [2 2 20/2 29/2]);

% Plot FM 2 miR20a-KO
plot_barh(fig, 1, fm2_miR20a_KO_data_zero, fm2_miR20a_KO_data_140, fm2_miR20a_KO_title);

% Plot FM 2 CCND1-KO
plot_barh(fig, 2, fm2_ccnd1_KO_data_zero,  fm2_ccnd1_KO_data_140,  fm2_ccnd1_KO_title);

% Plot FM 4 miR20a-KO
plot_barh(fig, 3, fm4_miR20a_KO_data_zero, fm4_miR20a_KO_data_140, fm4_miR20a_KO_title);

% Plot FM 4 CCND1-KO
plot_barh(fig, 4, fm4_ccnd1_KO_data_zero,  fm4_ccnd1_KO_data_140,  fm4_ccnd1_KO_title);

% Save this plot
print('03-miR20a-CCND1_KO.svg', '-dsvg');

% Close this figure
close(gcf);

% Clear some variables to prevent accidental usage elsewhere
clear fm2_miR20a_KO_data_zero fm2_ccnd1_KO_data_zero fm4_miR20a_KO_data_zero ...
      fm4_ccnd1_KO_data_zero  fm2_miR20a_KO_data_140 fm2_ccnd1_KO_data_140 ...
      fm4_miR20a_KO_data_140  fm4_ccnd1_KO_data_140  fm2_miR20a_KO_title ...
      fm2_ccnd1_KO_title      fm4_miR20a_KO_title    fm4_ccnd1_KO_title
% -------------------------------------------------------------------------

% =========================================================================
% miR20a-STAT3: OE
% =========================================================================
% FM 2 miR20a-OE
fm2_miR20a_OE_data_zero = [0.1261 0.1335 0.1268 0.1339];
fm2_miR20a_OE_data_140  = [0      0      0      0    ];
fm2_miR20a_OE_title     = 'Functional module 2: miR20a-OE';

% FM 2 STAT3-OE
fm2_stat3_OE_data_zero  = [0.1496 0.1243 0.2159 0.1234];
fm2_stat3_OE_data_140   = [0      0      0.0750 0     ];
fm2_stat3_OE_title      = 'Functional module 2: STAT3-OE';

% FM 4 miR20a-OE
fm4_miR20a_OE_data_zero = [0.1171 0.1247 0.1197 0.1255];
fm4_miR20a_OE_data_140  = [0      0      0      0     ];
fm4_miR20a_OE_title     = 'Functional module 4: miR20a-OE';

% FM 4 STAT3-OE
fm4_stat3_OE_data_zero = [0.1392 0.1200 0.2765 0.1209];
fm4_stat3_OE_data_140  = [0      0      0.1470 0     ];
fm4_stat3_OE_title     = 'Functional module 4: STAT3-OE';

max_value              = max([fm2_miR20a_OE_data_zero  fm2_miR20a_OE_data_140 ...
                              fm2_stat3_OE_data_zero   fm2_stat3_OE_data_140 ...
                              fm4_miR20a_OE_data_zero  fm4_miR20a_OE_data_140 ...
                              fm4_stat3_OE_data_zero   fm4_stat3_OE_data_140])+ 0.0025;

% Make figure with four subplots and fit it to A4 paper
fig        = tight_subplot(4,1,0);
set(gcf, 'Units', 'centimeters', 'Position', [2 2 20/2 29/2]);

% Plot FM 2 miR20a-OE
plot_barh(fig, 1, fm2_miR20a_OE_data_zero, fm2_miR20a_OE_data_140, fm2_miR20a_OE_title);

% Plot FM 2 CCND1-OE
plot_barh(fig, 2, fm2_stat3_OE_data_zero,  fm2_stat3_OE_data_140,  fm2_stat3_OE_title);

% Plot FM 4 miR20a-OE
plot_barh(fig, 3, fm4_miR20a_OE_data_zero, fm4_miR20a_OE_data_140, fm4_miR20a_OE_title);

% Plot FM 4 CCND1-OE
plot_barh(fig, 4, fm4_stat3_OE_data_zero,  fm4_stat3_OE_data_140,  fm4_stat3_OE_title);

% Save this plot
print('04-miR20a-STAT3_OE.svg', '-dsvg');

% Close this figure
close(gcf);

% Clear some variables to prevent accidental usage elsewhere
clear fm2_miR20a_OE_data_zero fm2_stat3_OE_data_zero fm4_miR20a_OE_data_zero ...
      fm4_stat3_OE_data_zero  fm2_miR20a_OE_data_140 fm2_stat3_OE_data_140 ...
      fm4_miR20a_OE_data_140  fm4_stat3_OE_data_140  fm2_miR20a_OE_title ...
      fm2_stat3_OE_title      fm4_miR20a_OE_title    fm4_stat3_OE_title

% =========================================================================
% miR20a-STAT3: KO
% =========================================================================
% FM 2 miR20a-KO
fm2_miR20a_KO_data_zero = [0.1434 0.1392 0.1341 0.1409];
fm2_miR20a_KO_data_140  = [0      0      0      0     ];
fm2_miR20a_KO_title     = 'Functional module 2: miR20a-KO';

% FM 2 STAT3-KO
fm2_stat3_KO_data_zero  = [0.1398 0.1405 0.1314 0.1402];
fm2_stat3_KO_data_140   = [0      0      0      0     ];
fm2_stat3_KO_title      = 'Functional module 2: STAT3-KO';

% FM 4 miR20a-KO
fm4_miR20a_KO_data_zero = [0.1369 0.1296 0.1307 0.1357];
fm4_miR20a_KO_data_140  = [0      0      0      0     ];
fm4_miR20a_KO_title     = 'Functional module 4: miR20a-KO';

% FM 4 STAT3-KO
fm4_stat3_KO_data_zero = [0.1351 0.1326 0.1264 0.1377];
fm4_stat3_KO_data_140  = [0      0      0      0     ];
fm4_stat3_KO_title     = 'Functional module 4: STAT3-KO';

max_value              = max([fm2_miR20a_KO_data_zero  fm2_miR20a_KO_data_140 ...
                              fm2_stat3_KO_data_zero   fm2_stat3_KO_data_140 ...
                              fm4_miR20a_KO_data_zero  fm4_miR20a_KO_data_140 ...
                              fm4_stat3_KO_data_zero   fm4_stat3_KO_data_140])+ 0.0025;

% Make figure with four subplots and fit it to A4 paper
fig        = tight_subplot(4,1,0);
set(gcf, 'Units', 'centimeters', 'Position', [2 2 20/2 29/2]);

% Plot FM 2 miR20a-KO
plot_barh(fig, 1, fm2_miR20a_KO_data_zero, fm2_miR20a_KO_data_140, fm2_miR20a_KO_title);

% Plot FM 2 CCND1-KO
plot_barh(fig, 2, fm2_stat3_KO_data_zero,  fm2_stat3_KO_data_140,  fm2_stat3_KO_title);

% Plot FM 4 miR20a-KO
plot_barh(fig, 3, fm4_miR20a_KO_data_zero, fm4_miR20a_KO_data_140, fm4_miR20a_KO_title);

% Plot FM 4 CCND1-KO
plot_barh(fig, 4, fm4_stat3_KO_data_zero,  fm4_stat3_KO_data_140,  fm4_stat3_KO_title);

% Save this plot
print('04-miR20a-STAT3_KO.svg', '-dsvg');

% Close this figure
close(gcf);

% Clear some variables to prevent accidental usage elsewhere
clear fm2_miR20a_KO_data_zero fm2_stat3_KO_data_zero fm4_miR20a_KO_data_zero ...
      fm4_stat3_KO_data_zero  fm2_miR20a_KO_data_140 fm2_stat3_KO_data_140 ...
      fm4_miR20a_KO_data_140  fm4_stat3_KO_data_140  fm2_miR20a_KO_title ...
      fm2_stat3_KO_title      fm4_miR20a_KO_title    fm4_stat3_KO_title
% -------------------------------------------------------------------------

% =========================================================================
% miR20b-STAT3: OE
% =========================================================================
% FM 2 miR20b-OE
fm2_miR20b_OE_data_zero = [0.1264 0.1320 0.1245 0.1351];
fm2_miR20b_OE_data_140  = [0      0      0      0     ];
fm2_miR20b_OE_title     = 'Functional module 2: miR20b-OE';

% FM 2 STAT3-OE
fm2_stat3_OE_data_zero  = [0.1496 0.1243 0.2159 0.1234];
fm2_stat3_OE_data_140   = [0      0      0.0750 0     ];
fm2_stat3_OE_title      = 'Functional module 2: STAT3-OE';

% FM 4 miR20b-OE
fm4_miR20b_OE_data_zero = [0.1256 0.1282 0.1211 0.1318];
fm4_miR20b_OE_data_140  = [0      0      0      0     ];
fm4_miR20b_OE_title     = 'Functional module 4: miR20b-OE';

% FM 4 STAT3-OE
fm4_stat3_OE_data_zero = [0.1392 0.1200 0.2765 0.1209];
fm4_stat3_OE_data_140  = [0      0      0.1470 0     ];
fm4_stat3_OE_title     = 'Functional module 4: STAT3-OE';

max_value              = max([fm2_miR20b_OE_data_zero  fm2_miR20b_OE_data_140 ...
                              fm2_stat3_OE_data_zero   fm2_stat3_OE_data_140 ...
                              fm4_miR20b_OE_data_zero  fm4_miR20b_OE_data_140 ...
                              fm4_stat3_OE_data_zero   fm4_stat3_OE_data_140])+ 0.0025;

% Make figure with four subplots and fit it to A4 paper
fig        = tight_subplot(4,1,0);
set(gcf, 'Units', 'centimeters', 'Position', [2 2 20/2 29/2]);

% Plot FM 2 miR20b-OE
plot_barh(fig, 1, fm2_miR20b_OE_data_zero, fm2_miR20b_OE_data_140, fm2_miR20b_OE_title);

% Plot FM 2 STAT3-OE
plot_barh(fig, 2, fm2_stat3_OE_data_zero,  fm2_stat3_OE_data_140,  fm2_stat3_OE_title);

% Plot FM 4 miR20b-OE
plot_barh(fig, 3, fm4_miR20b_OE_data_zero, fm4_miR20b_OE_data_140, fm4_miR20b_OE_title);

% Plot FM 4 STAT-OE
plot_barh(fig, 4, fm4_stat3_OE_data_zero,  fm4_stat3_OE_data_140,  fm4_stat3_OE_title);

% Save this plot
print('05-miR20b-STAT3_OE.svg', '-dsvg');

% Close this figure
close(gcf);

% Clear some variables to prevent accidental usage elsewhere
clear fm2_miR20b_OE_data_zero fm2_stat3_OE_data_zero fm4_miR20b_OE_data_zero ...
      fm4_stat3_OE_data_zero  fm2_miR20b_OE_data_140 fm2_stat3_OE_data_140 ...
      fm4_miR20b_OE_data_140  fm4_stat3_OE_data_140  fm2_miR20b_OE_title ...
      fm2_stat3_OE_title      fm4_miR20b_OE_title    fm4_stat3_OE_title

% =========================================================================
% miR20b-STAT3: KO
% =========================================================================
% FM 2 miR20b-KO
fm2_miR20b_KO_data_zero = [0.1421 0.1359 0.1439 0.1376];
fm2_miR20b_KO_data_140  = [0      0      0      0     ];
fm2_miR20b_KO_title     = 'Functional module 2: miR20b-KO';

% FM 2 STAT3-KO
fm2_stat3_KO_data_zero  = [0.1398 0.1405 0.1314 0.1402];
fm2_stat3_KO_data_140   = [0      0      0      0     ];
fm2_stat3_KO_title      = 'Functional module 2: STAT3-KO';

% FM 4 miR20b-KO
fm4_miR20b_KO_data_zero = [0.1338 0.1326 0.1313 0.1336];
fm4_miR20b_KO_data_140  = [0      0      0      0     ];
fm4_miR20b_KO_title     = 'Functional module 4: miR20b-KO';

% FM 4 STAT3-KO
fm4_stat3_KO_data_zero = [0.1351 0.1326 0.1264 0.1377];
fm4_stat3_KO_data_140  = [0      0      0      0     ];
fm4_stat3_KO_title     = 'Functional module 4: STAT3-KO';

max_value              = max([fm2_miR20b_KO_data_zero  fm2_miR20b_KO_data_140 ...
                              fm2_stat3_KO_data_zero   fm2_stat3_KO_data_140 ...
                              fm4_miR20b_KO_data_zero  fm4_miR20b_KO_data_140 ...
                              fm4_stat3_KO_data_zero   fm4_stat3_KO_data_140])+ 0.0025;

% Make figure with four subplots and fit it to A4 paper
fig        = tight_subplot(4,1,0);
set(gcf, 'Units', 'centimeters', 'Position', [2 2 20/2 29/2]);

% Plot FM 2 miR20b-KO
plot_barh(fig, 1, fm2_miR20b_KO_data_zero, fm2_miR20b_KO_data_140, fm2_miR20b_KO_title);

% Plot FM 2 CCND1-KO
plot_barh(fig, 2, fm2_stat3_KO_data_zero,  fm2_stat3_KO_data_140,  fm2_stat3_KO_title);

% Plot FM 4 miR20b-KO
plot_barh(fig, 3, fm4_miR20b_KO_data_zero, fm4_miR20b_KO_data_140, fm4_miR20b_KO_title);

% Plot FM 4 CCND1-KO
plot_barh(fig, 4, fm4_stat3_KO_data_zero,  fm4_stat3_KO_data_140,  fm4_stat3_KO_title);

% Save this plot
print('05-miR20b-STAT3_KO.svg', '-dsvg');

% Close this figure
close(gcf);

% Clear some variables to prevent accidental usage elsewhere
clear fm2_miR20b_KO_data_zero fm2_stat3_KO_data_zero fm4_miR20b_KO_data_zero ...
      fm4_stat3_KO_data_zero  fm2_miR20b_KO_data_140 fm2_stat3_KO_data_140 ...
      fm4_miR20b_KO_data_140  fm4_stat3_KO_data_140  fm2_miR20b_KO_title ...
      fm2_stat3_KO_title      fm4_miR20b_KO_title    fm4_stat3_KO_title
% -------------------------------------------------------------------------

% =========================================================================
% miR103a-CREB1: OE
% =========================================================================
% FM 2 miR103a-OE
fm2_miR103a_OE_data_zero = [0.1284 0.1320 0.1259 0.1290];
fm2_miR103a_OE_data_140  = [0      0      0      0     ];
fm2_miR103a_OE_title     = 'Functional module 2: miR103a-OE';

% FM 2 CREB1-OE
fm2_creb1_OE_data_zero   = [0.1508 0.1255 0.1522 0.1275];
fm2_creb1_OE_data_140    = [0      0      0      0     ];
fm2_creb1_OE_title       = 'Functional module 2: CREB1-OE';

% FM 3 miR103a-OE
fm3_miR103a_OE_data_zero = [0.1284 0.1306 0.1277 0.1327];
fm3_miR103a_OE_data_140  = [0      0      0      0     ];
fm3_miR103a_OE_title     = 'Functional module 3: miR103a-OE';

% FM 3 CREB1-OE
fm3_creb1_OE_data_zero   = [0.1576 0.1286 0.1713 0.1288];
fm3_creb1_OE_data_140    = [0      0      0      0     ];
fm3_creb1_OE_title       = 'Functional module 3: CREB1-OE';

% FM 4 miR103a-OE
fm4_miR103a_OE_data_zero = [0.1228 0.1276 0.1221 0.1277];
fm4_miR103a_OE_data_140  = [0      0      0      0     ];
fm4_miR103a_OE_title     = 'Functional module 4: miR103a-OE';

% FM 4 CREB1-OE
fm4_creb1_OE_data_zero   = [0.1427 0.1270 0.1473 0.1242];
fm4_creb1_OE_data_140    = [0      0      0      0     ];
fm4_creb1_OE_title       = 'Functional module 4: CREB1-OE';

max_value              = max([fm2_miR103a_OE_data_zero fm2_miR103a_OE_data_140 ...
                              fm2_creb1_OE_data_zero   fm2_creb1_OE_data_140 ...
                              fm3_miR103a_OE_data_zero fm3_miR103a_OE_data_140 ...
                              fm3_creb1_OE_data_zero   fm3_creb1_OE_data_140 ...
                              fm4_miR103a_OE_data_zero fm4_miR103a_OE_data_140 ...
                              fm4_creb1_OE_data_zero   fm4_creb1_OE_data_140])+ 0.0025;

% Make figure with four subplots and fit it to A4 paper
fig        = tight_subplot(6,1,0);
set(gcf, 'Units', 'centimeters', 'Position', [2 2 20/2 20]);

% Plot FM 2 miR103a-OE
plot_barh(fig, 1, fm2_miR103a_OE_data_zero, fm2_miR103a_OE_data_140, fm2_miR103a_OE_title);

% Plot FM 2 CREB1-OE
plot_barh(fig, 2, fm2_creb1_OE_data_zero,   fm2_creb1_OE_data_140,   fm2_creb1_OE_title);

% Plot FM 3 miR103a-OE
plot_barh(fig, 3, fm3_miR103a_OE_data_zero, fm3_miR103a_OE_data_140, fm3_miR103a_OE_title);

% Plot FM 3 CREB1-OE
plot_barh(fig, 4, fm3_creb1_OE_data_zero,   fm3_creb1_OE_data_140,   fm3_creb1_OE_title);

% Plot FM 4 miR103a-OE
plot_barh(fig, 5, fm4_miR103a_OE_data_zero, fm4_miR103a_OE_data_140, fm4_miR103a_OE_title);

% Plot FM 4 CREB1-OE
plot_barh(fig, 6, fm4_creb1_OE_data_zero,   fm4_creb1_OE_data_140,   fm4_creb1_OE_title);

% Save this plot
print('06-miR103a-CREB1_OE.svg', '-dsvg');

% Close this figure
close(gcf);

% Clear some variables to prevent accidental usage elsewhere
clear fm2_miR103a_OE_data_zero fm2_creb1_OE_data_zero   fm3_miR103a_OE_data_zero ...
      fm3_creb1_OE_data_zero   fm4_miR103a_OE_data_zero fm4_creb1_OE_data_zero ...
      fm3_creb1_OE_data_140    fm4_miR103a_OE_data_140  fm4_creb1_OE_data_140 ...
      fm2_miR103a_OE_title     fm2_creb1_OE_title       fm3_miR103a_OE_title ...
      fm3_creb1_OE_title       fm4_miR103a_OE_title     fm4_creb1_OE_title

% =========================================================================
% miR103a-CREB1: KO
% =========================================================================
% FM 2 miR103a-KO
fm2_miR103a_KO_data_zero = [0.1405 0.1348 0.1374 0.1375];
fm2_miR103a_KO_data_140  = [0      0      0      0     ];
fm2_miR103a_KO_title     = 'Functional module 2: miR103a-KO';

% FM 2 CREB1-KO
fm2_creb1_KO_data_zero   = [0.1409 0.1386 0.1306 0.1394];
fm2_creb1_KO_data_140    = [0      0      0      0     ];
fm2_creb1_KO_title       = 'Functional module 2: CREB1-KO';

% FM 3 miR103a-KO
fm3_miR103a_KO_data_zero = [0.2717 0.1404 0.1551 0.1380];
fm3_miR103a_KO_data_140  = [0.1637 0      0      0     ];
fm3_miR103a_KO_title     = 'Functional module 3: miR103a-KO';

% FM 3 CREB1-KO
fm3_creb1_KO_data_zero   = [0.2399 0.1429 0.1332 0.1405];
fm3_creb1_KO_data_140    = [0.1338 0      0      0.0001];
fm3_creb1_KO_title       = 'Functional module 3: CREB1-KO';

% FM 4 miR103a-KO
fm4_miR103a_KO_data_zero = [0.1320 0.1321 0.1357 0.1321];
fm4_miR103a_KO_data_140  = [0      0      0      0     ];
fm4_miR103a_KO_title     = 'Functional module 4: miR103a-KO';

% FM 4 CREB1-KO
fm4_creb1_KO_data_zero   = [0.1300 0.1328 0.1283 0.1355];
fm4_creb1_KO_data_140    = [0      0      0      0     ];
fm4_creb1_KO_title       = 'Functional module 4: CREB1-KO';

max_value              = max([fm2_miR103a_KO_data_zero fm2_miR103a_KO_data_140 ...
                              fm2_creb1_KO_data_zero   fm2_creb1_KO_data_140 ...
                              fm3_miR103a_KO_data_zero fm3_miR103a_KO_data_140 ...
                              fm3_creb1_KO_data_zero   fm3_creb1_KO_data_140 ...
                              fm4_miR103a_KO_data_zero fm4_miR103a_KO_data_140 ...
                              fm4_creb1_KO_data_zero   fm4_creb1_KO_data_140])+ 0.0025;

% Make figure with four subplots and fit it to A4 paper
fig        = tight_subplot(6,1,0);
set(gcf, 'Units', 'centimeters', 'Position', [2 2 20/2 20]);

% Plot FM 2 miR103a-KO
plot_barh(fig, 1, fm2_miR103a_KO_data_zero, fm2_miR103a_KO_data_140, fm2_miR103a_KO_title);

% Plot FM 2 CREB1-KO
plot_barh(fig, 2, fm2_creb1_KO_data_zero,   fm2_creb1_KO_data_140,   fm2_creb1_KO_title);

% Plot FM 3 miR103a-KO
plot_barh(fig, 3, fm3_miR103a_KO_data_zero, fm3_miR103a_KO_data_140, fm3_miR103a_KO_title);

% Plot FM 3 CREB1-KO
plot_barh(fig, 4, fm3_creb1_KO_data_zero,   fm3_creb1_KO_data_140,   fm3_creb1_KO_title);

% Plot FM 4 miR103a-KO
plot_barh(fig, 5, fm4_miR103a_KO_data_zero, fm4_miR103a_KO_data_140, fm4_miR103a_KO_title);

% Plot FM 4 CREB1-KO
plot_barh(fig, 6, fm4_creb1_KO_data_zero,   fm4_creb1_KO_data_140,   fm4_creb1_KO_title);

% Save this plot
print('06-miR103a-CREB1_KO.svg', '-dsvg');

% Close this figure
close(gcf);

% Clear some variables to prevent accidental usage elsewhere
clear fm2_miR103a_KO_data_zero fm2_creb1_KO_data_zero   fm3_miR103a_KO_data_zero ...
      fm3_creb1_KO_data_zero   fm4_miR103a_KO_data_zero fm4_creb1_KO_data_zero ...
      fm3_creb1_KO_data_140    fm4_miR103a_KO_data_140  fm4_creb1_KO_data_140 ...
      fm2_miR103a_KO_title     fm2_creb1_KO_title       fm3_miR103a_KO_title ...
      fm3_creb1_KO_title       fm4_miR103a_KO_title     fm4_creb1_KO_title
% -------------------------------------------------------------------------

% =========================================================================
% miR155-STAT3: OE
% =========================================================================
% FM 2 miR155-OE
fm2_miR155_OE_data_zero = [0.1417 0.1386 0.1313 0.1411];
fm2_miR155_OE_data_140  = [0      0      0      0     ];
fm2_miR155_OE_title     = 'Functional module 2: miR155-OE';

% FM 2 STAT3-OE
fm2_stat3_OE_data_zero  = [0.1496 0.1243 0.2159 0.1234];
fm2_stat3_OE_data_140   = [0      0      0.0750 0     ];
fm2_stat3_OE_title      = 'Functional module 2: STAT3-OE';

% FM 3 miR155-OE
fm3_miR155_OE_data_zero = [0.1289 0.1331 0.1281 0.1337];
fm3_miR155_OE_data_140  = [0      0      0      0     ];
fm3_miR155_OE_title     = 'Functional module 3: miR155-OE';

% FM 3 STAT3-OE
fm3_stat3_OE_data_zero  = [0.1479 0.1317 0.3197 0.1296];
fm3_stat3_OE_data_140   = [0      0      0.2300 0     ];
fm3_stat3_OE_title      = 'Functional module 3: STAT3-OE';

% FM 6 miR155-OE
fm6_miR155_OE_data_zero = [0.1328 0.1312 0.1253 0.1308];
fm6_miR155_OE_data_140  = [0      0      0      0     ];
fm6_miR155_OE_title     = 'Functional module 6: miR155-OE';

% FM 6 STAT3-OE
fm6_stat3_OE_data_zero   = [0.1470 0.1308 0.1467 0.1301];
fm6_stat3_OE_data_140    = [0      0      0      0     ];
fm6_stat3_OE_title       = 'Functional module 6: STAT3-OE';

% FM 8 miR155-OE
fm8_miR155_OE_data_zero  = [0.7644 0.3871 0.7599 0.3851];
fm8_miR155_OE_data_140   = [0.7488 0.2440 0.7500 0.2590];
fm8_miR155_OE_title      = 'Functional module 8: miR155-OE';

% FM 8 STAT3-OE
fm8_stat3_OE_data_zero   = [1.0000 0.1507 1.0000 0.1515];
fm8_stat3_OE_data_140    = [1.0000 0      1.0000 0     ];
fm8_stat3_OE_title       = 'Functional module 8: STAT3-OE';

max_value                = max([fm2_miR155_OE_data_zero fm2_miR155_OE_data_140 ...
                                fm2_stat3_OE_data_zero  fm2_stat3_OE_data_140 ...
                                fm3_miR155_OE_data_zero fm3_miR155_OE_data_140 ...
                                fm3_stat3_OE_data_zero  fm3_stat3_OE_data_140 ...
                                fm6_miR155_OE_data_zero fm6_miR155_OE_data_140 ...
                                fm6_stat3_OE_data_zero  fm6_stat3_OE_data_140 ...
                                fm8_stat3_OE_data_zero  fm8_stat3_OE_data_140])+ 0.0025;

% Make figure with four subplots and fit it to A4 paper
fig        = tight_subplot(8,1,0);
set(gcf, 'Units', 'centimeters', 'Position', [0 0 20/2 28]);

% Plot FM 2 miR155-OE
plot_barh(fig, 1, fm2_miR155_OE_data_zero, fm2_miR155_OE_data_140, fm2_miR155_OE_title);

% Plot FM 2 STAT3-OE
plot_barh(fig, 2, fm2_stat3_OE_data_zero,  fm2_stat3_OE_data_140,  fm2_stat3_OE_title);

% Plot FM 3 miR155-OE
plot_barh(fig, 3, fm3_miR155_OE_data_zero, fm3_miR155_OE_data_140, fm3_miR155_OE_title);

% Plot FM 3 STAT3-OE
plot_barh(fig, 4, fm3_stat3_OE_data_zero,  fm3_stat3_OE_data_140,  fm3_stat3_OE_title);

% Plot FM 6 miR155-OE
plot_barh(fig, 5, fm6_miR155_OE_data_zero, fm6_miR155_OE_data_140, fm6_miR155_OE_title);

% Plot FM 6 STAT3-OE
plot_barh(fig, 6, fm6_stat3_OE_data_zero,  fm6_stat3_OE_data_140,  fm6_stat3_OE_title);

% Plot FM 8 miR155-OE
plot_barh(fig, 7, fm8_miR155_OE_data_zero, fm8_miR155_OE_data_140, fm8_miR155_OE_title);

% Plot FM 8 STAT3-OE
plot_barh(fig, 8, fm8_stat3_OE_data_zero,  fm8_stat3_OE_data_140, fm8_stat3_OE_title);

% Save this plot
print('07-miR155-STAT3_OE.svg', '-dsvg');

% Close this figure
close(gcf);

% Clear some variables to prevent accidental usage elsewhere
clear fm2_miR155_OE_data_zero fm2_stat3_OE_data_zero  fm3_miR155_OE_data_zero ...
      fm3_stat3_OE_data_zero  fm6_miR155_OE_data_zero fm6_stat3_OE_data_zero ...
      fm8_miR155_OE_data_zero fm8_stat3_OE_data_zero  fm2_miR155_OE_data_140 ...
      fm2_stat3_OE_data_140   fm3_miR155_OE_data_140  fm3_stat3_OE_data_140 ...
      fm6_miR155_OE_data_140  fm6_stat3_OE_data_140   fm8_miR155_OE_data_140 ...
      fm8_stat3_OE_data_140   fm2_miR155_OE_title     fm2_stat3_OE_title...
      fm3_miR155_OE_title     fm3_stat3_OE_title      fm6_miR155_OE_title ...
      fm6_stat3_OE_title      fm8_miR155_OE_title     fm8_stat3_OE_title
  
% =========================================================================
% miR155-STAT3: KO
% =========================================================================
% FM 2 miR155-KO
fm2_miR155_KO_data_zero = [0.1414 0.1366 0.1360 0.1361];
fm2_miR155_KO_data_140  = [0      0      0      0     ];
fm2_miR155_KO_title     = 'Functional module 2: miR155-KO';

% FM 2 STAT3-KO
fm2_stat3_KO_data_zero  = [0.1398 0.1405 0.1314 0.1402];
fm2_stat3_KO_data_140   = [0      0      0      0     ];
fm2_stat3_KO_title      = 'Functional module 2: STAT3-KO';

% FM 3 miR155-KO
fm3_miR155_KO_data_zero = [0.2479 0.1306 0.2696 0.1357];
fm3_miR155_KO_data_140  = [0.1437 0      0.1830 0     ];
fm3_miR155_KO_title     = 'Functional module 3: miR155-KO';

% FM 3 STAT3-KO
fm3_stat3_KO_data_zero  = [0.2402 0.1392 0.1328 0.1400];
fm3_stat3_KO_data_140   = [0.1486 0      0      0     ];
fm3_stat3_KO_title      = 'Functional module 3: STAT3-KO';

% FM 6 miR155-KO
fm6_miR155_KO_data_zero = [0.1518 0.1344 0.1540 0.1348];
fm6_miR155_KO_data_140  = [0.0054 0      0.0171 0     ];
fm6_miR155_KO_title     = 'Functional module 6: miR155-KO';

% FM 6 STAT3-KO
fm6_stat3_KO_data_zero   = [0.1540 0.1363 0.1344 0.1388];
fm6_stat3_KO_data_140    = [0.0057 0      0      0     ];
fm6_stat3_KO_title       = 'Functional module 6: STAT3-KO';

% FM 8 miR155-KO
fm8_miR155_KO_data_zero  = [0.7488 0.3625 0.7868 0.3311];
fm8_miR155_KO_data_140   = [0.7459 0.2320 0.7740 0.1827];
fm8_miR155_KO_title      = 'Functional module 8: miR155-KO';

% FM 8 STAT3-KO
fm8_stat3_KO_data_zero   = [0.6777 0.3804 0.7569 0.3766];
fm8_stat3_KO_data_140    = [0.6540 0.2380 0.7450 0.2442];
fm8_stat3_KO_title       = 'Functional module 8: STAT3-KO';

max_value                = max([fm2_miR155_KO_data_zero fm2_miR155_KO_data_140 ...
                                fm2_stat3_KO_data_zero  fm2_stat3_KO_data_140 ...
                                fm3_miR155_KO_data_zero fm3_miR155_KO_data_140 ...
                                fm3_stat3_KO_data_zero  fm3_stat3_KO_data_140 ...
                                fm6_miR155_KO_data_zero fm6_miR155_KO_data_140 ...
                                fm6_stat3_KO_data_zero  fm6_stat3_KO_data_140 ...
                                fm8_stat3_KO_data_zero  fm8_stat3_KO_data_140])+ 0.0025;

% Make figure with four subplots and fit it to A4 paper
fig        = tight_subplot(8,1,0);
set(gcf, 'Units', 'centimeters', 'Position', [0 0 20/2 28]);

% Plot FM 2 miR155-KO
plot_barh(fig, 1, fm2_miR155_KO_data_zero, fm2_miR155_KO_data_140, fm2_miR155_KO_title);

% Plot FM 2 STAT3-KO
plot_barh(fig, 2, fm2_stat3_KO_data_zero,  fm2_stat3_KO_data_140,  fm2_stat3_KO_title);

% Plot FM 3 miR155-KO
plot_barh(fig, 3, fm3_miR155_KO_data_zero, fm3_miR155_KO_data_140, fm3_miR155_KO_title);

% Plot FM 3 STAT3-KO
plot_barh(fig, 4, fm3_stat3_KO_data_zero,  fm3_stat3_KO_data_140,  fm3_stat3_KO_title);

% Plot FM 6 miR155-KO
plot_barh(fig, 5, fm6_miR155_KO_data_zero, fm6_miR155_KO_data_140, fm6_miR155_KO_title);

% Plot FM 6 STAT3-KO
plot_barh(fig, 6, fm6_stat3_KO_data_zero,  fm6_stat3_KO_data_140,  fm6_stat3_KO_title);

% Plot FM 8 miR155-KO
plot_barh(fig, 7, fm8_miR155_KO_data_zero, fm8_miR155_KO_data_140, fm8_miR155_KO_title);

% Plot FM 8 STAT3-KO
plot_barh(fig, 8, fm8_stat3_KO_data_zero,  fm8_stat3_KO_data_140, fm8_stat3_KO_title);

% Save this plot
print('07-miR155-STAT3_KO.svg', '-dsvg');

% Close this figure
close(gcf);

% Clear some variables to prevent accidental usage elsewhere
clear fm2_miR155_KO_data_zero fm2_stat3_KO_data_zero  fm3_miR155_KO_data_zero ...
      fm3_stat3_KO_data_zero  fm6_miR155_KO_data_zero fm6_stat3_KO_data_zero ...
      fm8_miR155_KO_data_zero fm8_stat3_KO_data_zero  fm2_miR155_KO_data_140 ...
      fm2_stat3_KO_data_140   fm3_miR155_KO_data_140  fm3_stat3_KO_data_140 ...
      fm6_miR155_KO_data_140  fm6_stat3_KO_data_140   fm8_miR155_KO_data_140 ...
      fm8_stat3_KO_data_140   fm2_miR155_KO_title     fm2_stat3_KO_title...
      fm3_miR155_KO_title     fm3_stat3_KO_title      fm6_miR155_KO_title ...
      fm6_stat3_KO_title      fm8_miR155_KO_title     fm8_stat3_KO_title
% -------------------------------------------------------------------------
% =========================================================================
% miR17-CCND1: OE
% =========================================================================
% FM 2 miR20a-OE
fm2_miR17_OE_data_zero = [0.1272 0.1305 0.1260 0.1319];
fm2_miR17_OE_data_140  = [0      0      0      0     ];
fm2_miR17_OE_title     = 'Functional module 2: miR17-OE';

% FM 2 CCND1-OE
fm2_ccnd1_OE_data_zero  = [0.1405 0.1301 0.1353 0.1327];
fm2_ccnd1_OE_data_140   = [0      0      0      0     ];
fm2_ccnd1_OE_title      = 'Functional module 2: CCND1-OE';

% FM 4 miR17-OE
fm4_miR17_OE_data_zero = [0.1203 0.1260 0.1191 0.1284];
fm4_miR17_OE_data_140  = [0      0      0      0     ];
fm4_miR17_OE_title     = 'Functional module 4: miR17-OE';

% FM 4 CCND1-OE
fm4_ccnd1_OE_data_zero = [0.1429 0.1216 0.1398 0.1215];
fm4_ccnd1_OE_data_140  = [0      0      0      0     ];
fm4_ccnd1_OE_title     = 'Functional module 4: CCND1-OE';

max_value              = max([fm2_miR17_OE_data_zero  fm2_miR17_OE_data_140 ...
                              fm2_ccnd1_OE_data_zero   fm2_ccnd1_OE_data_140 ...
                              fm4_miR17_OE_data_zero  fm4_miR17_OE_data_140 ...
                              fm4_ccnd1_OE_data_zero   fm4_ccnd1_OE_data_140])+ 0.0025;

% Make figure with four subplots and fit it to A4 paper
fig        = tight_subplot(4,1,0);
set(gcf, 'Units', 'centimeters', 'Position', [2 2 20/2 29/2]);

% Plot FM 2 miR20a-OE
plot_barh(fig, 1, fm2_miR17_OE_data_zero, fm2_miR17_OE_data_140, fm2_miR17_OE_title);

% Plot FM 2 CCND1-OE
plot_barh(fig, 2, fm2_ccnd1_OE_data_zero,  fm2_ccnd1_OE_data_140,  fm2_ccnd1_OE_title);

% Plot FM 4 miR20a-OE
plot_barh(fig, 3, fm4_miR17_OE_data_zero, fm4_miR17_OE_data_140, fm4_miR17_OE_title);

% Plot FM 4 CCND1-OE
plot_barh(fig, 4, fm4_ccnd1_OE_data_zero,  fm4_ccnd1_OE_data_140,  fm4_ccnd1_OE_title);

% Save this plot
print('03-miR17-CCND1_OE.svg', '-dsvg');

% Close this figure
close(gcf);

% Clear some variables to prevent accidental usage elsewhere
clear fm2_miR17a_OE_data_zero fm2_ccnd1_OE_data_zero fm4_miR17_OE_data_zero ...
      fm4_ccnd1_OE_data_zero  fm2_miR17_OE_data_140 fm2_ccnd1_OE_data_140 ...
      fm4_miR17_OE_data_140  fm4_ccnd1_OE_data_140  fm2_miR17_OE_title ...
      fm2_ccnd1_OE_title      fm4_miR17_OE_title    fm4_ccnd1_OE_title
% -------------------------------------------------------------------------

% =========================================================================
% miR17-CCND1: KO
% =========================================================================
% FM 2 miR17-KO
fm2_miR17_KO_data_zero = [0.1472 0.1357 0.1345 0.1384];
fm2_miR17_KO_data_140  = [0      0      0      0     ];
fm2_miR17_KO_title     = 'Functional module 2: miR17-KO';

% FM 2 CCND1-KO
fm2_ccnd1_KO_data_zero  = [0.1463 0.1380 0.1341 0.1384];
fm2_ccnd1_KO_data_140   = [0      0      0      0     ];
fm2_ccnd1_KO_title      = 'Functional module 2: CCND1-KO';

% FM 4 miR17-KO
fm4_miR17_KO_data_zero = [0.1373 0.1298 0.1328 0.1342];
fm4_miR17_KO_data_140  = [0      0      0      0     ];
fm4_miR17_KO_title     = 'Functional module 4: miR17-KO';

% FM 4 CCND1-KO
fm4_ccnd1_KO_data_zero  = [0.1315 0.1323 0.1274 0.1346];
fm4_ccnd1_KO_data_140   = [0      0      0      0     ];
fm4_ccnd1_KO_title      = 'Functional module 4: CCND1-KO';

max_value              = max([fm2_miR17_KO_data_zero  fm2_miR17_KO_data_140 ...
                              fm2_ccnd1_KO_data_zero   fm2_ccnd1_KO_data_140 ...
                              fm4_miR17_KO_data_zero  fm4_miR17_KO_data_140 ...
                              fm4_ccnd1_KO_data_zero   fm4_ccnd1_KO_data_140])+ 0.0025;

% Make figure with four subplots and fit it to A4 paper
fig        = tight_subplot(4,1,0);
set(gcf, 'Units', 'centimeters', 'Position', [2 2 20/2 29/2]);

% Plot FM 2 miR17-KO
plot_barh(fig, 1, fm2_miR17_KO_data_zero, fm2_miR17_KO_data_140, fm2_miR17_KO_title);

% Plot FM 2 CCND1-KO
plot_barh(fig, 2, fm2_ccnd1_KO_data_zero,  fm2_ccnd1_KO_data_140,  fm2_ccnd1_KO_title);

% Plot FM 4 miR17-KO
plot_barh(fig, 3, fm4_miR17_KO_data_zero, fm4_miR17_KO_data_140, fm4_miR17_KO_title);

% Plot FM 4 CCND1-KO
plot_barh(fig, 4, fm4_ccnd1_KO_data_zero,  fm4_ccnd1_KO_data_140,  fm4_ccnd1_KO_title);

% Save this plot
print('03-miR17-CCND1_KO.svg', '-dsvg');

% Close this figure
close(gcf);

% Clear some variables to prevent accidental usage elsewhere
clear fm2_miR17_KO_data_zero fm2_ccnd1_KO_data_zero fm4_miR17_KO_data_zero ...
      fm4_ccnd1_KO_data_zero  fm2_miR17_KO_data_140 fm2_ccnd1_KO_data_140 ...
      fm4_miR17_KO_data_140  fm4_ccnd1_KO_data_140  fm2_miR17_KO_title ...
      fm2_ccnd1_KO_title      fm4_miR17_KO_title    fm4_ccnd1_KO_title
% -------------------------------------------------------------------------  
%% Creating legend as a separate file

% Define some dummy data points
data = [0.14 0.13 0.13 0.13];

% Create a new figure
fig        = figure;
set(gcf, 'Units', 'centimeters', 'Position', [2 2 20 29.4]);

% Plot the dummy data
for i = 1:4
    barh(i, data(i), 'FaceColor', colour_scheme(i,:));
    hold on
end
legend({'Simulation 1'; 'Simulation 2'; 'Simulation 3'; 'Simulation 4'}, ...
        'Orientation', 'horizontal', 'Location', 'southoutside', 'FontSize', 12);
    
% Save figure
print('legend_figure.svg', '-dsvg');

% Close this figure
close(gcf);

end

%% Create plot
function plot_barh(fig, figure_num, data_zero, data_140, title_text)
global colour_scheme max_value
axes(fig(figure_num));
count = 1;

% Plot t=0
for i = 1:4
    barh(count,data_zero(i),'FaceColor', colour_scheme(i,:));
    text(max_value, count, num2str(data_zero(i), '%.4f'), 'vert','middle','horiz','left', 'FontSize', 7.5);
    count = count + 1;
    hold on
    % Make axis thicker
    set(gca, 'LineWidth', 1.5);
end

count = count + 1;

% Plot t=140
for i = 1:4
    barh(count,data_140(i),'FaceColor', colour_scheme(i,:));
    text(max_value, count, num2str(data_140(i), '%.4f'), 'vert','middle','horiz','left', 'FontSize', 7.5);
    count = count + 1;
    hold on
    % Make axis thicker
    set(gca, 'LineWidth', 1.5);
end

% Labels on y axis
yticks(1:9)
yticklabels({'';'t=0';'';'';'';'';'';'t=140';'';'';''});
ytickangle(90);

% x axis and y axis limit
xlim([0 max_value+0.025]);
ylim([0 12]);

% Remove tick marks from y axis and turn x axis ticks off
fig(figure_num).YAxis.TickLength = [0,0];
fig(figure_num).XAxis.TickValues = '';

% Define tick label size
set(gca, 'FontSize', 10);

% Title of this figure
text((max_value+0.025)/2, 11, title_text, ...
    'HorizontalAlignment', 'center', 'FontSize', 9);

% Turn box off
set(fig(figure_num), 'box', 'off');

% Make axis thicker
set(gca, 'LineWidth', 1.5);

end