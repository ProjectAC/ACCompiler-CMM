# ACCompiler - C Minus Minus

## 语言定义

一个简化版本的C。  
- 去掉switch、goto等有问题的特性
- 支持作用域（例如在for循环头声明变量）

相当于我们只有以下feature：  
- 变量声明、定义
- 运算
- 选择/分支
- 函数调用
- 结构体

## 数据结构：

### AST节点基类

```
class ASTBase
{
public:
    virtual void eval(State &state);    // 执行本节点对应的代码，并打印过程（用于调试）
    virtual Type getType();             // 推导节点的类型
    virtual void build(ostream &out);   // 生成本节点对应的代码并输出到流
};
```

### 派生一个子类

所有的节点类型通过派生ASTBase类来区分。注意，类别不要分的太过于详细，以免过度封装。  
定义以下类型的节点（格式为 功能 类名）：
- 定义 Def
- 赋值 Set
- 运算 Expr
- 分支 If
- 循环 For、While、DoWhile
- 预行 Prep