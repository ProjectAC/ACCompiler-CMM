#include "../../include/AST/ASTIdentifier.hpp"

USE_NAMESPACE

ASTIdentifier::ASTIdentifier(DataType type, std::string name) :
    type(type),
    name(name)
{
}

DataType ASTIdentifier::getType() const
{
    return type;
}

void ASTIdentifier::Generate(std::vector<Instruction> &instructions, Context &context) const
{
    context.matchIdentifier(this);
}