package com.gmail.shnapi007;

import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.testng.Assert;

public class TestCalculator {

  private Calculator calculator;
  private int total;

  @Before
  private void init() {
    total = -999;
  }

  @Given("^I have a calculator$")
  public void initializeCalculator() {
    calculator = new Calculator();
  }

  @When("^I add (-?\\d+) and (-?\\d+)$")
  public void testAdd(int num1, int num2) {
    total = calculator.add(num1, num2);
  }

  @When("^I subtract (-?\\d+) and (-?\\d+)$")
  public void testSubtract(int num1, int num2) {
    total = calculator.subtract(num1, num2);
  }

  @When("^I multiply (-?\\d+) and (-?\\d+)$")
  public void testMultiply(int num1, int num2) {
    total = calculator.multiply(num1, num2);
  }

  @When("^I divide (-?\\d+) and (-?\\d+)$")
  public void testDivide(int num1, int num2) {
    total = calculator.divide(num1, num2);
  }

  @Then("^the result should be (-?\\d+)$")
  public void validateResult(int result) {
    Assert.assertEquals(total, result);
  }
}
