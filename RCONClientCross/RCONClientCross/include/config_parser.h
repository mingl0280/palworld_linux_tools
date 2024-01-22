#pragma once
#include <fstream>
#include <iomanip>
#include <unordered_map>
#include <sstream>
#include <string>
#include <filesystem>

namespace fs = std::filesystem;

// Sample Config File 1:
// ServerIP=1.2.3.4
// ServerPort=23456
// ServerSecret=

// Sample Config File 2:
// ServerIP=2.3.4.5
// ServerPort=23456
// ServerSecret=02:03==xxFFh3X

enum class ConfigItems
{
    ServerIP,
    ServerPort,
    ServerSecret,
};

class ConfigParser
{
public:
    ConfigParser(fs::path config_file_path);
    std::string operator[](ConfigItems config_item);
private:
    bool ParseConfig();
};

