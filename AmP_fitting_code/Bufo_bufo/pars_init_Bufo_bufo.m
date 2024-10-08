function [par, metaPar, txtPar] = pars_init_Bufo_bufo(metaData)

metaPar.model = 'std'; 

%% reference parameter (not to be changed) 
par.T_ref = 293.15;   free.T_ref = 0;   units.T_ref = 'K';        label.T_ref = 'Reference temperature'; 

%% core primary parameters 
par.T_A = 3401;       free.T_A   = 1;   units.T_A = 'K';          label.T_A = 'Arrhenius temperature'; 
par.z = 3.243;        free.z     = 1;   units.z = '-';            label.z = 'zoom factor for toad'; 
par.F_m = 6.5;        free.F_m   = 0;   units.F_m = 'l/d.cm^2';   label.F_m = '{F_m}, max spec searching rate'; 
par.kap_X = 0.8;      free.kap_X = 0;   units.kap_X = '-';        label.kap_X = 'digestion efficiency of food to reserve'; 
par.kap_P = 0.1;      free.kap_P = 0;   units.kap_P = '-';        label.kap_P = 'faecation efficiency of food to faeces'; 
par.v = 0.02124;      free.v     = 1;   units.v = 'cm/d';         label.v = 'energy conductance'; 
par.kap = 0.5661;       free.kap   = 1;   units.kap = '-';          label.kap = 'allocation fraction to soma'; 
par.kap_R = 0.95;     free.kap_R = 0;   units.kap_R = '-';        label.kap_R = 'reproduction efficiency'; 
par.p_M = 79.25	;     free.p_M   = 1;   units.p_M = 'J/d.cm^3';   label.p_M = '[p_M], vol-spec somatic maint'; 
par.p_T = 0;          free.p_T   = 0;   units.p_T = 'J/d.cm^2';   label.p_T = '{p_T}, surf-spec somatic maint'; 
par.k_J = 0.002;      free.k_J   = 0;   units.k_J = '1/d';        label.k_J = 'maturity maint rate coefficient'; 
par.E_G = 7296;       free.E_G   = 1;   units.E_G = 'J/cm^3';     label.E_G = '[E_G], spec cost for structure'; 
par.E_Hh = .01;       free.E_Hh  = 0;   units.E_Hh = 'J';         label.E_Hh = 'maturity at hatch'; 
par.E_Hb = 13.19;     free.E_Hb  = 1;   units.E_Hb = 'J';         label.E_Hb = 'maturity at birth'; 
par.E_H42 = 133.4;    free.E_H42 = 1;   units.E_H42 = 'J';        label.E_H42 = 'maturity at start met. climax'; 
par.E_Hp = 1.504e+05; free.E_Hp  = 1;   units.E_Hp = 'J';         label.E_Hp = 'maturity at puberty'; 
par.h_a = 5.573e-10	;  free.h_a   = 1;   units.h_a = '1/d^2';      label.h_a = 'Weibull aging acceleration'; 
par.s_G = 0.0001;     free.s_G   = 0;   units.s_G = '-';          label.s_G = 'Gompertz stress coefficient'; 
par.bn = 21.29;            free.bn=1;        units.bn='-';             label.bn='scaling factor for natural temp. stress';

%% other parameters 
par.E_Hj = 232;     free.E_Hj  = 1;   units.E_Hj = 'J';         label.E_Hj = 'maturity at metam'; 
par.del_M = 0.2474;   free.del_M = 1;   units.del_M = '-';        label.del_M = 'shape coefficient for toad'; 
par.del_Msvl=0.2215;  free.del_Msvl=1;  units.del_Msvl = '-';     label.del_Msvl = 'shape coefficient for svltadpole'; 
par.f = 1;            free.f = 0;       units.f = '-';            label.f = 'scaled functional response for 0-var data'; 
par.fBr = 1;          free.fBr = 0;     units.fBr = '-';          label.fBr = 'scaled functional response for Brunelli data'; 
par.f_tL = 1.;        free.f_tL = 0;    units.f_tL = '-';         label.f_tL = 'scaled functional response for tL data'; 
par.fL1 = 0.3454;     free.fL1 = 1;     units.fL1 = '-';          label.fL1 = 'scaled functional response for Laurila data low food'; 
par.fL2 = 1.;         free.fL2 = 0;     units.fL2 = '-';          label.fL2 = 'scaled functional response for Laurila data high food'; 
par.z_m = 2.463;      free.z_m = 1;     units.z_m = '-';          label.z_m = 'zoom factor for males'; 

%% set chemical parameters from Kooy2010 
[par, units, label, free] = addchem(par, units, label, free, metaData.phylum, metaData.class); 

%% Pack output: 
txtPar.units = units; txtPar.label = label; par.free = free; 
