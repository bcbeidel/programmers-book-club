# Chapter Eight:  Boundaries 

## Synopsis

Maintaining clear boundaries can save you future headaches, and permit you to move forward when you otherwise might be stuck.  It applies to interact with code internal and external code boundaries.

## Key Takeaways

### External Boundaries (API's + Wrappers)

- Use learning tests as a positive return on investment
  - Help you learn the proper usage of an API
  - Provide some repeatable validation that the expected functionality of API has not changed from version to version
  - "Learning tests verify that third-party packages, we are using work the way we expect them to."
- Develop a wrapper so that there is a 'single point of entry' for interacting with the external codebase
  - Reduce switching cost by minimizing the number of places where the external code is referenced
  - It is easier to move a potted plant, rather than one that is allowed to grow freely into the ground
  - Provides an insulating layer so that you don't have to defer to the API creator for terminology (i.e., DDD Insulating layer)

### Internal Boundaries (Interfaces)

- The same indications apply here, the added benefit in internal scenarios, we can define an endpoint to deal with something that is currently unknown.  We don't have to know the full implementation details yet. We need to define with the signature of the endpoint will be, and worry about the implementation later.
   
---
 
## Potential Discussion Questions
 
- Is there a significant distinction in the use case for internal vs. external boundaries? What about OOP vs functional languages? What are some of the commonalities or distinctions that come to mind?
- Are the learning tests just an Integration test by another name?
