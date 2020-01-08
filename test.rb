# Write a function:
# def solution(a)
# that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.
# For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.
# Given A = [1, 2, 3], the function should return 4.
# Given A = [−1, −3], the function should return 1.
# Write an efficient algorithm for the following assumptions:
# N is an integer within the range [1..100,000];
#? n = (1..100,000)
# each element of array A is an integer within the range [−1,000,000..1,000,000].

#* 1st Solution - Did not work for arr with nums out of order
def solution(a)
    # return n(int) > 0 that a.include? == false
    a = a.sort
    p a
    n = 1
    if a.include?(n) == false
        n
    else 
        count = a.length 
while n < count
    a.find do |i|
    n < i
    n = n + 1
    p n
    end
end
        a.each do |i|
            # for each elem(i) in a, check if i != n, if true then n = n+1 and loop again
            if i > n && (a.include?(n) == false)
                p n
            end
            n = n + 1
        end
        p n
    end
  end



  solution([1, 3, 6, 4, 1, 2])
#   => 5
#   solution([-120, -3, 2])
#   => 1
#   solution([1, 3, 4])
  #   => 2
#   solution([1, 2, 3, 4])
  #   => 5
#   solution([1, 3, 2, 5])
    # sum = 11
  #   => 4


