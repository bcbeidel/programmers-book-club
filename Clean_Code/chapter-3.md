###Chapter Three: Functions
#### Short Synopsis: 
The longer, more complex, and more convoluted a function, the more difficult the function is to understand and change.

---

#### Key Takeaways: 
#####Qualities of Good Functions:
* Are Small.  2-5 lines.
* "Functions Should Do One Thing.  They should do it well.  They should do it only." 
	* This appears to be a more thoughtful implementation of the Don't Repeat Yourself (DRY) Principle
	> * Potential Exercise: Generate a 'TO' paragraph to determine how many 'things' a particular method is doing.  For this, I believe two examples, one of a bad method.  And one of an unrelated good method.
* Contain a single level of abstraction
	* Each method should read like a narrative, where each subsequent call is a 'single step' down into the story rather than a giant leap.
* Avoids switch statements
	* Switch statements inherently mean that a function is doing multiple things.  If you have to use a switch statement, try embedding the switch statement to generate one of a group of polymorphic classes (polymorphism).  (I.E. bury the switch logic that chooses which class is generated)
	> * Potential Exercise: I think the example that is provided is pretty clear on this one.  Perhaps if we were just to walk through it together.
* Uses consistent, descriptive names
	* Using carefully chosen and descriptive terms help reach the point where there are no surprises when reading the code, and the way a method is implemented matches the descriptive name, using terminology that is uniform across the project (i.e. a door, is a door, is a door).
	* "You know you are working on clean code when each routine turns out to be pretty much what you expect."  -Ward Cunningham (p.11)
* Limits the number of input arguments
	* The more arguments that are involved to use a function the more room there is for interpretive error.
	* Example (p.42):  AssertEquals(message, expected, actual) - If the order matters then keeping these in line is imperative to proper use, more arguments means more opportunity for interpretive error.
	> * Potential Exercise: Find examples of a dyadic and triadic method, and see how we can refactor into a form that takes fewer arguments (i.e. with some kind of argument object)
* Has No Side Effects
	* __"Side effects are lies. Your function promises to do one thing, but it also does another hidden thing."__ (Side Effect) (p.44)
	> * Potential Exercise: Again, I think the example that is provided is pretty clear on this one.  Perhaps if we were just to walk through it together.
* Avoids Output Arguments
	> * ToDo:  Find a clear example of the distinction between a return value and an output argument. This one is still fuzzy in my head. 
* Doesn't repeat another function (DRY)
* Extracts Try Catch Blocks into functions of their own.
	> * Potential Exercise:  Provide an example of a nasty pseudo-code function and then have a subsequently clean / extracted try catch for quick discussion.

___

#### Potential Discussion Questions:

* The primary driving force in this chapter lends itself to small, focused functions.  Are there any instances where longer functions are more commonplace or perhaps even appropriate?
* Are there any other themes or rules of thumb that would complement the rules outlined in this chapter?	