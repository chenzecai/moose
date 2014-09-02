/****************************************************************/
/*               DO NOT MODIFY THIS HEADER                      */
/* MOOSE - Multiphysics Object Oriented Simulation Environment  */
/*                                                              */
/*           (c) 2010 Battelle Energy Alliance, LLC             */
/*                   ALL RIGHTS RESERVED                        */
/*                                                              */
/*          Prepared by Battelle Energy Alliance, LLC           */
/*            Under Contract No. DE-AC07-05ID14517              */
/*            With the U. S. Department of Energy               */
/*                                                              */
/*            See COPYRIGHT for full restrictions               */
/****************************************************************/

#ifndef VARIABLERESIDUALNORMSDEBUGOUTPUT_H
#define VARIABLERESIDUALNORMSDEBUGOUTPUT_H

// MOOSE includes
#include "PetscOutput.h"
#include "FEProblem.h"

// Forward declerations
class VariableResidualNormsDebugOutput;

template<>
InputParameters validParams<VariableResidualNormsDebugOutput>();

/**
 * A class for producing various debug related outputs
 *
 * This class may be used from inside the [Outputs] block or via the [Debug] block (preferred)
 */
class VariableResidualNormsDebugOutput : public PetscOutput
{
public:

  /**
   * Class constructor
   * @param name Output object name
   * @param parameters Object input parameters
   */
  VariableResidualNormsDebugOutput(const std::string & name, InputParameters & parameters);

  /**
   * Class destructor
   */
  virtual ~VariableResidualNormsDebugOutput();

protected:

  /**
   * Perform the debugging output
   */
  virtual void output();

  //@{
  /**
   * Individual component output is not supported for VariableResidualNormsDebugOutput
   */
  std::string filename();
  virtual void outputNodalVariables();
  virtual void outputElementalVariables();
  virtual void outputPostprocessors();
  virtual void outputVectorPostprocessors();
  virtual void outputScalarVariables();
  //@}

  /// Reference to libMesh system
  TransientNonlinearImplicitSystem & _sys;

};

#endif // VARIABLERESIDUALNORMSDEBUGOUTPUT_H
