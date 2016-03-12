### Chapter Six:  Objects & Data Structures
#### Short Synopsis: 

> Objects hide their data between abstractions and expose functions that operate on that data.  Data Structures expose their data and have no meaningful functions.

Neither Objects, nor Data Structures are inherently better than the other.   Different tools for different jobs.

___

#### Key Takeaways:
* Data Structures
	* Acts as little more than storage.  A true data structure is a container for data elements that is open to the things working on it, and has no logic on it's elements.

* Objects
	* Acts as a conceptual unit.  It can have more baggage than the Data Structures, such as mutator and accessor methods.  The whole things is a package.


* Procedural vs Object Oriented (p. 97)

	> Procedural Code (code using data structures) makes it easy to add new functions without changing the existing data structures.  Object Oriented code on the other hand, makes it very easy to add new classes without changing existing functions.

	The complement is also true.

	> Procedural code makes it hard to add new data structures because all the functions must change.  Object Oriented code makes it hard to add new functions because all the classes must change.

* Law Of Demeter - aka Don't talk to strangers
