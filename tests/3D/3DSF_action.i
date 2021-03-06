[Mesh]
  type = NumbatBiasedMesh
  dim = 3
  xmax = 10
  ymax = 10
  zmin = -100
  zmax = 0
  nx = 1
  ny = 1
  nz = 10
  refined_edge = top
  refined_resolution = 1
[]

[Numbat]
  [./Dimensionless]
  [../]
[]

[Preconditioning]
  [./smp]
    type = SMP
    full = true
  [../]
[]

[Executioner]
  type = Transient
  end_time = 100
  solve_type = PJFNK
[]

[Outputs]
  perf_graph = true
  [./csvoutput]
    type = CSV
    file_base = 3DSF
    execute_on = 'INITIAL TIMESTEP_END'
  [../]
[]
