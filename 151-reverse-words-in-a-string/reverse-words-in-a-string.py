class Solution:
    def reverseWords(self, s: str) -> str:
        newstr = s.split()        
        s1 = ''
        l = len(newstr) - 1
        for i in range(len(newstr)):
            s1 = s1.strip() +' '+  newstr[l]
            l -= 1
        return s1.strip()