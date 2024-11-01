class Solution:
    def isPalindrome(self, x: int) -> bool:
        y = ''
        y = str(x)[::-1]
        if str(x) == str(y) :
            return True
        else: 
            return False
        