Feature: Calc feature file

  Scenario Outline: Add two numbers <num1> & <num2>
    Given I have a calculator
    When I add <num1> and <num2>
    Then the result should be <total>
    Examples:
      | num1 | num2 | total |
      | -2   | 3    | 1     |
      | 10   | 15   | 25    |
      | 99   | -99  | 0     |
      | -1   | -10  | -11   |

  Scenario Outline: Subtract two numbers <num1> & <num2>
    Given I have a calculator
    When I subtract <num1> and <num2>
    Then the result should be <total>
    Examples:
      | num1 | num2 | total |
      | -2   | 3    | -5    |
      | 15   | 10   | 5     |
      | 99   | 99   | 0     |
      | -1   | -10  | 9     |

  Scenario Outline: Multiply two numbers <num1> & <num2>
    Given I have a calculator
    When I multiply <num1> and <num2>
    Then the result should be <total>
    Examples:
      | num1 | num2 | total |
      | 2    | 2    | 4     |
      | 5    | 6    | 30    |
      | 8    | -8   | -64   |
      | 1    | 0    | 0     |

  Scenario Outline: Divide two numbers <num1> & <num2>
    Given I have a calculator
    When I divide <num1> and <num2>
    Then the result should be <total>
    Examples:
      | num1 | num2 | total |
      | 4    | 2    | 2     |
      | 36   | 6    | 6     |
      | -64  | 8    | -8    |
      | 0    | 1    | 0     |
