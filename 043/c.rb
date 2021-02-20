
# title: C - いっしょ
# level: c
# url: https://atcoder.jp/contests/abc043/tasks/arc059_a
# category: ["えびくん", "整数"]
# date: 2021/02/20

_ = gets.to_i
a_n = gets.split.map(&:to_i)

ans = []

# a_nの取り得る範囲は-100..100なので、
# -100未満または100以上の数字に入れ替えても、コストは(n - 100)^2、(n + 100)^2より大きくなる。
# そのため、計算対象は-100..100でよい
-100.upto(100) do |i|
    ans << a_n.inject(0) { |sum, n| sum + (n - i) ** 2}
end

p ans.min
