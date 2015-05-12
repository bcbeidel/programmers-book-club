###Chapter Three: Functions
#### Short Synopsis: 
The longer, more complex, and more convoluted a function, the more difficult the function is to understand and change.

---

#### Key Takeaways: 
#####Qualities of Good Functions:
* Are Small.  2-5 lines.
* "Functions Should Do One Thing.  They should do it well.  They should do it only." 
	* This appears to be a more thoughtful implementation of the Don't Repeat Yourself (DRY) Principle
* Try to use the 'TO' Paragraph as a level of composition.  A method should do a single thing and can be described in a simple paragraph as the example below (p. 35-36 from Clean Code)

``` java
public static String renderPageWithSetupsAndTeardowns(
  PageData pageData, boolean isSuite) throws Exception {
  if (isTestPage(pageData))
    includeSetupAndTeardownPages(pageData, isSuite);
  return pageData.getHtml();
 }
```
> TO RenderPageWithSetupsAndTeardowns, we check to see whether the page is a test page and if so, we include the setups and teardowns. In either case we render the page in HTML. 

* Contain a single level of abstraction
	* Each method should read like a narrative, where each subsequent call is a 'single step' down into the story rather than a giant leap.
* Avoids switch statements
	* Switch statements inherently mean that a function is doing multiple things.  If you have to use a switch statement, try embedding the switch statement to generate one of a group of polymorphic classes (polymorphism).  The example in the text uses employees who are paid in various ways and have different pay methods. Ultimately this is encouraging the logic that differentiates the employees to be buried in the final classes, rather than maintained at the higher level of inheritance.
	
##### Avoid Switch Statments - Bad Example (p. 38)
``` Java
public Money calculatePay(Employee e)
throws InvalidEmployeeType {
   switch (e.type) {
     case COMMISSIONED:
       return calculateCommissionedPay(e);
     case HOURLY:
       return calculateHourlyPay(e);
     case SALARIED:
       return calculateSalariedPay(e);
     default:
        throw new InvalidEmployeeType(e.type);
   }
 }
```
##### Avoid Switch Statments, use polymorphic classes (p. 39)
``` Java
public abstract class Employee {
  public abstract boolean isPayday();
  public abstract Money calculatePay();
  public abstract void deliverPay(Money pay);
}
-----------------
public interface EmployeeFactory {
  public Employee makeEmployee(EmployeeRecord r) throws InvalidEmployeeType;
}
-----------------
public class EmployeeFactoryImpl implements EmployeeFactory {
  public Employee makeEmployee(EmployeeRecord r) throws InvalidEmployeeType {
  switch (r.type) {
    case COMMISSIONED:
      return new CommissionedEmployee(r) ;
    case HOURLY:
      return new HourlyEmployee(r);
    case SALARIED:
      return new SalariedEmploye(r);
    default:
      throw new InvalidEmployeeType(r.type);
  }
}
```

* Uses consistent, descriptive names
	* Using carefully chosen and descriptive terms help reach the point where there are no surprises when reading the code, and the way a method is implemented matches the descriptive name, using terminology that is uniform across the project (i.e. a door, is a door, is a door).
	* "You know you are working on clean code when each routine turns out to be pretty much what you expect."  -Ward Cunningham (p.11)
* Limits the number of input arguments
	* The more arguments that are involved to use a function the more room there is for interpretive error.
	* Example (p.42):  AssertEquals(message, expected, actual) - If the order matters then keeping these in line is imperative to proper use, more arguments means more opportunity for interpretive error.
	
```
Potential Exercise: Find examples of a dyadic and triadic method, and see how we can refactor into a form that takes fewer arguments (i.e. with some kind of argument object)
```

* Has No Side Effects
	* __"Side effects are lies. Your function promises to do one thing, but it also does another hidden thing."__ (Side Effect) (p.44)
	
```
Potential Exercise: Again, I think the example that is provided is pretty clear on this one.  
Perhaps if we were just to walk through it together.
```

* Avoids Output Arguments

```
ToDo:  Find a clear example of the distinction between a return value and an output argument. This one is still fuzzy in my head. 
```

* Doesn't repeat another function (DRY)
* Extracts Try Catch Blocks into functions of their own.

```
Potential Exercise:  Provide an example of a nasty pseudo-code function and then have a subsequently clean / extracted try catch for quick discussion.
```

* Is not excessively complex (i.e. Reduces Cyclomatic Complexity)
	* The more ways in or out of a function the more difficult it is to comprehend.
___

#### Potential Discussion Questions:

* The primary driving force in this chapter lends itself to small, focused functions.  Are there any instances where longer functions are more commonplace or perhaps even appropriate?
* Are there any other themes or rules of thumb that would complement the rules outlined in this chapter?
* Is there a point where eliminating duplicate code goes too far?  How does one draw the line to ensure that when duplication is removed that it is adding value to the software?
