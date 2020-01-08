def solution(s)
    vowels = "AEIOU"
    alphabet = ('A'..'Z').to_a.join('')
    consonants = alphabet.delete("AEIOU")
    arr = s.split('')
    p arr
    l = s.length
    count = 0
    arr.each_with_index do |char, ind|
        if vowels.include?(char[ind]) == false
            count = count + 1 
            ind = ind + 1
        end
        return count
    end
end
# return num of "well-structured words" that can be found by rearranging letters of s input

#! Conditions(3)
# start with consonant
# does not contain 2 consecutive vowels(AEIOU)
# does not contain 2 consecutive consonants

# scatter letters/rearrange
# solution("AOE")
solution("BAR")
# solution("AAAB")



# def perms(str)
  
#     return [str] if str.length < 2
    
#     return [str[0] + str[1], str[1] + str[0]] if str.length == 2
    
#     all_perms = []
    
#     str.split('').each_with_index do |char, ind|
#       sub_str = str[0...ind] + str[ind+1..-1]
#     #   p sub_str
#       sub_perms = perms(sub_str)
#       sub_perms.each do |sp|
#         all_perms << char + sp
#       end
#     end
    
#     # p all_perms
    
#   end

#   perms("SJTU")
#   perms("AA")