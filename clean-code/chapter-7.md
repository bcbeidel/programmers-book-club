# Chapter Seven: Error Handling

## Synopsis

Extensive error handling, if not done carefully can clutter the business logic of an application.  The use of try-catch-finally blocks helps define the normal flow of an application.

___

## Key Takeaways

* Start by writing a __Try-Catch-Finally__ block.  
    * > One of the most interesting things about exceptions is that they define a scope within your program.  When you execute code in the try portion of a try-catch-finally statement, you are stating that the execution can abort at any point and then resume at the catch.
    * For a very generic example see below:  

``` java
public void DoStuff() {
    try {
        DoThingsWeAreExpectingToBeDone();
    } catch {
        HandleTheException();
    } finally {
        DoAnyCleanUpThatNeedsToBeDone();
    }
} 
```

* Use Unchecked Exceptions

* Exceptions Need Context

* Don't Return, or pass null around in code
