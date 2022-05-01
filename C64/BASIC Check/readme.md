C64-C128-Basic-Checker

How to launch a C64 program from a C128 in 128 mode:

Location 65533 will return a unique value depending on the mode / machine which is running.

252 will be returned if in 64 mode 255 will be returned if in 128 mode

Using the ABS function allows us to make the variable M equal to either 0 or 1, based on 
whether the statements enclosed in parenthesis after the ABS are true or not.

Thus, if location 65533 holds a value of 255, M becomes 1. If some other value is found, M becomes 0.
