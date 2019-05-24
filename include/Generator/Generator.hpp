#pragma once
#include "../Definitions.hpp"
#include "../AST/ASTBase.hpp"

NAMESPACE_BEGIN

class Generator
{
public:
    void generate(ASTBase &tree);
};

NAMESPACE_END