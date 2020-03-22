# Debugging with Pry

## Learning Goals

- Read and interpret tests
- Resolve errors with the aid of Pry

## Introduction

If you clone down this lab and run the tests, you'll notice something:
everything's broken. Like, broken bad. And guess what?  It's on you to fix it!

Keep in mind, this lab is about more than just finding and fixing the errors -
it's about understanding how to look for what those errors are. The instructions
in this lab are intentionally minimal. Use the test results to get started. Take
time to read and interpret the code in each file in the `fix_using_tests`
folder.

- What do the methods in each file do, or at least, what _should_ they be doing?
- What is stopping them from successfully doing these tasks?

Add `binding.pry` into the existing methods to jump into your code and confirm
your suspicions about what is going on. Remember to `require 'pry'` at top of
each file you want to pry into.

## Resources

- [An Intro to Ruby Debugging featuring Pry](https://medium.com/@TheDickWard/an-intro-to-ruby-debugging-featuring-pry-c931fde69069)
