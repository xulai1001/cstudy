#encoding: utf-8

$base=32

def get_key(*args)
    args.sort.reduce(0){|sum, i| sum*$base+i+1}
end

def from_key(k)
    ret = []
    begin
        ret.unshift((k-1) % $base)
        k /= $base
    end while k>0
    ret
end

$lats = {}

def conflict?(*args);  ($lats[get_key(*args)] || 0) >= 99; end  # same as latency=1
def related?(*args); ($lats[get_key(*args)] || 0).between?(20, 80); end

File.read("result_measure.txt").each_line {|line|
    line.split(":").map{|x| x.split(" ").map{|y| y.to_i} }.tap{|arr|
        $lats[get_key(*arr[0])] = arr[1][0]
    }
}

# start test from bit 3, for 0..2 are word address (within 64-bit)
$row_bits = (3...$base).select {|x| conflict?(x) }
$row_related = (3...$base).select {|x| related?(x) }
puts "pure row bits: #{$row_bits} and higher, row related bits: #{$row_related}"
$column_bits = (3...$base).select {|x| $row_bits.all?{|y| conflict?(x, y) } }
puts "pure column bits: #{$column_bits}"

def print_graph
    # header
    puts "two-bit latency graph:"
    puts "\\" + (3...$base).map{|x| "%3d" % x}.join
    (3...$base).each {|x|
        out=[x.to_s]
        (3...$base).each {|y|
            ch = "."
            if y<x then ch=" "
            elsif y==x then
                if conflict?(x) then ch="*"
                elsif related?(x) then ch="@"
                else ch="\\"; end
            else
                if conflict?(x, y) then ch="+"
                elsif related?(x, y) then ch="@" # $lats[get_key(x, y)].to_s
                end
            end
            out << ch
        }
        out << x
        puts out.map{|x| "%-3s" % x}.join
    }
end

print_graph
