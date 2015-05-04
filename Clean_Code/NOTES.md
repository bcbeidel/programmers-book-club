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

---

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


### Chapter Three: Functions
#### Key Takeaways
