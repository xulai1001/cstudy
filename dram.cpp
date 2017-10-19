#ifndef _DRAM_H
#define _DRAM_H

#include "iostream"
#include "vector"
#include "bitset"
#include "cinttypes"
using namespace std;

#define GET_BIT(x, n) ((x >> n) & 1)
#define GET_BIT_RANGE(x, n, m) ((x >> n) & ((1ull << (m-n+1))-1))

struct DramAddr
{
    uint64_t p;
    unsigned row, bank, bg, rank, channel;
    
    void print()
    {
        cout << "paddr: " << hex << p << " " << bitset<36>(p) << endl;
        cout << "row: " << bitset<16>(row);
        cout << " bank: " << bitset<3>(bank) << " bg: " << bitset<3>(bg)
             << " rank: " << rank << " channel: " << channel << dec << endl;
    }
};

struct DramMapping
{
    int nrow;       // n row bits;
    vector<vector<int> > row_ranges;    // ranges such as 15-17, 22-32
    vector<vector<int> > bank_bits, bg_bits;
    vector<int> chnl_bits, rank_bits;
    // mask for changing the lowest 2 row bits.
    vector<vector<int> > mask_bits;
    
    void print_vector(vector<int> &v)
    {
        cout << v[0];
        for (int i=1; i<v.size(); ++i) cout << "^" << v[i];
    }
    
    void print()
    {
        int i, j;
        cout << "row bits: ";
        for (auto v:row_ranges)
             cout << v[0] << "-" << v[1] << ", ";
        cout << nrow << " bits" << endl;
        cout << "bank bits:";
        for (i=0; i<bank_bits.size(); ++i)
        {
            cout << " #" << i << " -> "; print_vector(bank_bits[i]);
        }
        cout << endl;
        cout << "bank groups:";
        for (i=0; i<bg_bits.size(); ++i)
        {
            cout << " #" << i << " -> "; print_vector(bg_bits[i]);
        }
        cout << endl;
        cout << "rank bits: "; print_vector(rank_bits); cout << endl;
        cout << "channel bits: "; print_vector(chnl_bits); cout << endl;
    }
    
    // given phys addr, parse it into dram mappings
    DramAddr parse(uint64_t p)
    {
        DramAddr ret;
        uint64_t row = 0;
        
        ret.p = p;
        for (int i=row_ranges.size()-1; i>=0; i--)
        {
            row |= GET_BIT_RANGE(p, row_ranges[i][0], row_ranges[i][1]);
            if (i>0) row <<= (row_ranges[i-1][1] - row_ranges[i-1][0]+1);
        }
        ret.row = row;
        ret.bank = 0;
        for (int i=bank_bits.size()-1; i>=0; --i)
        {
            ret.bank <<= 1;
            for (int j:bank_bits[i]) ret.bank ^= GET_BIT(p, j);
        }
        ret.bg = 0;
        for (int i=bg_bits.size()-1; i>=0; --i)
        {
            ret.bg <<= 1;
            for (int j:bg_bits[i]) ret.bg ^= GET_BIT(p, j);
        }
        ret.rank = 0;
        for (int i:rank_bits) ret.rank ^= GET_BIT(p, i);
        ret.channel = 0;
        for (int i:chnl_bits) ret.channel ^= GET_BIT(p, i);
        return ret;
    }
    
    // given phys addr, xor the lowest 2 row bits
    // while keeping all other address the same
    uint64_t mask_row(uint64_t p, int n)
    {
        uint64_t mask = 0;
        for (int i=0; i<2; ++i)
            if (GET_BIT(n, i))
                for (int j:mask_bits[i]) mask |= (1ull << j);                
//        cout << "value mask = " << bitset<24>(mask) << endl;
        return p ^ mask;
    }
    
    // base on mask_row, change row bits
    // get lowest row bits -> clear them -> set new bits
    uint64_t change_row(uint64_t p, int n)
    {
        return mask_row(mask_row(p, parse(p).row & 3), n);
    }

};

DramMapping ivy, skylake;

int main(void)
{
    cout << "--- Ivy Bridge ---" << endl;
    ivy.nrow = 15;
    ivy.row_ranges = {{18, 32}};
    ivy.bank_bits = {{14, 18}, {15, 19}, {17, 21}};
    ivy.rank_bits = {16, 20};
    ivy.chnl_bits = {7, 8, 9, 12, 13, 18, 19};
    ivy.mask_bits = {{8, 14, 18}, {9, 15, 19}};
    ivy.print();
//    ivy.parse(0xf0f0f0full).print();
//    ivy.parse(ivy.change_row(0xf0f0f0full, 1)).print();
    ivy.parse(0x87614325ull).print();
    ivy.parse(ivy.change_row(0x87614325ull, 2)).print();
    
    cout << "--- Skylake ---" << endl;
    skylake.nrow = 15;
    skylake.row_ranges = {{18, 32}};   // in doubt
    skylake.bank_bits = {{17, 21}, {18, 22}};
    skylake.bg_bits = {{7, 14}, {15, 19}};
    skylake.rank_bits = {16, 20};
    skylake.chnl_bits = {8, 9, 12, 13, 18, 19};
    skylake.mask_bits = {{}, {9, 15, 19}};
    skylake.print();
//    skylake.parse(0xf0f0f0full).print();
//    skylake.parse(skylake.change_row(0xf0f0f0full, 1)).print();
    skylake.parse(0x87614325ull).print();
    skylake.parse(skylake.change_row(0x87614325ull, 2)).print();
    
    return 0;
}

#endif
