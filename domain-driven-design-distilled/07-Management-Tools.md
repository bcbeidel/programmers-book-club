# Chapter 7: Acceleration and Management Tools

## Event Storming

1. Create all the domain events that occur in your `Bounded Context`
    - focus on the events, not the structure
    - write the verbs and names in the past tense
    - Align them all in time-based order
    - Identify the outcome processes from the events
2. Add the commands that caused the domain event
3. Associate the Entity/Aggregate on which the command is executed and produces the domain event
4. Draw `Context Boundaries` 
5. Identify the view required for the users
