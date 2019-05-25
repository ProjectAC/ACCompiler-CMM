#pragma once
#include <string>
#include <vector>
#include "Definitions.hpp"

NAMESPACE_BEGIN

class DataType
{
public:
    enum class DescriptionType
    {
        POINTER,
        FUNCTION,
        CLASS
    };

    class Description                           // 类型描述符
    {
    private:
        DescriptionType type;                   // 指针，函数，或是类
        std::vector<DataType> list;             // 如果是函数，需要参数列表
    };

    DataType();
    DataType(const DataType &x);
    bool operator==(const DataType &x) const;

    Description top();
    void pop();
    void push(Description);
    std::string toString();

protected:
    std::string basicType;                      // 基础类型
    std::vector<Description> descriptions;      // 类型描述符，例如int [][]就是基础类型为int，类型描述符为[指针, 指针]
};

NAMESPACE_END
