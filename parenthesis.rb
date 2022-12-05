#begin
Ruby problem
Give n pairs of parenthesis, write a function to generate all combinations of well-formed parentheses

Example 1:
Input: n = 3
Output: ["((()))", "(()())", "(())()", "()(())", "()()()"]

Example 2: 
Input: n = 1
Output: ["()"]

Constraints:
1 <= n <= 8
#end

def generate_parenthesis(n)
  result = []
  generate_parenthesis_helper(n, 0, 0, '', result)
  result
end

def generate_parenthesis_helper(n, open_parens, close_parens, current_string, result)
  if open_parens == n && close_parens == n
    result.push(current_string)
    return
  end
  
  if open_parens < n
    generate_parenthesis_helper(n, open_parens + 1, close_parens, current_string + '(', result)
  end
  
  if close_parens < open_parens
    generate_parenthesis_helper(n, open_parens, close_parens + 1, current_string + ')', result)
  end
end
