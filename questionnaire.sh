#!/bin/bash

# A simple questionnaire script based on 1-Assert-Yourself

score=0
total=0

# Helper function to ask a question with shuffled options
ask_question() {
    local question="$1"
    local correct="$2"
    shift 2
    local wrongs=("$@")
    
    local options=("$correct" "${wrongs[@]}")
    local num_options=${#options[@]}
    
    # Fisher-Yates shuffle implementation
    for (( i = num_options - 1; i > 0; i-- )); do
        local j=$(( RANDOM % (i + 1) ))
        local tmp="${options[i]}"
        options[i]="${options[j]}"
        options[j]="$tmp"
    done
    
    echo -e "\n=================================================="
    echo -e "$question\n"
    
    local labels=(a b c d e)
    local correct_label=""
    
    for i in "${!options[@]}"; do
        echo "${labels[$i]}) ${options[$i]}"
        if [[ "${options[$i]}" == "$correct" ]]; then
            correct_label="${labels[$i]}"
        fi
    done
    
    echo ""
    read -p "Your answer [a,b,c,d]: " user_answer
    
    # Convert to lowercase to accept both lower and uppercase inputs
    local lower_ans=$(echo "$user_answer" | tr '[:upper:]' '[:lower:]')
    
    if [[ "$lower_ans" == "$correct_label" ]]; then
        echo -e "\033[32mCorrect!\033[0m"
        ((score++))
    else
        echo -e "\033[31mIncorrect.\033[0m The correct answer was $correct_label) $correct"
    fi
    ((total++))
}

echo "Welcome to the 1-Assert-Yourself Questionnaire!"
echo "Answer the following questions to test your knowledge."

ask_question "What is the definition of a Unit Test according to the book?" \
"A subset of automated tests where the feedback is quick, consistent, and unambiguous." \
"A test that covers a single class or function." \
"An automated test that checks the UI layout." \
"A test that requires a network connection to validate data."

ask_question "What does it mean for a test to be 'Consistent'?" \
"Given the same code, a unit test should report the same results, regardless of order or global state." \
"The test should consistently fail if there is a warning in the code." \
"The test should complete in the same amount of milliseconds every time." \
"A failing unit test should clearly report the problem it detected."

ask_question "Which of the following is NOT a trait of a test case function in XCTest?" \
"It takes a parameter for the expected outcome." \
"Its name starts with 'test'." \
"It isn't declared private." \
"It has no return value."

ask_question "What is the keyboard shortcut to run tests in Xcode?" \
"Command-U" \
"Command-T" \
"Command-R" \
"Command-B"

ask_question "Why should you avoid conditional branches (like if/else) in test code?" \
"To keep test code simple; choose an assertion that expresses the condition instead." \
"Because conditionals make the test execution too slow." \
"Conditionals are not supported inside XCTestCase subclasses." \
"XCTest automatically fails if it detects an if statement."

ask_question "How can you customize the failure description of an object in assertions like XCTAssertNil()?" \
"By conforming the object's type to the CustomStringConvertible protocol." \
"By adding an inline comment next to the assertion." \
"By passing a format specifier to the assertion." \
"XCTest does not support customizing object descriptions."

ask_question "Does the order of arguments (actual vs expected) matter in XCTAssertEqual()?" \
"No, but you should be consistent across your project for readability." \
"Yes, the expected value must always be the first argument." \
"Yes, the actual value must always be the first argument." \
"No, XCTest randomly switches them anyway."

ask_question "When using XCTAssertEqual() to compare a non-optional string with an optional string, what happens?" \
"Swift promotes the non-optional value to an optional, allowing the comparison." \
"The test fails to compile because types must match exactly." \
"The test crashes at runtime due to forced unwrapping." \
"XCTest ignores the assertion and warns about optionality."

ask_question "How should you compare floating-point numbers (Double or Float) for equality?" \
"Use XCTAssertEqual() with the 'accuracy:' argument." \
"Compare them directly with the == operator." \
"Convert them to strings and compare the strings." \
"Round them to integers before comparing."

ask_question "According to xUnit Test Patterns, what are the two goals of test assertions?" \
"Fail the test when the expected outcome doesn't occur, and document how the system should behave." \
"Verify code coverage, and improve application performance." \
"Print debug logs to the console, and prevent code from compiling with errors." \
"Satisfy the compiler, and trigger continuous integration pipelines."

echo -e "\n=================================================="
echo "Quiz Complete!"
echo "You scored $score out of $total."

if (( score == total )); then
    echo -e "\033[32mPerfect score! Excellent job.\033[0m"
elif (( score >= total / 2 )); then
    echo -e "\033[33mGood job! But there's still room for improvement.\033[0m"
else
    echo -e "\033[31mKeep studying! Review the README.md and try again.\033[0m"
fi
