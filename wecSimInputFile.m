% clear; close all
%% Simulation Data
simu = simulationClass();
simu.simMechanicsFile = 'ellipsoid_PI.slx';
simu.solver='ode45';                    % 'ode4' for fixed step or 'ode45' for variable step
simu.mode = 'normal';                   % Specify Simulation Mode ('normal','accelerator','rapid-accelerator')
simu.explorer='off';                     % Turn SimMechanics Explorer (on/off)
simu.startTime = 0;
simu.rampTime = 30;
simu.endTime=200;
simu.dt = 0.01;
simu.rho=1025;
simu.stateSpace=1; %Fr state space added and can be used with regular waves
simu.nonlinearDt = 3*simu.dt;

%% Wave Information
% Regular Waves
 waves = waveClass('regular');
% waves.height = 0.8222;
% waves.period = 6;

%% Irregular Waves using JS Spectrum with Equal Energy and Seeded Phase
%waves = waveClass('irregular');           % Initialize Wave Class and Specify Type
waves.height = 0.8222;                       % Significant Wave Height [m]
waves.period = 6;                         % Peak Period [s]
waves.spectrumType = 'JS';                % Specify Wave Spectrum Type
waves.bem.option = 'EqualEnergy';         % Uses 'EqualEnergy' bins (default) 
waves.phaseSeed = 1;                      % Phase is seeded so eta is the same

%% Body Data
body(1) = bodyClass('ellipsoid.h5');
%body(1).hydroDataFile = 'C:/Users/um1023/Documents/RegularCIC_Fuzzycontroller/RegularCIC_Fuzzycontroller/hydroData/ellipsoid.h5';
body(1).mass = 'equilibrium';
body(1).inertia = ...
    [1.375264e6 1.375264e6 1.341721e6];
body(1).geometryFile = 'ellipsoid.stl' ;
body(1).quadDrag.cd=[1 0 1 0 1 0];
body(1).quadDrag.area=[25 0 pi*5^2 0 pi*5^5 0];

%% Selection of Linear and Nonlinear hydro forces
body(1).nonlinearHydro = 2;                       % Non-linear
%body(1).nonlinearHydro = 1;                       % weak Non-linear
%body(1).nonlinearHydro = 0;                       % linear hydro

%% PTO and Constraint Parameters
% Fixed Constraint
% constraint(1) = constraintClass('Constraint1');
% constraint(1).location = [0 0 -12.5];

% Translational PTO
pto(1) = ptoClass('PTO1');
pto(1).stiffness=0;
pto(1).damping=0;
pto(1).location = [0 0 -12.5];

%% PI Controller
controller(1).PI.Kp = 114430.732683;
controller(1).PI.Ki = -413154.308918;