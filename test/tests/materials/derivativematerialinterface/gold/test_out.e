CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes         num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1       num_side_ss1      num_side_ss2      num_side_ss3      num_side_ss4      num_nod_ns1       num_nod_ns2       num_nod_ns3       num_nod_ns4       num_elem_var      num_info           api_version       @�
=   version       @�
=   floating_point_word_size            	file_size               int64_status             title         test_out.e     maximum_name_length                 $   
time_whole                            _�   	eb_status                             	�   eb_prop1               name      ID              	�   	ns_status         	                    	�   ns_prop1      	         name      ID              	�   	ss_status         
                    
   ss_prop1      
         name      ID              
   coordx                             
(   coordy                             
H   eb_names                       $      
h   ns_names      	                 �      
�   ss_names      
                 �         
coor_names                         D      �   node_num_map                          �   connect1                  	elem_type         QUAD4               �   elem_num_map                          �   elem_ss1                          �   side_ss1                              elem_ss2                             side_ss2                             elem_ss3                             side_ss3                             elem_ss4                             side_ss4                             node_ns1                             node_ns2                          $   node_ns3                          ,   node_ns4                          4   name_elem_var                          �      <   vals_elem_var1eb1                                _�   vals_elem_var2eb1                                _�   vals_elem_var3eb1                                _�   vals_elem_var4eb1                                _�   vals_elem_var5eb1                                _�   elem_var_tab                             �   info_records                      R�      �                                                                 ?�      ?�                              ?�      ?�                                          bottom                           left                             right                            top                              bottom                           top                              left                             right                                                                                                                                                                           d^2prop/dadb                     d^2prop/dadc                     d^3prop/dadbdc                   dprop/da                         dprop/db                                           ####################                                                             # Created by MOOSE #                                                             ####################                                                             ### Command Line Arguments ###                                                   -i                                                                               test.i                                                                                                                                                            ### Version Info ###                                                             Framework Information:                                                           MOOSE version:           git commit e9d30a1 on 2014-11-26                        PETSc Version:           3.5.1                                                   Current Time:            Wed Nov 26 09:51:22 2014                                Executable Timestamp:    Wed Nov 26 09:46:46 2014                                                                                                                                                                                                  ### Input File ###                                                                                                                                                []                                                                                 initial_from_file_timestep     = 2                                               initial_from_file_var          = INVALID                                         element_order                  = AUTO                                            order                          = AUTO                                            side_order                     = AUTO                                            type                           = GAUSS                                           active_bcs                     = INVALID                                         active_kernels                 = INVALID                                         inactive_bcs                   = INVALID                                         inactive_kernels               = INVALID                                         start                          = 0                                             []                                                                                                                                                                [Executioner]                                                                      type                           = Steady                                          l_abs_step_tol                 = -1                                              l_max_its                      = 10000                                           l_tol                          = 1e-05                                           line_search                    = default                                         nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               petsc_options                  = INVALID                                         petsc_options_iname            = INVALID                                         petsc_options_value            = INVALID                                         solve_type                     = INVALID                                         long_name                      = Executioner                                     restart_file_base              =                                                 splitting                      = INVALID                                       []                                                                                                                                                                [Executioner]                                                                      _fe_problem                    = 0x7fc41380e400                                []                                                                                                                                                                [Materials]                                                                                                                                                         [./client]                                                                         type                         = DerivativeMaterialInterfaceTestClient             block                        = 0                                                 boundary                     = INVALID                                           long_name                    = Materials/client                                  output_properties            = INVALID                                           outputs                      = none                                              use_displaced_mesh           = 0                                               [../]                                                                                                                                                             [./const]                                                                          type                         = GenericConstantMaterial                           block                        = 0                                                 boundary                     = INVALID                                           long_name                    = Materials/const                                   output_properties            = INVALID                                           outputs                      = none                                              prop_names                   = constant_zero                                     prop_values                  = 0                                                 use_displaced_mesh           = 0                                               [../]                                                                                                                                                             [./provider]                                                                       type                         = DerivativeMaterialInterfaceTestProvider           block                        = 0                                                 boundary                     = INVALID                                           long_name                    = Materials/provider                                output_properties            = INVALID                                           outputs                      = exodus                                            use_displaced_mesh           = 0                                               [../]                                                                          []                                                                                                                                                                [Mesh]                                                                             displacements                  = INVALID                                         block_id                       = INVALID                                         block_name                     = INVALID                                         boundary_id                    = INVALID                                         boundary_name                  = INVALID                                         construct_side_list_from_node_list = 0                                           ghosted_boundaries             = INVALID                                         ghosted_boundaries_inflation   = INVALID                                         patch_size                     = 40                                              second_order                   = 0                                               type                           = GeneratedMesh                                   uniform_refine                 = 0                                               centroid_partitioner_direction = INVALID                                         dim                            = 2                                               distribution                   = DEFAULT                                         elem_type                      = INVALID                                         long_name                      = Mesh                                            nemesis                        = 0                                               nx                             = 1                                               ny                             = 1                                               nz                             = 1                                               partitioner                    = default                                         patch_update_strategy          = never                                           xmax                           = 1                                               xmin                           = 0                                               ymax                           = 1                                               ymin                           = 0                                               zmax                           = 1                                               zmin                           = 0                                             []                                                                                                                                                                [Outputs]                                                                          checkpoint                     = 0                                               color                          = 1                                               console                        = 0                                               csv                            = 0                                               exodus                         = 1                                               file_base                      = INVALID                                         gmv                            = 0                                               gnuplot                        = 0                                               hide                           = INVALID                                         interval                       = 1                                               nemesis                        = 0                                               output_final                   = 0                                               output_if_base_contains        = INVALID                                         output_initial                 = 1                                               output_intermediate            = 1                                               show                           = INVALID                                         solution_history               = 0                                               sync_times                     =                                                 tecplot                        = 0                                               vtk                            = 0                                               xda                            = 0                                               xdr                            = 0                                                                                                                                [./console]                                                                        type                         = Console                                           all_variable_norms           = 0                                                 append_displaced             = 0                                                 append_restart               = 0                                                 end_time                     = INVALID                                           file_base                    = INVALID                                           fit_mode                     = ENVIRONMENT                                       hide                         = INVALID                                           interval                     = 1                                                 linear_residual_dt_divisor   = 1000                                              linear_residual_end_time     = INVALID                                           linear_residual_start_time   = INVALID                                           linear_residuals             = 0                                                 long_name                    = Outputs/console                                   max_rows                     = 15                                                nonlinear_residual_dt_divisor = 1000                                             nonlinear_residual_end_time  = INVALID                                           nonlinear_residual_start_time = INVALID                                          nonlinear_residuals          = 1                                                 outlier_multiplier           = '0.8 2'                                           outlier_variable_norms       = 1                                                 output_failed                = 1                                                 output_file                  = 0                                                 output_final                 = 0                                                 output_if_base_contains      = INVALID                                           output_initial               = 1                                                 output_input                 = 0                                                 output_intermediate          = 1                                                 output_postprocessors        = 1                                                 output_scalar_variables      = 1                                                 output_screen                = 1                                                 output_system_information    = 1                                                 padding                      = 4                                                 perf_header                  = INVALID                                           perf_log                     = 0                                                 scientific_time              = 0                                                 sequence                     = INVALID                                           setup_log                    = INVALID                                           setup_log_early              = 0                                                 show                         = INVALID                                           show_multiapp_name           = 0                                                 solve_log                    = INVALID                                           start_time                   = INVALID                                           sync_only                    = 0                                                 sync_times                   =                                                   time_precision               = INVALID                                           time_tolerance               = 1e-14                                             use_displaced                = 0                                                 verbose                      = 0                                               [../]                                                                                                                                                             [./exodus]                                                                         type                         = Exodus                                            append_displaced             = 0                                                 append_oversample            = 0                                                 elemental_as_nodal           = 0                                                 end_time                     = INVALID                                           file                         = INVALID                                           file_base                    = INVALID                                           hide                         = INVALID                                           interval                     = 1                                                 linear_residual_dt_divisor   = 1000                                              linear_residual_end_time     = INVALID                                           linear_residual_start_time   = INVALID                                           linear_residuals             = 0                                                 long_name                    = Outputs/exodus                                    nonlinear_residual_dt_divisor = 1000                                             nonlinear_residual_end_time  = INVALID                                           nonlinear_residual_start_time = INVALID                                          nonlinear_residuals          = 0                                                 output_elemental_variables   = 1                                                 output_failed                = 0                                                 output_final                 = 0                                                 output_if_base_contains      = INVALID                                           output_initial               = 1                                                 output_input                 = 1                                                 output_intermediate          = 1                                                 output_material_properties   = 0                                                 output_nodal_variables       = 1                                                 output_postprocessors        = 1                                                 output_scalar_variables      = 1                                                 oversample                   = 0                                                 padding                      = 3                                                 position                     = INVALID                                           refinements                  = 0                                                 scalar_as_nodal              = 0                                                 sequence                     = INVALID                                           show                         = INVALID                                           show_material_properties     = INVALID                                           start_time                   = INVALID                                           sync_only                    = 0                                                 sync_times                   =                                                   time_tolerance               = 1e-14                                             use_displaced                = 0                                               [../]                                                                          []                                                                                                                                                                [Problem]                                                                          block                          = INVALID                                         coord_type                     = XYZ                                             fe_cache                       = 0                                               kernel_coverage_check          = 1                                               name                           = 'MOOSE Problem'                                 type                           = FEProblem                                       use_legacy_uo_aux_computation  = INVALID                                         use_legacy_uo_initialization   = INVALID                                         dimNearNullSpace               = 0                                               dimNullSpace                   = 0                                               long_name                      = Problem                                         solve                          = 0                                               use_nonlinear                  = 1                                             []                                                                                                                                  ?�      @      @      @      ?�      @       