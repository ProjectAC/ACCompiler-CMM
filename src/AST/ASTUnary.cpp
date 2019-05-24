#include "../../include/AST/ASTUnary.hpp"

USE_NAMESPACE

ASTUnary::ASTUnary(const UnaryType &ut, const ASTBase const * o0) :
    o0(o0)
{
}

DataType ASTUnary::getType() const
{
    return o0->getType();
}

void ASTUnary::Generate(std::vector<Instruction> &instructions, Context &context) const
{
    
}