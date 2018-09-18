---
output:
  pdf_document: default
  html_document: default
---
# Module 2: Fundamentals of Probability, Random Variables, Joint Distributions + Collecting Data
***


**Module Sections:**

* Fundamentals of Probability
* Random Variables, Distributions, and Joint Distributions
* Gathering and Collecting Data
* Module 2: Homework


Module Content:

* [Module 2 Slides](./files/M1/Lecture_Slides_02.pdf)



## Fundamentals of Probability

### Set Theory

* A _sample space_ is collection of all possible outcomes
* An _event_ is any collection of outcomes - could be one, all or none
* If the outcome is a member of an event, the event is said to have _occured_
* Event B is said to be _contained_ by A, if all outcomes in B also are in A

* This is the basis of set theory and used widely in probability, although there are some differences between set and probability theory
* If there is no symbol, then this usually means intersection AB in probability - in set theory we would write an inverted U e.g. A $A \cap B$
* A and B are mutually exclusive (disjoint in set theory) if they have no outcomes in common
* A and B are  exhaustive (complimentary in set theory) if their union is S (the entire sample space)
* A and B are both mutually exclusive and exhaustive, their union is equal to the sample space but they have no events in common - they are a partition of the sample space

### Defining Probability

We assign every event a number P(A) which is the prob. the event will occur

1 We require that the probability is greater than one for all events in the sample space - P(A) >= 0 for all A c S
2 The entire sample space must be equal to one - P(S) = 1
3 For any sequence of disjoint sets, the prob. of the union of that sequence is equal to the sum of the probabilities of those events - A~1~, A~2~, ... , is P(V~i~) = $\sum_{i} P(A_i)$

So we have a sample space, and if it satisfies these three properties, then we call it a probability.  Sometimes this is referred to as a probability function or a probability distribution, but there is no standard terminology for all probability theory.  Set theory helps to prove aspects of probability mathematically, for the purposes on this course, we just need to know what some useful facts are.

* P(A^c^) = 1 - P(A) = 

The probability of A compliment, which is the event that contains all of the outcomes that are not in the event A, the probability of A compliment is just equal to 1 minus the probability of A.  This is useful if the probability of A comliment (P(A^c^)) is difficult to compute, where as the probability of A might be very easy to compute.

* $P (\emptyset)$ = 

The probability of the empty set is zero.

* If A ~c~ B then P(A) <= P(B) = 

If A is contained in B then the probability of A is less than or equal to the probability of B

* For all A, 0 <= P(A) <= 1 = 

For any events, the probability of that event is between 0 and 1.

* P(AUB) = P(A) + P(B) - P(AB) = 

Probability of A union B is just equal to the sum of the probabilities of those two events minus the probability of the their intersection.

* P(AB^c^) = P (A) - P(AB) = 

The probability of A times B complement is equal to the probability of A minus the probability of the intersection.



