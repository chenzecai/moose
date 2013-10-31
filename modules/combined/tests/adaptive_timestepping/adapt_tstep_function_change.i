# This is a test designed to evaluate the cabability of the
# AdaptiveDT TimeStepper to adjust time step size according to
# a function.  For example, if the power input function for a BISON
# simulation rapidly increases or decreases, the AdaptiveDT
# TimeStepper should take time steps small enough to capture the
# oscillation.

[GlobalParams]
  disp_x = disp_x
  disp_y = disp_y
  disp_z = disp_z
  order = FIRST
  family = LAGRANGE
  block = 1
[]

[Mesh]
  file = 1hex8_10mm_cube.e
#  file = 8hex_20mm.e
[]

[Functions]
  [./Fiss_Function]
    type = PiecewiseLinear
    x = '0 1e6  2e6  2.001e6 2.002e6'
    y = '0 3e8  3e8  12e8    0'
  [../]
[]

[Variables]
  [./disp_x]
  [../]

  [./disp_y]
  [../]

  [./disp_z]
  [../]

  [./temp]
    initial_condition = 300.0
  [../]
[]


[AuxVariables]
  [./vonmises]
    order = CONSTANT
    family = MONOMIAL
  [../]
[]

[SolidMechanics]
  [./solid]
    disp_x = disp_x
    disp_y = disp_y
    disp_z = disp_z
    temp = temp
  [../]
[]


[Kernels]
  [./heat]
    type = HeatConduction
    variable = temp
  [../]

  [./heat_ie]
    type = HeatConductionTimeDerivative
    variable = temp
  [../]

  [./heat_source]
     type = HeatSource
     variable = temp
     value = 1.0
     function = Fiss_Function
  [../]
[]


[AuxKernels]

  [./vonmises]
    type = MaterialTensorAux
    tensor = stress
    variable = vonmises
    quantity = vonmises
    execute_on = timestep
  [../]
[]


[BCs]
 [./bottom_temp]
   type = DirichletBC
   variable = temp
   boundary = 1
   value = 300
 [../]
 [./top_bottom_disp_x]
   type = DirichletBC
   variable = disp_x
   boundary = '1'
   value = 0
 [../]
 [./top_bottom_disp_y]
   type = DirichletBC
   variable = disp_y
   boundary = '1'
   value = 0
 [../]
 [./top_bottom_disp_z]
   type = DirichletBC
   variable = disp_z
   boundary = '1'
   value = 0
 [../]
[]

[Materials]
 [./thermal]
    type = HeatConductionMaterial
    temp = temp
    specific_heat = 1.0
    thermal_conductivity = 1.0
  [../]

  [./elastic]
    type = Elastic
    youngs_modulus = 300e6
    poissons_ratio = .3
    disp_x = disp_x
    disp_y = disp_y
    disp_z = disp_z
    temp = temp
    thermal_expansion = 5e-6
  [../]

  [./density]
    type = Density
    density = 10963.0
  [../]
[]

[Executioner]
  type = Transient

  #Preconditioned JFNK (default)
  solve_type = 'PJFNK'

  verbose = true
  nl_abs_tol = 1e-10
  start_time = 0.0
  num_steps = 50000
#  dt = 1e6
  end_time = 2.002e6
  [./TimeStepper]
    type = AdaptiveDT
    timestep_limiting_function = Fiss_Function
    max_function_change = 3e7
    dt = 1e6
  [../]
[]

[Postprocessors]
  [./Temperatrue_of_Block]
    type = ElementAverageValue
    variable = temp
  [../]

  [./vonMises]
    type = ElementAverageValue
    variable = vonmises
  [../]
[]

[Output]
  output_initial = true
  elemental_as_nodal = true
  interval = 1
  exodus = true
  perf_log = true
  max_pps_rows_screen = 10
[]
