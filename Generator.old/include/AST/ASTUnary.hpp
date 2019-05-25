#pragma once
#include "../Definitions.hpp"
#include "ASTBase.hpp"

NAMESPACE_BEGIN

enum class UnaryType
{
    GET_ADDR,       // *
    GET_VAL,        // &
    ADD,            // ++
    SUB,            // --
    MINUS,          // -
    NOT,            // !
    BW_NOT,         // ~
    SIZEOF,         // sizeof
    PARSE,          // (type)
};

class ASTUnary : ASTBase
{
public:
    ASTUnary(const UnaryType &ut, const ASTBase const * o0);

    // 获取推导的类型字符串；不适用或无类型则为void
    DataType getType() const override;

    // 生成
    void Generate(std::vector<Instruction> &instructions, Context &context) const override;

protected:
    DataType evalType(const UnaryType &ut, const ASTBase const * o0);

    // 单目运算符有一个操作数
    const ASTBase const * o0;
    const DataType type;
};

NAMESPACE_END