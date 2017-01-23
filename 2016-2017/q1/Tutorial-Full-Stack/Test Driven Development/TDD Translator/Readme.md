# Create a translator using TDD

The goal of this exercise is to create a Translator object that can translate
a sentence from one language into a sentence in a second language.

The translator object is initialized with a bank of words in a parameter called
`dictionary`. The dictionary might look like this for an English to Spanish
translator:

```
{ "hello" => "hola", "and" => "y", "goodbye" => "adiós" }
```

Note that we aren't trying to build a complete dictionary, and don't worry about
sentence punctuation or capitalization for the sake of this exercise.

## Getting started
* Clone this template:
  `git clone https://github.com/tifftalk/pair-programming-in-ruby-template`
* `cd pair-programming-in-ruby-template`
* Switch to this branch: `git checkout template/translator`
* run `bundle install`
* Start a Guard session by running `bundle exec guard`
* You should see that you have a single test and it is passing.
* Open `test/test_translator.rb` and uncomment the `test_forward_translate`
method.
* Save your file and notice that Guard's output is now red, indicating that
there is at least one failing test. Read the output to trace back the line with
the failing assertion.
* Your challenge: fix the `translate_forward` method in `lib/translator.rb` so
it actually performs a translation and returns a new sentence. This should work
by looking up each word from the sentence in the dictionary argument. Hint: You
might want to use the String `split` method and the Array `join` method.
* Bonus: Can you allow the translation to work in the reverse direction with
the same initialization dictionary? Start by creating a failing test, and then
build out the method.
* REMEMBER: Red, Green, Refactor!
* When you're finished, you can kill a Guard session by pressing `Ctrl + D`
