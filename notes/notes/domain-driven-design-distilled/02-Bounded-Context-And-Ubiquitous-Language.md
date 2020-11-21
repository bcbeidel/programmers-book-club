# Chapter 2: Strategic Design with Bounded Contexts and Ubiquitous Language

- **Bounded Context** - a semantic contextual boundary.  That means within the boundary of each component of the software each word has a specific meaning and does specific meaning.  When inside a bounded context, a given term has one consistent meaning to everyone inside that context.

- **Ubiquitous Language** - the terms used by the team within a bounded context.  It is both spoken among the team and implemented in the software model.  Thus it is necessary that a _Ubiquitous Language_ be rigorous -- strict, exact, stringent, and tight.  

> When someone on the team uses expressions from the _Ubiquitous Language_, everyone on the team understands what is meant with precision and constraints.  The expression is ubiquitous within the team as is all language used by the team that defines the software model being developed (p.13-14)

Consider the example of countries and languages, cross boundaries between countries in Europe (bounded context) and it is reasonable to expect that a new official language (ubiquitous language) will be spoken.

## Big Ball of Mud

Consider a domain, where multiple teams are required to work on it, where the language is not clear, boundaries are difficult to identify, where a term is used and has different meaning depending on what part of the code you are working on.  You are describing a `Big Ball of Mud`. 

## Domain Experts and Product Owners

- business departments or workgroup divisions are a good proxy for where contexts should exist

### Identifying Context Boundaries

Imagine an insurer, take now the term `policy`.  Now that policy has a different meaning and usage in the Underwriting Department, Claims Department, and Inspections Department (p. 18-20)... in other words `policy != policy != policy`

- Underwriting - focused on the evaluation of risks of the insured entity
- Inspections - Ensuring the condition of the insured entity
- Claims - focused on processing the request for payment to either replace or repair the insured entity.

> There is no need to name these `UnderwritingPolicy`, `ClaimsPolicy`, or `InspectionPolicy`. The name of the `Bounded Context` takes care of the scoping.  The name is simply `Policy` in all three `Bounded Contexts` (p.20)

## Developing a Ubiquitous Language (p.34)

Though we are listening for the `nouns` used within our team to develop the language, the `verbs`, `adjectives`, and other parts of speech can do a lot to tell us what the business logic should be, and to help establish what the domain model is supposed to do.  Consider expressing your `Core Domain` as a set of concrete scenarios, with a `who`, `what`, `where` and `when` (perhaps even a `why`...)/

A quick mapping of parts of speech (in my head, mileage may vary...)
- subject (the who) --> roles 
- object  (what is being acted on) --> class objects
- verb    (what action is taken) --> function names
- adverb  (action variants) --> function/class modifiers
- adjective (object descriptors) --> object states/descriptors

### A warning about documentation (p. 36)

> Be careful about the time spent in your domain modeling efforts when it comes to keeping documents with written scenarios and drawings up-to-date over the long haul.  Those things are not the domain model.  Rather they are just tools to help you develop the domain model.  In the end, the code is the model and the model is the code. (p. 36)

## Putting Scenarios to work

- Specification by Example [Specification]
- Behavior-Driven Development [BDD]

```
Scenario: The product owner commits a backlog item to a sprint
  Given a backlog item is scheduled for release
  And the product owner of the backlog item
  And the sprint for commitment
  and a quorum of team approval for commitment

  When the product owner commits the backlog item to the sprint

  Then the backlog item is committed to the sprint
  And the backlog item committed event is created
```

## Architecture (p. 41-43)

Successful patterns for creating a properly bounded context include a mix-and-match of...

- Event-Driven Architecture (ch.6)
- Command Query Responsibility Segregation
- Reactive and Actor Model
- REST: Representational State Transfer
- Service-Oriented Architecture (SOA)
- Microservices
- Cloud Computing

The primary take-away for me, lots of patterns will work, the primary importance is finding a way to insulate your domain logic from the outside with an insulating, adaptive layer, and ensure you don't allow the language of the outside world to muddle your `ubiquitous language`.
