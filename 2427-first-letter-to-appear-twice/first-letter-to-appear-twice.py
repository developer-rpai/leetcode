class Solution:
    def repeatedCharacter(self, s: str) -> str:
        my_dictionary = {}
        for i in s:
            if i not in my_dictionary:
                my_dictionary[i] = 1
            else:
                my_dictionary[i] += 1

            if my_dictionary[i] == 2:
                return i
        return None