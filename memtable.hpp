#ifndef _MEMTABLE_HPP
#define _MEMTABLE_HPP

#include "iostream"
#include "fstream"
#include "string"
#include "sstream"
#include "map"
#include "vector"
#include "cinttypes"
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

class RowFile
{
public:
    string filename;
    fstream fs;
    map<uint64_t, vector<uint64_t> > data;
public:    
    RowFile(string fname) : filename(fname)
    {
        load();
    }
    
    bool load()
    {
        data.clear();
        fs.open(filename, fstream::in);
        if (!fs) return false;
        stringstream ss;
        string tmp;
        uint64_t row, count, pa;
        
        while (!fs.eof())
        {
            getline(fs, tmp);
            if (tmp != "")
            {
                ss.clear();
                ss << tmp;
                ss >> std::dec >> row >> count;
                if (row>0)
                {
                    data[row] = vector<uint64_t>();
                    for (int i=0; i<count; ++i)
                    {
                        ss >> std::hex >> pa;
                        data[row].push_back(pa);
                    }
                }
            }
        }
        fs.close();
        
        return true;
    }
    
    vector<uint64_t> &operator [](uint64_t row) 
    {
        if (data.count(row) == 0)
            data[row] = vector<uint64_t>();
        return data[row];
    }
    
    void save()
    {
        fs.open(filename, fstream::out | ios::trunc);
        for (auto p : data)
        {
            fs << std::dec << p.first << " " << p.second.size();
            for (auto i : p.second)
                fs << std::hex << " " << i;
            fs << endl;
        }
        fs.close();
    }
    
};

#endif
