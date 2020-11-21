def minimum_edit_distance(source, target,
                          delete_cost       = 1,
                          insertion_cost    = 1,
                          substitution_cost = 1):

    n = len(target)
    m = len(source)

   # Create a table to store results of subproblems 
    dp = [[0 for x in range(n+1)] for x in range(m+1)] 
  
    # Fill d[][] in bottom up manner 
    for i in range(m+1): 
        for j in range(n+1): 
  
            # If first string is empty, only option is to 
            # insert all characters of second string 
            if i == 0: 
                dp[i][j] = j    # Min. operations = j 
  
            # If second string is empty, only option is to 
            # remove all characters of second string 
            elif j == 0: 
                dp[i][j] = i    # Min. operations = i 
  
            # If last characters are same, ignore last char 
            # and recur for remaining string 
            elif source[i-1] == target[j-1]: 
                dp[i][j] = dp[i-1][j-1] 
  
            # If last character are different, consider all 
            # possibilities and find minimum 
            else: 
                dp[i][j] = 1 + min(dp[i][j-1] * insertion_cost,        # Insert 
                                   dp[i-1][j] * delete_cost,        # Remove 
                                   dp[i-1][j-1] * substitution_cost)    # Replace 
  
    return dp[m][n]

pairs = [
    ("", ""),
    ("cat", "cats"),
    ("dogs", "doggies"),
    ("leda", "deal"),
    ("drive", "brief"),
    ("brief", "divers")
]

for pair in pairs:
    distance = minimum_edit_distance(pair[0], pair[1])
    print(f"The distance between '{pair[0]}' and '{pair[1]}' is {distance}")