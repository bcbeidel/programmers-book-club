### Chapter Five:  Formatting
#### Short Synopsis: 

The strongest metaphor out of this chapter is that of a newspaper article.  It is read top to bottom, beginning with a paragraph that exposes the primary intent of the article, followed by supporting detail as the article progresses.  Ultimately keeping ideas with greater conceptual affinity closer together (i.e. the sports section vs business section) and limiting the horizontal distance of the article to a reasonable eyeful.  Another key concept from the chapter appears to be the importance of following team rules, easing the cost of transition from code snippet from one developer to the next.  In short, high level concepts to the top of a class, keep related concepts together, limit the size of classes to a reasonable eyeful, and be consistent in formatting with fellow developers.

___

#### Key Takeaways:
### Vertical Formatting
* Size
	* Limiting the vertical size of classes should be considered, smaller classes are easier to understand as a whole
* Density
	* Openness implies separation of concepts
	* Close proximity implies ideas being tied together
* Ordering
	* Classes should read in such a manner that the high level concepts are at the top of the class.
	* __As in newspaper articles, we expect the most important concepts to come first, and we expect them to be expressed with the least amount of polluting detail. We expect the low-level details to come last.__
	* Related concepts should be near one another, indicating conceptual affinity
	* Dependent functions should be near one another, with the caller above the callee

### Horizontal Formatting
* Size
	* Don't make someone scroll sideways.
* Density   
	* Openness implies separation of concepts, closeness implies close relation
* Indentation
	* A good indentation scheme is an outline to quickly see what concepts are contained within a given method or class
	* Visual alignment affords quick identification of where the scope of a particular item ends, and the scope of another begins
