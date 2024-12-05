class Solution:
    def reverseWords(self, s: str) -> str:
        left = 0 
        word = ''
        result = ''

        for right in range(len(s)):
            
            if s[right] == ' '  :     
                word = s[left:right]
                print(word)
                result += word[::-1] + ' '  
                word = ''
                left = right + 1   


            if right == len(s) - 1:
                word = s[left:right+1]
                result += word[::-1] 
        return result