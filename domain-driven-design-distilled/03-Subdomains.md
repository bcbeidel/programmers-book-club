# Ch. 3:  Strategic Design with Subdomains

- **Subdomain:** a sub-part of your overall business domain.  You can think of a subdomain as representing a single, logical domain model. It is a problem space (or solution space depending on your term preference) where a logically scoped set of business problems are being solved.

## Types of Subdomains (p.46-47)

- **Core Domain:** where you are making a strategic investment in a single, well-defined domain model, committing significant resources for carefully crafting your `Ubiquitous Language` in an explicit `Bounded Context`.  This is high on your organization's list of projects because it will distinguish it from all competitors.

- **Supporting Subdomain:** This modeling situation that calls for custom development because an off-the-shelf solution doesn't exist. However, you will still not make the kind of investment that you have made for your `Core Domain`.  This may be a candidate for outsourcing.  It is important because your `Core Domain` can't be successful without it.

- **Generic Subdomain:** This kind of solution may be available for purchase off-the-shelf, but also may be outsourced.

_When DDD is being discussed, we are most likely discussing a core domain._

## Dealing With Complexity (p. 47-50)

Legacy systems may lack any clear boundaries, these can be referred to as `unbounded` legacy systems.  (a.k.a., `Big Ball of Mud`). In reality, the one system is full of multiple tangled models that should have been separately designed and implemented, but are just jumbled together into one very complex and intertwined mess.

> When using DDD, a `Bounded Context` should align one-to-one with a single `Subdomain`
