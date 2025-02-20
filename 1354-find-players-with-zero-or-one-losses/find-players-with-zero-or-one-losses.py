from typing import List
from collections import defaultdict
class Solution:
    def findWinners(self, matches: List[List[int]]) -> List[List[int]]:
        result = [[],[]]
        winners = defaultdict(int)
        losers = defaultdict(int)
        for match in matches:
            winners[match[0]] += 1
            losers[match[1]] += 1

        for i in winners:
            if i not in losers:
                result[0].append(i)           

        for j in losers:            
            if losers[j] == 1:               
                result[1].append(j)           
        
        
        return [sorted(result[0]) , sorted(result[1]) ]