Data Pricing - From Economics To Data Science.
================

  - [Instructor Summary](#instructor-summary)
  - [<span>Part 1: Introduction</span>](#part-1-introduction)
      - [Data as Fundamental Resources](#data-as-fundamental-resources)
      - [Measuring the value of data: Example
        Scenarios](#measuring-the-value-of-data-example-scenarios)
      - [Key Terms: Categories Of
        Products](#key-terms-categories-of-products)
  - [<span>Part 2: Economics Of Data
    Pricing</span>](#part-2-economics-of-data-pricing)
      - [What is pricing?](#what-is-pricing)
      - [Technological Forces On Pricing: Cost
        Reduction](#technological-forces-on-pricing-cost-reduction)
      - [Search Costs](#search-costs)
      - [Production Costs](#production-costs)
      - [Replication Costs](#replication-costs)
      - [Transportation Costs](#transportation-costs)
      - [Tracking And Verification
        Costs](#tracking-and-verification-costs)
      - [Distinctions between Digital and Data
        Products](#distinctions-between-digital-and-data-products)
      - [Economics of Data Pricing:
        Summary](#economics-of-data-pricing-summary)
  - [<span>Part 3: Fundamental Principles of Data
    Pricing</span>](#part-3-fundamental-principles-of-data-pricing)
      - [Versioning: a fundemental
        framework](#versioning-a-fundemental-framework)
      - [Concept: Truthfulnesss in
        Markets](#concept-truthfulnesss-in-markets)
      - [Concept: Revenue Maximization](#concept-revenue-maximization)
      - [Concept: Fairness in Markets](#concept-fairness-in-markets)
      - [Concept: Arbitrage-free
        Pricing](#concept-arbitrage-free-pricing)
      - [Concept: Privacy-preservation](#concept-privacy-preservation)
      - [Concept: Computational
        Efficienty](#concept-computational-efficienty)
  - [Fundamental Principles of Data Pricing:
    Summary](#fundamental-principles-of-data-pricing-summary)
  - [<span>Part 4: Pricing Digital
    Products</span>](#part-4-pricing-digital-products)
      - [Streams of Revenue](#streams-of-revenue)
      - [Concept: Micropayments](#concept-micropayments)
      - [Pricing Model: Bundling](#pricing-model-bundling)
      - [Pricing Model: Auctions](#pricing-model-auctions)
  - [Key Terms](#key-terms)
  - [Resources](#resources)

[Slides](https://www2.cs.sfu.ca/~jpei/publications/Data%20Pricing%20by%20Jian%20Pei%20KDD%202020.pdf)
| [Website](https://www.cs.sfu.ca/~jpei/DataPricingTutorial.html) |
[Video
Playlist](https://www.youtube.com/playlist?list=PL8n-erTbIhTMvdXs657kBOp2pXFJVyAnB)

## Instructor Summary

> It is well recognized that data are invaluable. How can we assess the
> value of data objectively and numerically? Pricing data has been
> studied and practiced in dispersed areas and principles, such as
> economy, data management and data mining, electronic commerce, and
> marketing. In this tutorial, we try to present a unified and
> comprehensive overview of this important and long overdue pillar in
> data science and engineering. We will examine various motivations
> behind data pricing, understand the economics of data pricing, review
> the development and evolution of pricing models, and compare the
> proposals of marketplaces of data. We will also connect data pricing
> with several highly related areas, such as cloud service pricing,
> privacy pricing, and decentralized privacy-preserving infrastructure
> like blockchain. In addition, we will align with the industry practice
> where real business is running. This tutorial will be highly
> interdisciplinary and will be indeed a fusion of academia foundations
> and industry practice. We do not assume any background knowledge and
> will make the essential ideas highly accessible to practitioners and
> graduate students.

## [Part 1: Introduction](https://www.youtube.com/watch?v=csvxTf7Nfxc&feature=emb_logo)

### Data as Fundamental Resources

  - Products and Services are being delivered in digital forms;
    generating first-party data
  - The second use of data is in analytics and other “Big Data
    Applications.”
  - Sharing and reuse of data has profound implications on the economy
      - Consider traffic mapping applications. The first use of
        real-time traffic data is for the driver; the second use could
        be for governments and urban planners.
  - Second use can enable fairness and innovation. Universal
    availability of data can help with emerging initiatives or be used
    to advocate for minority parties.

### Measuring the value of data: Example Scenarios

A popular request in the business world. How do you price it to enable
the economic transaction? Consider a few scenarios.

1.  Data Transmission (pay for the pipes)
      - Example: A mobile service provider offers a data package with
        smartphone service
      - How do you price data transmission?
          - Factors: data amount quota, location, transmission speed
          - Often agnostic of content, quality, collection storage, or
            processing?
          - Parallel: water or electric bill, pay on hookup + amount of
            usage.
2.  Digital Products (pay for the content)
      - Example: A person watches a movie at home, where the film is
        delivered as a stream of data
      - Priced as a content product/service
          - Factors: content, resolutions…
          - Often agnostic of how data gets to the consumer
3.  Data Products (pay for the stream or insights)
      - Example: use a weather forecasting service in business
        operations
      - Priced as a subscription, data product, or service
          - Factors: granularity, data horizon, analysis requirements,
            business reliance
          - Often independent of delivery, or if it is standard
            information for public

Data pricing is interdisciplinary, taking from economics, computation,
and data science.

### Key Terms: Categories Of Products

#### **Digital Products**

Intangible goods that can be consumed through electronics. (e.g.,
ebooks, music, digital-ads, online coupons). May have a physical
correspondence with the consumer, but not required.

#### **Data Products**

Datasets as products and information services derived from datasets

#### **Information Goods**

Include digital and data products

-----

## [Part 2: Economics Of Data Pricing](https://www.youtube.com/watch?v=7pyHDkKWa3k&feature=emb_logo)

### What is pricing?

The practice that a business sets a price at which a product can be
sold. Often part of the marketing plan. Often the result of a
consideration of many objectives including:

  - Profitability
  - Fitness in the marketplace
  - Market Positioning
  - Price consistency
  - Meeting or preventing competition

Many strategies in the economics of pricing tactics, beyond the scope of
this tutorial…

### Technological Forces On Pricing: Cost Reduction

> “Technology changes. Economic laws do not.”

  - Cost reduction is a core in the production, distribution, and
    consumption of information goods when compared to physical goods.
      - i.e., the unit cost a digital widget can be driven down much
        more than when compared to a physical widget.
  - Cost reduction in Information Goods.
      - Search Costs
      - Production Costs
      - Replication Costs
      - Transportation Costs
      - Tracking and Verification Costs

### Search Costs

  - The cost of looking for information
  - Information goods allow for effective, efficient online search
      - Easier discovery of products and services
      - Easier price comparison
          - Example: Online books and music, vs. in-person
  - Low search costs facility sale of rare, long-tail products
      - Results in greater variety, specialization in information goods
        and services
      - Recommender systems play an important role in deciding the
        degree of variety
      - **Echo Chamber Effect**: customers may tend to consume that
        which aligns with their viewpoints

#### Low Search Costs Lead To Platforms

**Platform businesses** provide matching services to customers, improve
efficiencies. STrategies for building and running these businesses
include:

  - Interoperability: the ability of computer systems or software to
    exchange and make use of information.
  - Compatibility: two or more things can exist or work together in
    combination without problems or conflict.
  - Standards: a required or agreed level of quality or attainment.

### Production Costs

  - A wide range of costs are reduced substantially compared to
    traditional products
      - Materials, semi-finished products, transportation
  - With sharing, the unit-cost of production can approach zero
  - Information goods can often reduce costs of customization to
    extremes (i.e., ML content customization)

#### Low Production Costs Result In Distinct Business Models

Examples include Sharing economies, pay-as-you-go, query-based models
(pay for the fraction you use). Enables long-tail products.

### Replication Costs

Since consumer A’s consumption of information does not affect the
availability or quality of the good for consumer B, it is considered
non-rival.

Bundling is often used for zero-marginal cost, non-rival information
goods. The pressure often makes much of these publicly available.
Consider Wikipedia and Open Source Software.

#### Low Replication Costs Bring Challenges

  - Challenging to copyright and policies and enforcement
  - Zero marginal cost, ease the way for spamming and online crime

### Transportation Costs

  - With the internet, the cost of transporting information goods
    approaches zero
      - Same information good available across the world
      - Local tastes still influence consumption (see low production
        costs)
  - Regulations may put geo-specific constraints
      - Think China, blocking Wikipedia.
  - Copyright policy may further affect the availability, consumption of
    information goods, which may be reflected in the price.

### Tracking And Verification Costs

Information goods providers can track users with relatively low costs,
allowing for extensive personalization and possible price
discrimination.

  - Example: Behavioral Price Discrimination
      - Set prices according to previous behaviors
      - Implications on privacy, a well-versed user, may choose to hold
        information
  - Example: Versioning
      - A different version of the product, different price.

The low cost of tracking and verification has a big beneficiary,
personalized advertising.

### Distinctions between Digital and Data Products

  - Digital Product
      - Unit of consumption often well defined, fixed (a movie)
      - Consumption of digital products, independent from one another
        (many movies)
      - An individual unit may not be valuable (Single movie not worth
        renting)
      - Often aggregated and consumed together (Netflix)
  - Data Products
      - Have strong properties of flexibility and aggregation (buy data,
        make aggregate)
      - Typically consumed by machines, rather than people
      - Unlike digital products, can be consumed, reused in part or
        other ways, not exclusively as the whole

The boundary is fuzzy; consider social media. In individual reading
(digital product), when aggregated by machines, it can be thought of as
data products.

### Economics of Data Pricing: Summary

  - Information goods are distinct from traditional physical goods, by a
    significant reduction in costs
  - Information goods see a significant reduction of search costs,
    production costs, replication costs, transportation costs, tracking
    and verification costs
  - Significant differences between digital products and data products:
    consumption units, aggregation, means of consumption, reuse and
    reselling
  - The boundary between digital and data products is fuzzy.

-----

## [Part 3: Fundamental Principles of Data Pricing](https://www.youtube.com/watch?v=JMQ4qmgfCrE&feature=emb_logo)

Replication costs very low, approaching zero on many information goods.
- Advantage: Economically Appealing - Disadvantage: Competitors may
quickly enter the market

### Versioning: a fundemental framework

  - Set price reflective of the value that a customer places on the
    information
  - Versioning Strategy: make different versions for different types of
    customers
  - ex: software, movies
  - Versioning divides customers into subgroups who regard the value of
    features with differing upside, permitting discriminate pricing
    between versions.

#### Producing Different Versions

Most versions of Information goods are produced by subtracting value
from the most technologically advanced version. Think instant stock
information via API, vs. time-delayed information by an HTML page that
requires scraping.

  - Information Delay
  - Access Convenience (format)
  - The comprehensiveness of information (summary vs. full)
  - Information manipulation (format for manipulation and use)
  - User Community (Can I share posts)
  - Annoyance (Go Ad-Free)
  - Customer Support

#### Free Versions

Some customers may not realize the value of information good unless they
try it. Free versions provide the opportunity for potential customers to
try it out to

  - Build awareness
  - Gain follow-on sales
  - Create customer network
  - Attracting attention
  - Gain competitive advantages (deter competition???)

### Concept: Truthfulnesss in Markets

A market is truthful if every buyer is selfish and only offers the price
that maximizes the buyer’s utility. I.e., I am only willing to pay a
specific amount for that item. No buyer should pay more than is
sufficient to purchase the product.

If consumer A gets 4 dollars of utility out of a product, that is what
they pay. If consumer B gets 10 dollars of utility from a product, that
is their price.

### Concept: Revenue Maximization

Rationale: For a business to be successful long term, a more immediate
requirement is to win over as many customers as possible. Often this can
be done instead of optimizing for cost, profit, or sales.

  - Traditional products, revenue is maximized when marginal revenue
    goes to zero
  - For information goods, with very low replication costs, the
    conditions may be quite different.

### Concept: Fairness in Markets

  - A market is fair if each seller gets the ‘fair share’ of the revenue
    in coalition
  - Shapley fairness: \(k\) sellers cooperatively participate in a
    transaction with payment \(v\)
      - Balance: the payment is fully distributed to all sellers
      - Symmetry: the same contribution to utility should be paid
      - Zero elements: No contribution, no payment
      - Additivity: If goods can be used for two tasks, \(T1\) and
        \(T2\) with payments \(v1\) and \(v2\). Then payment for should
        be additive for the utility of both tasks \(v1 + v2\)
  - **Shapley Value**: unique allocation of payment that satisfies all
    requirements in Shapley fairness

For information goods, the marginal production costs are close to zero;
a seller can produce more units of the same information to obtain a
larger Shapley value.

### Concept: Arbitrage-free Pricing

Arbitrage is the activity that takes advantage of the price between two
or more markets. Consider a scenario where a product could be purchased
on one online store (Amazon) and resold on another (eBay) at a higher
price. Another example, if a specific journal article costs $35 dollars,
but the publisher offers a subscription at $25 per month, then the user
could subscribe, get the article, and then unsubscribe.

Arbitrage is often undesirable.

### Concept: Privacy-preservation

  - Highly desirable to preserve privacy in marketplaces of information
    goods
  - Transactions have multiple parties to consider
      - buyers
      - providers of information goods
      - third parties
  - Lots of things were tried.

### Concept: Computational Efficienty

Supplemental Reference: [A Marketplace for Data: An Algorithmic
Solution](https://arxiv.org/pdf/1805.08125.pdf)

Computing prices efficiently with respect to a large number of goods and
a large number of buyers. - The complexity of computing prices as to be
polynomial with respect to the number of sellers
\(\theta(n^{sellers})\), and cannot grow concerning the number of
goods/buyers when prices are updated - Auction efficiency must be fast.

## Fundamental Principles of Data Pricing: Summary

  - Versioning is a common mechanism in designing and pricing
    information goods
  - Many essential requirements for pricing information goods, including
      - truthfulness
      - revenue maximization
      - fairness
      - arbitrage-free pricing
      - privacy preservation
      - computational efficiency

-----

## [Part 4: Pricing Digital Products](https://www.youtube.com/watch?v=cNMF392mm0M&feature=emb_logo)

### Streams of Revenue

Three primary potential streams of revenue for digital products - Money
- Inofrmation privary - Time and Attention

### Concept: Micropayments

### Pricing Model: Bundling

### Pricing Model: Auctions

-----

## Key Terms

  - **Digital Products**: Intangible goods that can be consumed through
    electronics. (e.g., ebooks, music, digital-ads, online coupons). May
    have a physical correspondence with the consumer, but not required.
  - **Data Products**: Datasets as products and information services
    derived from datasets.
  - **Information Goods**: Include digital and data products
  - **Platform businesses**: provide matching services to customers,
    improve efficiencies
  - **rival (rivalry)**: In economics, a good is said to be rivalrous or
    a rival if one consumer’s consumption prevents other consumers’
    simultaneous consumption.
  - **Desiderata**: something that is needed or wanted.
  - **Shapley Value**: unique allocation of payment that satisfies all
    requirements in Shapley fairness

## Resources

  - [A Survey on Data Pricing: from Economics to Data Science: Jian
    Pei](https://arxiv.org/pdf/2009.04462.pdf)
  - [Data Pricing – From Economics to Data Science: Full
    Tutorial](https://www.cs.sfu.ca/~jpei/DataPricingTutorial.html)
  - [Part 1:
    Introduction](https://www.youtube.com/watch?v=csvxTf7Nfxc&feature=emb_logo)
  - [Part 2: Economics Of Data
    Pricing](https://www.youtube.com/watch?v=7pyHDkKWa3k&feature=emb_logo)
  - [Part 3: Fundamental Principles of Data
    Pricing](https://www.youtube.com/watch?v=JMQ4qmgfCrE&feature=emb_logo)
  - [Part 4: Pricing Digital
    Products](https://www.youtube.com/watch?v=cNMF392mm0M&feature=emb_logo)
  - [Part 5A: Pricing Data
    Products](https://www.youtube.com/watch?v=plANqVZ_BV0&feature=emb_logo)
  - [Part 5B: Pricing Data
    Products](https://www.youtube.com/watch?time_continue=4&v=tul-i6j4Xy0&feature=emb_logo)
  - [Part 6: Future
    Directions](https://www.youtube.com/watch?time_continue=1&v=FPcO5-XvplU&feature=emb_logo)
