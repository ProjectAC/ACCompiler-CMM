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

    class Description
    {
    private:
        DescriptionType type;
        std::vector<DataType> list;
    };

    DataType();
    DataType(const DataType &x);
    bool operator==(const DataType &x) const;

protected:
    std::string basicType;
    std::vector<Description> descriptions;
};

NAMESPACE_END
