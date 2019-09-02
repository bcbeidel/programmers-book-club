# Chapter 5: Tactical Design with Aggregates

- **Entity:** An entity models an individual thing.  Each entity has a unique identity you can distinguish among entities of the same or different types.  Many (if not most) times they are `mutable`, and its state will change over time.  If the state changes, it is still the same entity.  Take for example a shopping cart, the removal or addition of an item to the cart entity does not change the identity of that cart, just the values within.

- **Value Object:**  models an immutable conceptual whole.  Equivalence is determined by comparing the attributes encapsulated in the `Value Object`.  Take, for instance, a price.  Two prices are the same if their value is equivalent.

- **Aggregate:** Representations of domain concepts that are composed of one or more `Entities` or `Value Objects`.

- **Root Entity:**  At the top of each aggregate, "owns" all the other elements clustered inside.  Identifiable from others of the same type.  A proper name describes the conceptual whole of the `Aggregate`.

## Aggregate Rules of Thumb (p. 81-88)

1. The business should determine the `Aggregate` Compositions
    - The business rules require that the aggregate have all the concepts attached that allow for the full evaluation of the business scenario.  This is something that can bet tested.
2. Design Small Aggregates
    - An `Aggregate` should not try to do too many things and instead should adhere to the Single Responsibility Principle (SRP)
3. Reference Other Aggregates by Identity Only - i.e., only reference by ID.  
    - Referencing by ID helps keep Aggregates small, and allows for lower memory requirements, quicker load times, and discourages trying to update too many aggregates with a single operation.
4. Update other Aggregates Using Eventual Consistency

## Modeling Aggregates

Things to avoid:

- **Anemic Domain Model:** The use of object-oriented programming, but all aggregates only have no-business behavior, just getters, and setters for values.  Don't do this.

- **Business Logic in Application Layers:** Putting business logic in Application Service layers.  Don't do this either.

## Right-Sizing Aggregates (p. 95)

1. Focus on making Aggregates Small.
2. Ensure that the `Aggregate` has all the attributes to answer the business questions
3. Establish your Service Level Agreements (SLAs) by asking you `Domain Experts` how much time may elapse between each update. (a) immediately or (b) within N seconds/minutes/hours/days
4. If the answer is now, consider combining required `Aggregates` into a new combined `Aggregate`
5. If not now, use eventual consistency

## Testable Units

Use your scenarios to make unit tests and ensure that business logic is reflected in the aggregates.
