# Chapter 4: Strategic Design with Context Mapping

Take an example where HR and Payroll exist as two separate, well defined `Bounded Context` with their own `Ubiquitous Language` regarding employees.  In the case that an employee receives a promotion in the HR context, it would likely require that other contexts such as Payroll receive information regarding the change, in this case, a change in pay.  Translating that information between those two contexts represents a `Context Mapping`.

## Kinds of Mappings (p.54-59)

Thinking about mappings in terms of the relationships between teams...

- **Partnership:** Two teams regularly align to synchronize and align on dependent work.  Requires a significant amount of coordination, depending on the number of shared dependencies.

- **Shared Kernel:**  Two or more teams share a small, but common model.  Teams must agree on elements to share.  Often difficult to conceive in the first place, because you must understand all the models to identify the least-common-denominator.  They are difficult to maintain because you must have a common agreement on the shared model.

- **Customer-Supplier:**  `Supplier` team is upstream and must provide what the down-stream `Customer` team requires.  It is up to the `Customer` to meet with the supplier and ensure their needs are met.  Only effective as long as the `Supplier` is responsive to the `Customer` needs.

- **Conformist:**  In a scenario where there is an upstream and downstream team, but the upstream team has no motivation to support the upstream needs.  The downstream team cannot sustain the effort to translate the upstream model into their language.  Example - integrating Amazon service technology management tools.

- **Anti-corruption Layer:** a defensive `Context Mapping` relationship where the downstream team creates an insulating, translation layer from model to model.  This is also an approach to integration.

- **Open Host Service:** The upstream team defines a protocol or interface that gives access to your bounded context.  The services offered by the API are well documented and easy to use.  These API interfaces serve as a contract definition, a guarantee that the consumer can expect a consistent model. 

- **Published Language:**  A well-documented information exchange between `Bounded Contexts`.  Can be defined with technologies such as XML Schema, JSON Schema, or over-the-wire formats like Protobuf, or Avaro.  Again, like open host services, a clear, agreed-upon contract is published and as long as it is met, and can be relied upon as long as all parties adhere to it.

- **Separate Ways:** Integration with one or more `Bounded Contexts` will not provide significant payoff through the consumption of various Ubiquitous Languages.  Each team goes it alone...

- **Big Ball of Mud:**  Don't do this.

## Integrations: Making Good Use of Context Mapping (p.60-69) 
---
---
> In the least favorable of situations you may be forced to use database or filesystem integration, but let's hope that doesn't happen.  Database integration really should be avoided, and if you are forced to integrate that way, you should be sure to isolate your consuming models by means of an `Anticorruption Layer`.
---
---

- **Remote Procedure Calls (RPC) with SOAP:**  The idea is to make using services from another system look like a simple, local procedure or method invocation.  Still, it must travel over the network, which has the potential for network latency or even failure.  It also suggests a strong coupling between the service provider and the client.

- **RESTful HTTP:**  Focuses on the resources exchanged between Bounded Contexts and the `POST`, `GET`, `PUT`, and `DELETE` Operations.  It can help define good APIs (author's opinion based on the success of the web).  They tend to fail due to network latency and failure.  Also, one common mistake is to use provide the full internal domain model as the API model rather than just the pieces (and representations) required by the consumer.

- **Messaging:** The use of `asynchronous` messaging for integrations removes much of the temporal coupling associated with blocking forms such as RPC and REST.  You anticipate the latency and tend to build more robust systems since you never expect to see immediate results.

## Additional Concepts For Messaging

- **At-Least-Once-Delivery (Messaging):**  A messaging pattern where the messaging mechanism will periodically redeliver a given message.  This will be done in cases of message loss, slow-reacting, or downed receivers, and receivers failing to acknowledge receipt.

- **Idempotent Receiver (Messaging):** describes how a receiver of a request performs and operation in such way that it produces the same result even if it is performed multiple times.  Thus, if the same message is received multiple times, the receiver will deal with it safely.  De-duplication, ignoring the message, or safely reapplying the operation are among valid handling of the duplicate messages.
