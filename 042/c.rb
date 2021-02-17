# title: C - こだわり者いろはちゃん
# level: c
# url: https://atcoder.jp/contests/abc042/tasks/arc058_a
# category: ["いろはちゃん", "整数"]
# date: 2021/02/17

# input
# 1000 8
# 1 3 4 5 6 7 8 9

# output
# 2000

# N円以上で、嫌い数字を除いた一番安い金額を求める

n, k = gets.split
ds = gets.split.map(&:to_i)

nums = n.split('').map(&:to_i)

i = 1

# Nの各桁をみて、嫌いな数字が入っていないかチェック
# 嫌いな数字が入っていたら、その桁をインクリメントして、整数(N)を再生性する。
# これを嫌いな数字がなくなるまで繰り返す。
while i != 0
    tmp = []
    j = 0
    nums.each do |num|
        if ds.include?(num)
            tmp << num + 1
            j = 1
        else
            tmp << num
        end
    end

    # 嫌いな数字があったか判定
    if j == 1
        i = 1
        nums = tmp.join
    else
        return p tmp.join.to_i
    end
end