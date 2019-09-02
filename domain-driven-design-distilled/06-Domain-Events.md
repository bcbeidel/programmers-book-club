# Chapter 6: Tactical Design with Domain Events

- **causal consistency:** can be defined as a model that captures the causal relationships between operations in the system and guarantees that each process can observe those causally related operations in common causal order. In other words, all processes in the system agree on the order of the causally related operations.

## Designing, Implementing and Using Domain Events

To help achieve causal consistency in event of out-of-order receipt of events, __appending timestamps to events__ can help sort what came in when.

__Domain Events Should:__

- reflect the terminology of your `Ubiquitous Language` 
- be a statement of past occurrence (verb in the past tense) (`ProductCreated`)
- have a name and properties required to fully convey the event

### Enriching Domain Events

`Domain Events` can be enriched with additional data.  This can help the consumer that doesn't want to query back to your `Bounded Context` to details on the object.  Too much data may make it unclear what is happening in the vent.

### Commands v. Domain Events (p. 107)

> A command is different from a `Domain Event` in that a command can be rejected as inappropriate in some cases, such as a due to supply and availability of some resources (product, funds, etc.), or another kind of business-level validation. So, a command may be rejected, but a `Domain Event` is a matter of history an cannot logically be denied.

## Event Sourcing (p. 107-108)

**Event Sourcing:** persisting all `Domain Events` have occurred for an `Aggregate` instance as a record of what changed to that aggregate, rather than the current state of the `Aggregate`.  The state of the `Aggregate` can be recreated at any point in time.
