#pragma once
#include "../Definitions.hpp"
#include "../DataType.hpp"
#include "Generator/Context.hpp"
#include "Generator/Instruction.hpp"
#include "Generator/Generator.hpp"
#include <string>
#include <vector>
#include <stack>

NAMESPACE_BEGIN

class ASTBase;          // 基类

class ASTIdentifier;    // ID
class ASTConstant;      // 常量

class ASTUnary;         // 单目运算
class ASTBinary;        // 双目运算
class ASTMatch;         // 三目运算

class ASTIf;            // If 
class ASTFor;           // For
class ASTWhile;         // While
class ASTDoWhile;       // DoWhile

class ASTSet;           // 变量赋值
class ASTDef;           // 变量定义
class ASTFunction;      // 函数调用
class ASTFunctionDef;   // 函数定义

class ASTBase
{
public:
    ASTBase();

    // 获取推导的类型字符串；不适用或无类型则为void
    virtual DataType getType() const;
    // 生成
    virtual void Generate(std::vector<Instruction> &instructions, Context &context) const;
};

NAMESPACE_END