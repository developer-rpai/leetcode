class Solution:
    def compressedString(self, word: str) -> str:
        comp = ''
        i = 0 

        while i < len(word):
            char = word[i]
            count = 0 

            while i < len(word) and word[i] == char and count < 9:
                count += 1
                i +=1

            comp = comp + str(count) + char
        return comp



      

        