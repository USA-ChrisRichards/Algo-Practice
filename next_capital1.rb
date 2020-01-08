# look for X(int) in A(array of ascending integers)
# returns => index of X  -or-  => -1 A.include?(x) == false 

def solution(a, x)
    n = a.length
    # => 4
    if (n == 0) then
        p -1
    end
    # solution([1, 2, 3, 5], 3)
    # infinite loop error^ /if x == either of last 2 nums in array 
    l = 0
    r = n - 1
    # => 3
    while (l < r)
        m = (l + r) / 2.0
        # => 3/2 == 1
        if (a[m] > x) then
            r = m - 1
        else
            l = m
        end
    end

    if (a[l] == x) then
        p l.floor
    end
    return -1
end

# solution([1, 2, 5, 9, 9, 10], 9)
#  => 2
# solution([1, 2, 3, 5], 2)
# => 1
solution([1, 2, 3, 5, 10, 100, 12000, 4, 5], 12000)
# => 2
# p [1,1,1,1].length 
# => 4
