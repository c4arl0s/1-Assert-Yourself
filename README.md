# [go back to Overview](c4arl0s)

# [1-Assert-Yourself - Content](https://github.com/c4arl0s/1-assert-yourself#go-back-to-overview)

1. [x] [1. What Are Unit Tests Anyway?](https://github.com/c4arl0s/1-assert-yourself#1-What-Are-Unit-Tests-Anyway)
2. [ ] [2. Create a Place to Play with Tests](https://github.com/c4arl0s/1-assert-yourself#2-Create-a-Place-to-Play-with-Tests)
3. [ ] [3. Write Your First Assertion](https://github.com/c4arl0s/1-assert-yourself#3-Write-Your-First-Assertion)
4. [ ] [4. Add a Descriptive Message](https://github.com/c4arl0s/1-assert-yourself#4-Add-a-Descriptive-Message)
5. [ ] [5. Avoid Conditionals in Tests](https://github.com/c4arl0s/1-assert-yourself#5-Avoid-Conditionals-in-Tests)
6. [ ] [6. Describe Objects upon Failure](https://github.com/c4arl0s/1-assert-yourself#6-Describe-Objects-upon-Failure)
7. [ ] [7. Test for Equality](https://github.com/c4arl0s/1-assert-yourself#7-Test-for-Equality)
8. [ ] [8. Test Equality with Optionals](https://github.com/c4arl0s/1-assert-yourself#8-Test-Equality-with-Optionals)
9. [ ] [9. Fudge Equality with Doubles and Floats](https://github.com/c4arl0s/1-assert-yourself#9-Fudge-Equality-with-Doubles-and-Floats)
10. [ ] [10. Avoid Redundant Messages](https://github.com/c4arl0s/1-assert-yourself#10-Avoid-Redundant-Messages)
11. [ ] [11. Choose the Right Assertion](https://github.com/c4arl0s/1-assert-yourself#11-Choose-the-Right-Assertion)
12. [ ] [12. Key Takeaways](https://github.com/c4arl0s/1-assert-yourself#12-Key-Takeaways)
13. [ ] [13. Activities](https://github.com/c4arl0s/1-assert-yourself#13-Activities)
14. [ ] [14. What’s Next?](https://github.com/c4arl0s/1-assert-yourself#14-Whats-Next)

# [1-Assert-Yourself](https://github.com/c4arl0s/1-assert-yourself#1-assert-yourself---content)

Every company wants to reduce their costs. In software, making changes is inexpensive: we wiggle our fingers on keyboards. So where do the costs lie?  Aside from development time, they lie in errors, and how much time it takes to detect these errors. (They also lie in building the wrong thing, which is beyond the scope of this book.)

To detect problems, mobile developers use all kinds of feedback loops. For example, we keep an eye on crash reports and customer complaints. But that’s the longest loop. After making an incorrect change, it takes a long time to get that feedback.

To try to prevent errors from making it all the way to customers, companies use manual testing. The best quality experts apply talent and creativity to do exploratory testing. Let’s not waste their time asking them to follow steps in mind-numbing repetition. Besides, the time between making an error and getting feedback from testers is still long.

What if we could do a large amount of testing using computers? In fact, what if the developer’s own computer could provide feedback? And what if this feedback were so quick, you could get it on every change you made? This kind of rapid feedback is a game changer. It not only catches problems quickly, it can change the way you code.

This is what unit tests are for. Maybe you haven’t done any unit testing in your iOS apps yet. Or maybe you’ve been able to test some logic, but your tests don’t cover the iOS-specific parts. (And those are important parts.) Wherever you are in your unit testing journey, the goal for this book is the same: to reduce your costs.

# 1. [What Are Unit Tests Anyway?](https://github.com/c4arl0s/1-assert-yourself#1-assert-yourself---content)

There’s some confusion about what makes a test a unit test. Many people try to focus on the “unit” part of the name, thinking it describes testing a unit of production code. I’ll continue to use the term because it’s widespread, but let’s forget about asking “What’s a unit?” Instead, here’s my definition: Unit tests are a subset of automated tests where the feedback is quick, con- sistent, and unambiguous.

* Quick: A single unit test should complete in milliseconds. We want thousands of such tests.
* Consistent: Given the same code, a unit test should report the same results.  The order of test execution shouldn’t matter. Global state shouldn’t matter.  
* Unambiguous: A failing unit test should clearly report the problem it detected.  In our first chapter, we’ll explore the fundamental tool of unit testing: asser- tions. You’ll learn the most common assertions in the Swift XCTest framework in a hands-on way.

If you’re a seasoned unit test writer, you may want to skip ahead to the Key Takeaways, on page 16. But even if you’ve written some tests, it can be good to go over the fundamentals. What are assertions for? What do they report?  Do you know how to choose the right assertion for the right job? This chapter will help you get familiar with these tools, which we’re going to be using all the time.

# 2. [Create a Place to Play with Tests](https://github.com/c4arl0s/1-assert-yourself#1-assert-yourself---content)
# 3. [Write Your First Assertion](https://github.com/c4arl0s/1-assert-yourself#1-assert-yourself---content)
# 4. [Add a Descriptive Message](https://github.com/c4arl0s/1-assert-yourself#1-assert-yourself---content)
# 5. [Avoid Conditionals in Tests](https://github.com/c4arl0s/1-assert-yourself#1-assert-yourself---content)
# 6. [Describe Objects upon Failure](https://github.com/c4arl0s/1-assert-yourself#1-assert-yourself---content)
# 7. [Test for Equality](https://github.com/c4arl0s/1-assert-yourself#1-assert-yourself---content)
# 8. [Test Equality with Optionals](https://github.com/c4arl0s/1-assert-yourself#1-assert-yourself---content)
# 9. [Fudge Equality with Doubles and Floats](https://github.com/c4arl0s/1-assert-yourself#1-assert-yourself---content)
# 10. [Avoid Redundant Messages](https://github.com/c4arl0s/1-assert-yourself#1-assert-yourself---content)
# 11. [Choose the Right Assertion](https://github.com/c4arl0s/1-assert-yourself#1-assert-yourself---content)
# 12. [Key Takeaways](https://github.com/c4arl0s/1-assert-yourself#1-assert-yourself---content)
# 13. [Activities](https://github.com/c4arl0s/1-assert-yourself#1-assert-yourself---content)
# 14. [What’s Next?](https://github.com/c4arl0s/1-assert-yourself#1-assert-yourself---content)
