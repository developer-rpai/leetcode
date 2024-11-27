class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        my_dictionary = {}
        for index, num in enumerate(nums):
            complement = target - num
            if complement in my_dictionary:
                return (index, my_dictionary[complement])
            my_dictionary[num] = index