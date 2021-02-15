# https://atcoder.jp/contests/abc077/tasks/arc084_a

n = gets.to_i
a = gets.split.map(&:to_i).sort
b = gets.split.map(&:to_i).sort
c = gets.split.map(&:to_i).sort

def bsearch_left(arr, target)
    low = 0
    hight = arr.count

    while low < hight
        mid = (low + hight)/2
        if arr[mid] < target
            low = mid + 1
        else
            hight = mid
        end
    end

    low
end

def bsearch_right(arr, target)
    low = 0
    hight = arr.count

    while low < hight
        mid = (low + hight)/2
        if target < arr[mid]
            hight = mid
        else
            low = mid + 1
        end
    end

    low
end

ans = 0

for i in b
    ans += bsearch_left(a,i) * (n-bsearch_right(c,i))
end

p ans
