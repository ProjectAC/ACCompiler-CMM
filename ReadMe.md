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

```
class ASTBase
{
public:
    virtual void eval(State &state);    // 执行本节点对应的代码，并打印过程（用于调试）
    virtual Type getType();             // 推导节点的类型
    virtual void build(ostream &out);   // 生成本节点对应的代码并输出到流

protected:
    vector<ASTBase> children;           // 子节点（有序列表）
};
```