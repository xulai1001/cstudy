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
private:
    string table, filename;
    fstream fs;
public:    
    void init()
    {
        table.assign(PAGE_FRAME_COUNT, PAGE_UNCHECKED);
    }
    
    bool load()
    {
        fs.open(filename, fstream::in | fstream::out);
        if (!fs) return false;
        stringstream ss;
        
        ss << fs.rdbuf();
        string s = ss.str();
        if (table.length() > s.length())
            table.replace(0, s.length(), s);
        else table.assign(s);
        
        return true;
    }
    
    char get(int pos) { return table[pos]; }
    char operator [](int pos) { return table[pos]; }
    
    void set(int pos, char c)
    {
        table[pos]=c;
        fs.seekp(pos, ios::beg);
        fs.put(c);
        fs.flush();
    }
    
    void save()
    {
        if (!fs) 
        {
            fs.open(filename, fstream::out);
            fs << table;
        }
        fs.close();
        fs.open(filename, fstream::in | fstream::out);
    }
    
    
};

#endif