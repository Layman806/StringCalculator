# String Calculator
Create a simple string calculator that returns the sum of all the integers in the given input string.

### Input
A string of comma separated numbers.

### Output
An integer, sum of the numbers.

### Examples
Input&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;Output<br>
""&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br>
"1"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1<br>
"1,5"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6


## Requirements
1. Create a simple String calculator with a method signature like this:
   ```
   int add(string numbers)
   ```
2. Allow the add method to handle any amount of numbers.
3. Allow the add method to handle new lines between numbers (instead of commas). ("1\n2,3" should return 6)
4. Support different delimiters:
   - To change the delimiter, the beginning of the string will contain a separate line that looks like this:<br>
   `"//[delimiter]\n[numbers…]".`
   <br>For example,<br>
   `"//;\n1;2"` where the delimiter is ";" should return 3
5. Calling add with a negative number will throw an exception: `"negative numbers not allowed <negative_number>"`.
6. Numbers bigger than 1000 should be ignored, so adding 2 + 1001 = 2

## Project Structure
- `StringCalculator` is the main class in the root directory, as `./string_calculator.rb`.
- Specs/tests are in the `./spec` directory.

## Commit message structure
`ProjectName - commit message`<br>
e.g.: `SC1 - initial commit`
