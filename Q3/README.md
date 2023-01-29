# Part 3

1.)

1. 32 is the number of bytes that will be used in the input we are going to compare.
2. 1<<n is to create a 1000…..0 with total bits larger than the number that is used for comparision by 1. 
    
    If a - 10 <0 —> the msb of that 1<<n will be 0 —> hence output 1- 0 = 1. And Vice versa for when a-10 ≥10, the msb = 1—> output 1-1 = 0.
    
    Note that -1 <10 is FALSE because Circom arithmetic is operated in modulo p.
    
3. Done

2.)

1. Done
2. Our circuit is too big for power of tau ceremony.
<img width="688" alt="Screen Shot 2022-09-19 at 4 43 07 PM" src="https://user-images.githubusercontent.com/61564542/215309357-02273e9f-dcf2-4262-b044-a96445a5ffb6.png">
So can just change power of tau version to 17!
3.) Done
<img width="447" alt="Screen Shot 2023-01-29 at 1 09 32 AM" src="https://user-images.githubusercontent.com/61564542/215309366-8d37b0ac-f11e-4679-b908-9e3c14e4158f.png">
