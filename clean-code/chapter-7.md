# Chapter Seven: Error Handling

## Synopsis

Extensive error handling, if not done carefully can clutter the business logic of an application.  The use of try-catch-finally blocks helps define the normal flow of an application.

___

## Key Takeaways

* It isn't just a matter of aesthetics; the code is better because two concerns (code execution and error handling) were tangled and are now separated
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
   * Checked exceptions incur additional maintenance costs for code 'above' you.  If you change the signature of a checked exception, you must change the signature of all of the consuming code to handle it properly.
* Exceptions need context in the terms the caller can understand
   * This function failed, why should they care, and what can they do.
* Don't Return, or pass null around in the code
   * One forgotten null check is all it takes to cause mayhem

### Tangent???  Third party API's

On a somewhat tangential note - the chapter goes on to talk about the importance of wrapping 3rd party API's the perks being

- Reduced switching cost when going from one API to another (i.e., Stripe --> Paypal)
- Easier to mock-out or test external API's
- Insulation for domain language, you don't have to adopt the language of the API, you can maintain the language that makes sense to you and your project, and let the wrapper do the translation
   
 ---
 
 Potential Discussion Questions
 
 - Do you see the lessons learned in this chapter being applied differently depending on the language?  For example, how would it vary between a strongly-typed scala and weakly-typed python?
- Does the recommendation to 'Use exceptions not return codes' seem relevant given modern languages?  Have you experienced any patterns recently that utilize return codes?
- Does the conversation regarding the use of `null` change when talking about working in data science?
