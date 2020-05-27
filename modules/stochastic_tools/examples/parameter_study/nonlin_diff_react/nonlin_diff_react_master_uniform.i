[StochasticTools]
[]

[Distributions]
  [mu1]
    type = Uniform
    lower_bound = 0.21
    upper_bound = 0.39
  []
  [mu2]
    type = Uniform
    lower_bound = 6.3
    upper_bound = 11.7
  []
[]

[Samplers]
  [hypercube]
    type = LatinHypercube
    num_rows = 5000
    distributions = 'mu1 mu2'
    num_bins = 20
  []
[]

[MultiApps]
  [runner]
    type = SamplerFullSolveMultiApp
    sampler = hypercube
    input_files = 'nonlin_diff_react_sub.i'
    mode = batch-restore
  []
[]

[Transfers]
  [parameters]
    type = SamplerParameterTransfer
    multi_app = runner
    sampler = hypercube
    parameters = 'Kernels/nonlin_function/mu1 Kernels/nonlin_function/mu2'
    to_control = 'stochastic'
  []
  [results]
    type = SamplerPostprocessorTransfer
    multi_app = runner
    sampler = hypercube
    to_vector_postprocessor = results
    from_postprocessor = 'max min average'
  []
[]

[VectorPostprocessors]
  [results]
    type = StochasticResults
  []
  [samples]
    type = SamplerData
    sampler = hypercube
  []
  [stats]
    type = Statistics
    vectorpostprocessors = results
    compute = 'mean'
    ci_method = 'percentile'
    ci_levels = '0.05'
  []
[]

[Outputs]
  csv = true
  execute_on = 'FINAL'
[]
