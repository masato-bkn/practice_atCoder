# C - Big Array 
# https://atcoder.jp/contests/abc061/tasks/abc061_c


#  入力
# 3 4 -> 数値を配列に格納すると言う作業をn回繰り返して、k番目に小さい数を求める
# 1 1
# 2 2
# 3 3

# 自力で書いた解答
# array = []
# n,k = gets.split(' ').map(&:to_i)

# n.times do |_|
#     a,b = gets.split(' ').map(&:to_i)

#     b.times do |_|
#         array << a
#         break if array.count == k
#     end
# end

# p array[k-1]    

n,k = gets.split.map(&:to_i)
array = []

n.times do
    array << gets.split.map(&:to_i)
end
array.sort!

c = 0
array.each do |a, b|
    c += b
    if k <= c
        p a
        return
    end
end
