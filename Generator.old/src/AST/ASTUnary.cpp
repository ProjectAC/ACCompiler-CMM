#include "../../include/AST/ASTUnary.hpp"

USE_NAMESPACE

ASTUnary::ASTUnary(const UnaryType &ut, const ASTBase const * o0) :
    type(evalType(ut, o0)),
    o0(o0)
{
}

DataType ASTUnary::evalType(const UnaryType &ut, const ASTBase const * o0)
{
    DataType o0type = o0->getType();

    if (ut == UnaryType::GET_ADDR)
    {
        o0type
    }
}

DataType ASTUnary::getType() const
{
    return type;
}

void ASTUnary::Generate(std::vector<Instruction> &instructions, Context &context) const
{
    
}