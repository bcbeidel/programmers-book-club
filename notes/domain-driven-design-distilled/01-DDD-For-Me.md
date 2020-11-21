---
tags: [clean-code]
title: 01-DDD-For-Me
created: '2020-07-09T17:15:35.179Z'
modified: '2020-09-30T23:46:16.115Z'
---

# Chapter 1: DDD For Me

> Your organization will benefit most from software models that explicitly reflect its core competencies. (p.1)

## Good, Bad, and Effective Design (p.3)

Some of the perceived problems with delivering software projects (according to the author).

- Software development is considered a cost center rather than a profit center
- Developers chase after 'shiny objects', i.e., new technologies an tools
- The database is given too much priority, and often discussion focuses on the database and data model rather than business process and operation
- Developers don't give proper emphasis to naming objects and operations based on `what they do`...
- Business spends too much time writing specs that no one uses
- Estimates are in high demand and add inappropriate emphasis on throughput rather than the effectiveness of work
- Business logic ends up housed in a user interface (UI) and inside persistence layers (Database) rather than middle business logic 
    - These are violations of the single responsibility principle
- broken, slow and locking database queries
- over-generalized abstractions to fix future problems
- strongly coupled services can be difficult to update and maintain

> Questions about whether design is necessary or affordable are quite beside the point: design is inevitable.  The alternative to good design is bad design, not no design at all.  - Book Design: A Practical Introduction by Douglas Martin

### Roads, and Design (p.6)

- Modern roads are planned, straightened out and made level.  This is with thoughtful planning
- Historical roads are winding, narrow, potted and often without regard to any usage aside from the immediate inhabitants

With this analogy, the author seemed to want to convey that software without deliberate design is more likely to lead to winding country roads, rather than thoughtful thoroughfares.

**Design is how it works.**
