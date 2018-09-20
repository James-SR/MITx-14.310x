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
* If there is no symbol, then this usually means intersection AB in probability - in set theory we would write an inverted U e.g. $A \cap B$
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


### An example

Suppose you have a finite sample space. Let the function n(.) give the number of elements in a set. 

Then define P(A) = n(A)/n(S). This is called a simple sample space, and it is a probability - we count the number of outcomes and divide by the number of possible outcomes in the sample space.

We can check that it satisfies the three axioms to ensure it is a probability:

1. P(A) will always be non-negative because it’s a count
2. P(S) will equal 1, by definition
3. P(AUB) = n(AUB)/n(S) = n(A)/n(S) + n(B)/n(S) = P(A) +P(B).

If you can put your experiment in to this sample space where each outcome is equally likely, we just need to count to calculate probabilities of events.  So for example, if you want to know how likely it is you will roll a specific number, say 6, on two dice, we calculate all the different ways that six occurs then divide this by all possible outcomes (sample space) - = 5 / 36 = or 13.9%  

### Another example

If the state of Massachusetts issues 6-character license plates, using one of 26 letters and 10 digits randomly for each character, what is the probability that I will receive an all digit license plate?

n(S) = 36 (26 + 10) possibilities for each of 6 characters = 36^6^ = 2.176b
n(A) = 10 possibilities (for digits only) for each of 6 characters = 10^6^ = 1m
so P(A) = .0005

This is _sampling with replacement_

*What if Massachusetts does not reuse a letter or digit?*

Now, in the sample space, there are 36 possibilities (26 + 10) for the 1st character, 35 left for the 2nd, and so on. 

n(S) = 36x35x34x33x32x31 = 36!/30! = 1.402b

Similarly, in the event, there are 10 possibilities for the 1st character, 9 left for the 2nd, and so on. 

n(A) = 10x9x8x7x6x5 = 10!/4! = 151k

so P(A) = 1.402b / 151k = .0001

This is _sampling without replacement_

### Ordered and Unordered Arrangements

In the examples so far, we have used a series of counting rules - combinatorics i.e. combinations of objects belonging to a finite set in accordance with certain constraints.

1. If an experiment has two parts, first one having m possibilities and, regardless of the outcome in the first part, the second one having n possibilities, then the experiment has m * n possible outcomes - this is what we do intuitively

2. Any ordered arrangement of objects is called a *permutation*. The number of different permutations of N objects is N! The number of different permutations of n objects taken from N objects is N!/(N-n)! This is the case in the license plate example previously given

3. Any unordered arrangement of objects is called a *combination*. The number of different combinations of n objects taken from N objects is N!/{(N-n)!n!}. We typically denote this $\binom{N}{n}$ - N (big objects) choose n (combinations). This is where the order of objects doesn't matter i.e. different orderings don't matter - we take out the ordering

So if we had 9 people who each wanted to shake hands, if order doesn't matter then it is a combination and we take 9 and choose 2 so it becomes:

9! / {(9-2)! * 2!} = 9! / {7! * 2!} = 362,880 / {5,040 * 2} = 362,880 / 10,080 = 36 combinations 

Note, if order did matter and we used the permutations formula the total would be twice as many

### Office Arrangements and Pizza Toppings

Q: If there are six vegetarian pizza toppings and five non-veg, if I randomly choose two from a hat containing all items, what is the probability that I end up with a pizza that has one veg and one non-veg topping?

A: 

First we need to count the number of possabilities in the sample space e.g.
{(V1, V2), (V1, V3), (V1, V4), (V1, N1) ...} n(S) = $\binom{11}{2}$ = 55 - All outcomes are equally likely

Now we need to define our outcome n(A) = there are 
A = {(V1, N1), (V1, N2), (V2, N1) ... } n(A) = 6 * 5 = 30

So the probability is N(A) / n(S) = 30 / 55 = 0.55

In general, I could have chose n toppings and asked what is the probability that my pizza had n1 vegetarian toppings and n2 non-vegetarian toppings. There would, then, be $\binom{6}{n_1}$ possibilities for the veg toppings and $\binom{5}{n_2}$for the non-veg toppings. In other words,

$$P(n_1 veg, n_2 non-veg)=  \binom{6}{n_1} \binom{5}{n_2} \\ \binom{11}{n}$$
This is the basis of the hypergeometric distribution.




