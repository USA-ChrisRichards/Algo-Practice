# Given an array of integers, find if the array contains any duplicates.
def contains_duplicate(nums)
    counter = 0
    nums = nums.sort
    
    while counter < nums.length
        if nums[counter] == nums[counter+1]
            p true
            counter = counter + 1 
        else
            p false
            counter = counter + nums.length
        end
    end
end

# Arrays.sort(nums);
#     for (int i = 0; i < nums.length - 1; ++i) {
#         if (nums[i] == nums[i + 1]) return true;
#     }
#     return false;

nums = [1, 2, 3, 7, 2]
contains_duplicate(nums)