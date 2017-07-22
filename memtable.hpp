#ifndef _MEMTABLE_HPP
#define _MEMTABLE_HPP

#include "iostream"
#include "fstream"
#include "string"
#include "sstream"

using namespace std;

extern "C" {
    #include "sys/stat.h"
    #include "sys/sysinfo.h"
}

// google routine
uint64_t physmem_size(void)
{
    struct sysinfo info;
    sysinfo(&info);
    return (size_t)info.totalram * (size_t)info.mem_unit;
}

#define PAGE_SHIFT 12
#define PAGE_FRAME_COUNT (physmem_size() >> PAGE_SHIFT)
#define PAGE_UNCHECKED '.'
#define PAGE_SAFE      '_'
#define PAGE_BUG       'x'

class MemTable
{
public:
    string table;
    
    MemTable() : table(0) {}
    
    void init()
    {
        table.assign(PAGE_FRAME_COUNT, PAGE_UNCHECKED);
    }
    
    void load(char []filename)
    {
        ifstream ifs(filename);
        if (!ifs) return;
        stringstream ss;
        
        ss << ifs.rdbuf();
        table = ss.str();
        ifs.close();
    }
    
    void save(char []filename)
    {
        ofstream ofs(filename);
        ofs << table;
        ofs.close();
    }
};

#endif