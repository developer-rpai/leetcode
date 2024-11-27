class Solution:
    def isPalindrome(self, x: int) -> bool:
        my_str = str(x)
        i = 0 
        j = len(my_str) - 1

        while i < j :
            if my_str[i] != my_str[j]:
                return False
            i += 1
            j -= 1
        return True
                
            