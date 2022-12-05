#begin
Ruby problem
Give a string moresecode that contains a list of '.' and '-'. You are allowed to make one move and replace two consecutive ".." with "--".
Return all possible morese codes you can get after a single move you do to the string morsecode.
If you cannot do any moves, just return an empty array.

Example 1:
Input: morsecode = "...."
Output: ["--..", ".--.", "..--"]
Constraints:
1 <= morsecode.length <= 500
morsecode[i] is either '.' or '-'
#end

def possible_morse_codes(morsecode)
  result = []
  morsecode.each_char.with_index do |char, i|
    if char == '.' && morsecode[i + 1] == '.'
      result << morsecode.dup.tap { |code| code[i, 2] = "--" }
    end
  end
  result
end
