#pragma once

#include <vector>
#include <string>

namespace ACCompiler
{
namespace CMM{

typedef std::string TypeName;

// TODO：用于调试模拟器的State类
class State
{
};

class ASTBase;
class ASTDef;
class ASTSet;
class ASTExpr;
class ASTIf;
class ASTFor;
class ASTWhile;
class ASTDoWhile;
class ASTPrep;

/* State
 * 
 */
class ASTBase
{
public:
    virtual void eval(State &state);            // 执行本节点对应的代码，并打印过程（用于调试）
    virtual TypeName getType();                 // 推导节点的类型
    virtual void build(std::ostream &out);      // 生成本节点对应的代码并输出到流
};

class ASTSet : public ASTBase
{
public:
    void eval(State &state) override;
    TypeName getType() override;
    void build(std::ostream &out) override;

protected:
};

}
}