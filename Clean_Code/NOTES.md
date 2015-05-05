# _Clean Code_ by Robert Martin

### Chapter One: Clean Code
#### Key Takeaways
1. **Bad code is expensive to maintain.**  As we come back to make changes, it is harder to understand the impact of our changes in bad code making the changes take longer (and are more expensive)

2. **'Clean Code'** can have many definitions but some attributes from text included:
> * Can be read and modfied by someone other than the the origional author
> * The intent of the code is clear.  There are no suprises when looking at methods or objects.  I.E. you get what you are expecting
> * All components of the code, classes, functions etc... are focused on doing one thing and doing it well.
> * Includes and runs tests
> * Does not create excessively complex abstractions, and limits the number of classes and objects

3. **The Boy Scout Rule:** _'Try and leave this world a little better than you found it...'_
> * We spend more time reading code than writing it.  (10:1 ratio p.13)
> * When touching code, quick comprehension is key, 'making it easier to read actually makes it easier to write' (p.14)

#### Potential Discussion Questions:

**[Question]** There are an abundance of definitions of what defines 'Clean Code', do any in particular seem more or less pertinent to you?  Do any of these seem dated?

=======

### Chapter Two: Meaningful Names
#### Key Takeaways
1. **Good names are important.**  Clear intent of code by way of deliberate naming saves time when coming back to change code. __(i.e. the reduction of cost of task switching through faster comprehension)__

2. **A good name answers the following questions:**
> * Why does it exist?
> * What does it do?
> * How is it used? 

3. Some qualities of a good name include:
> * **Avoids disinformation.**  Similar names suggest similarity of use/meaning.  Characters like 0 and l are difficult to distinguish.
> * **Makes Meaningful Distinctions.**  Noise words (*the*variable) and number-series naming (*a1, a2, a3*) are examples of distinctions that lack meaning.
> * **Reflects Natural Language.**  Provides easier communcation when discussing code, and reading it. Makes the code searchable.
> * **CLASSES and OBJECTS** names should use **NOUNS**  
> * **METHODS** names should use **VERBS**
> * **Avoid colloquialisms, turn-a-phrase, or puns.**  If it requires a specific background to understand it muddles the meaning
> * **One Word One Concept.**  Consitent verbage for concepts keeps it simple when switching around in code.
> * **Provides *sufficient* not *excessive* context**

=======

###Chapter 3: Functions
#### Short Synopsis: The longer, more complex, and more convoluted a function, the more difficult the function is to understand and change.

#### Key Takeaways: 
#####Qualities of Good Functions:
* Are Small.  2-5 lines.
* "Functions Should Do One Thing.  They should do it well.  They should do it only." 
> * This appears to be a more thoughtful implementation of the Don't Repeat Yourself (DRY) Principle
> * Potential Exercise: Generate a 'TO' paragraph to determine how many 'things' a particular method is doing.  For this, I believe two examples, one of a bad method.  And one of an unrelated good method.
* Contain a single level of abstraction
> * Each method should read like a narrative, where each subsequent call is a 'single step' down into the story rather than a giant leap.
* Avoids switch statements
> * Switch statements inherently mean that a function is doing multiple things.  If you have to use a switch statement, try embedding the switch statement to generate one of a group of polymorphic classes (polymorphism).  (I.E. bury the switch logic that chooses which class is generated)
> * Potential Exercise: I think the example that is provided is pretty clear on this one.  Perhaps if we were just to walk through it together.
* Uses consistent, descriptive names
> * Using carefully chosen and descriptive terms help reach the point where there are no surprises when reading the code, and the way a method is implemented matches the descriptive name, using terminology that is uniform across the project (i.e. a door, is a door, is a door).
> * "You know you are working on clean code when each routine turns out to be pretty much what you expect."  -Ward Cunningham (p.11)
* Limits the number of input arguments
> * The more arguments that are involved to use a function the more room there is for interpretive error.
> * Example (p.42):  AssertEquals(message, expected, actual) - If the order matters then keeping these in line is imperative to proper use, more arguments means more opportunity for interpretive error.
> * Potential Exercise: Find examples of a dyadic and triadic method, and see how we can refactor into a form that takes fewer arguments (i.e. with some kind of argument object)
* Has No Side Effects
> * "Side effects are lies. Your function promises to do one thing, but it also does another hidden thing." (Side Effect) (p.44)
> * Potential Exercise: Again, I think the example that is provided is pretty clear on this one.  Perhaps if we were just to walk through it together.
* Avoids Output Arguments
> * ToDo:  Find a clear example of the distinction between a return value and an output argument. This one is still fuzzy in my head. 
* Doesn't repeat another function (DRY)
* Extracts Try Catch Blocks into functions of their own.
> * Potential Exercise:  Provide an example of a nasty pseudo-code function and then have a subsequently clean / extracted try catch for quick discussion.

### Chapter 4:  Comments
#### Short Synopsis: Comments represent a failure to accurately represent the core concept of the code in its naming and implementation.  If you are about to write a comment, think first for a way to more clearly express the intent of your code. 


> For this chapter, I honestly didn't see much more in the way worth documenting.   I keep coming back to the idea that comments represent a failure and should be avoided unless there is a compelling reason to add a comment.  If anything we could highlight what attributes we think make for especially heinous crimes of comment.
