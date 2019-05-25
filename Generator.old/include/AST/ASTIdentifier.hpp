#pragma once
#include "../Definitions.hpp"
#include "ASTBase.hpp"

NAMESPACE_BEGIN

class ASTIdentifier : ASTBase
{
public:
    ASTIdentifier(DataType type, std::string name);

    // 获取推导的类型字符串；不适用或无类型则为void
    DataType getType() const override;

    // 生成
    void Generate(std::vector<Instruction> &instructions, Context &context) const override;

protected:
    const DataType type;
    const std::string name;
};

NAMESPACE_END