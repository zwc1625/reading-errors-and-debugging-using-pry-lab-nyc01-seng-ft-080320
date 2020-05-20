# Debugging with Pry

## Learning Goals

- Read and interpret tests
- Resolve errors with the aid of Pry

## Introduction

If you open this lab and run the tests, you'll notice something: _everything is
broken_. Like, broken bad. And guess what?  It's on you to fix it!

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

## Hint: Use Multiple `binding.pry` Lines

Once you've required `pry`, you can place as many `binding.pry` lines as you'd
like. Use this to your advantage. For example, in the first file you need to
fix, `fix_using_tests/false_equivalency`, the `selection` method has a
conditional statement:

```rb
def selection(num)
  if num = 1
     "YUM YUM MUNCH MUNCH MUNCH"
  elsif num = 2
     "HAM HAM HAM IN MY TUMMY"
  end
end
```

Test your own assumptions about this code by placing two `binding.pry` lines,
one for each potential condition:

```rb
def selection(num)
  if num = 1
    binding.pry
     "YUM YUM MUNCH MUNCH MUNCH"
  elsif num = 2
    binding.pry
     "HAM HAM HAM IN MY TUMMY"
  end
end
```

There are two tests that run for this file. The first passes in `1` as the value
for this method. The second passes `2`. Your initial assumption may be that we
should hit the first `binding.pry` on the first test. Run `learn`, and you
should see that this is correct. Type `exit` while in Pry to continue on to the
second test. You might assume that you'll hit the _second_ `binding.pry` now,
but you don't! Why is that? Read the provided code carefully.

## My `binding.pry` Isn't Stopping the Code

Sometimes, you may run into a situation where you've added `binding.pry` to the
end of a method, but when running `learn`, it does not pause. There are two 
potential causes of this:

1. This issue _can_ sometimes happen if `binding.pry` is the _last_ line of code
   in a method like the example below.

    ```rb
    def selection(num)
      if num = 1
        "YUM YUM MUNCH MUNCH MUNCH"
      elsif num = 2
        "HAM HAM HAM IN MY TUMMY"
      end
      binding.pry
    end
    ```

   If you've run into this situation, the easiest way to get around this is to
   add a line of code _after_ `binding.pry` so that it isn't the last line of
   code that is interpretted.

    ```rb
    def selection(num)
      if num = 1
        "YUM YUM MUNCH MUNCH MUNCH"
      elsif num = 2
        "HAM HAM HAM IN MY TUMMY"
      end
      binding.pry
      puts 'hello'
    end
    ```

   Just make sure to _remove_ this extra code along with `binding.pry` when running the tests again. Otherwise, your will cause the method to return something unexpected.  In the example above, `puts 'hello'` _returns_ `nil`, which will, in turn, cause the `selection` method to return `nil` when called.

2. If you've tried the above solution and Pry still does not seem to work, it
   may be that the method you've placed `binding.pry` in is **_never actually called_**. For instance, if you have the following:

    ```rb
    def runner
      prompt_user
      selection(get_user_input)
      binding.pry
    end
    ```

  When you run `learn`, Pry will never work. Why? Because the `runner` method is
  **not actually called in the tests!** The test file `spec/false_equivalency_spec.rb` has the following in it:

  ```rb
  describe "false_equivalency" do
    it "`selection` returns the correct string based on user input" do
      expect(selection(1)).to eq("YUM YUM MUNCH MUNCH MUNCH")
      expect(selection(2)).to eq("HAM HAM HAM IN MY TUMMY")
    end
  end
  ```

  If you recall from the lesson [How Tests Work][], each `expect` line is a
  separate test. These tests are _only_ running the `selection` method! All the
  other methods in `fix_using_tests/false_equivalency.rb` are ignored in this
  test.

[How Tests Work]: https://github.com/learn-co-curriculum/reading-errors-and-debugging-how-tests-work

## Resources

- [An Intro to Ruby Debugging featuring Pry](https://medium.com/@TheDickWard/an-intro-to-ruby-debugging-featuring-pry-c931fde69069)
