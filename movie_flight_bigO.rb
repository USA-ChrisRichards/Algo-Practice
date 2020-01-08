# Input
# flight_length: duration of the flight in minutes (integer)
# movie_lengths: array of movie times in minutes (array of integers)
# Output
# boolean, true if there exists TWO movies that add up EXACTLY to the flight_length
# Examples
# flight_length 160
# [80, 110, 40] => false
# [80, 110, 80] => true
# [20, 30, 110, 40, 50] => true

# O(1) - constant 
# O(n) - linear
# O(n^2) - quadratic
# O(2^n) - exponential
def watch_movie(flight_length, movie_lengths)
    movie_hash = {}
    # {20: true, 30: true, 110: true, 40: true, } => true
    
    movie_lengths.each do |mov1|
        diff = flight_length - mov1
        # Looking for the diff in the rest of the array
        if movie_hash[diff]
            return true
        end
        movie_hash[mov1] = true
    end
    false
end
