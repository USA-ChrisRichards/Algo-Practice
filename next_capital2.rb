def solution(n, s)
    # n = rows(1..50) | s = string of seats | 10 seats per row(n)
    
    total_seats = n * 10
    # => 20 
    seats_taken = s.split(' ')
    # => ["1A", "2F", "1C"]
    if seats_taken == []
        p n * 2
    end

    # create seating_chart => all available seats
    seating_chart = ['1A', '1B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K']
    hash_seats = Hash[seating_chart.collect { |k, v| [k, v = true] }]
  

    h = Hash[seats_taken.collect { |k, v| [k, v = false] }]
    
    p hash_seats[seats_taken[0]]
    p h[seats_taken[0]]

    n.times do |s|
        # check each seat compared to open seats
    end
    
    #   3 combinations that can seat a family per row
    #       alpha(B C D E), beta(D E F G), gamma(F G H J) 
    #   if alpha && gamma
    #       fams = fams + 2
    #   elsif beta
    #       fams = fams + 1

    # return fams = number of families that can be seated
end


#? TESTS
p "TESTS:"
solution(2, '1A 2F 1C')
# solution(1, '')
# solution(4, '1A 2F 1C 3K 4G 2H')
# solution(3, '')


# seating_chart hash where key = seat('1A') and value = true/false
# true is open seat | false is seat taken 