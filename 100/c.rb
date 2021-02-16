# title: C - *3 or /2
# level: c
# url: https://atcoder.jp/contests/abc100/tasks/abc100_c
# category: ["スヌケ", "パリティ"]
# date: 2021/02/16

# input
# 3
# 5 2 4

# output
# 3

# 全てのiに対して3倍することはできず, 操作後のaiの値は整数でなければならない
# 奇数を掛けて2で割れる回数が増えることはない
# つまり、"奇数をかける = 何もしない"と置き換えられる

# 全て3倍することはできない。また、出来るだけ多くの回数操作をしたいので、1回の操作で2で割れるのは1度だけと考える
# 1回の操作で 「𝑁 個の数の中から 1 つ選び、これを 2 で割る」

# answer -> (𝑎1 が 2 で割れる回数) + (𝑎2 が 2 で割れる回数) + … +(𝑎𝑁 が 2 で割れる回数)

n = gets.to_i
a_list = gets.split.map(&:to_i)

ans = 0

a_list.each do |a|
    while (a.to_f/2 - (a/2).to_i) == 0 && (a/2) != 0
        a /= 2
        ans += 1  
    end
end

p ans
