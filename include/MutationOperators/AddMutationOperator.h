#pragma mark

#include "MutationOperators/MutationOperator.h"

namespace Mutang {

class AddMutationOperator : public MutationOperator {
public:
  bool canBeApplied(llvm::Value &V) override;
  llvm::Value *applyMutation(llvm::Value &OriginalValue) override;
  llvm::Value *revertMutation(llvm::Value &Value) override;
};

}