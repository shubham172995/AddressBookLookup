This is the address lookup functionality as was requested in the Assignment.

I had two approaches in my mind. I will walk through both of them.

First one is the one I implemented here. The code for the same is in AddressLookup.py. So, in this, I used a hashmap. Now, since the name entered can be first name only, last name only, or full name. So, what I did was that I creeated a list of dictionary. The details for each person are appended in the list against the first name, last name, and full name to serve all the cases. So, first, I create the dictionary after reading the CSV file into a dataframe, then, we take input from the user for the address lookup and send this dictionary and string to the function to search. So, since it is a hash function, it will retrieve the information in O(1) time when calculating amortized time. So, depending upon the inputs and the number of entries with same string, it will take time.

This approach has one limitation. It will just look for complete and correct names (first name, last name, or full name). So, one alternative is to create a map corresponding to every character of the name and keep appending details with those characters in the name. For example, map['a'] will have all entries with names starting with character 'a', and so on. But, this will require very large memory, although could add versatility.

Another approach to overcome this that I could think of was using pattern matching. We could use KMP algorithm to match patterns or regular expressions to match the patterns in the strings and display the results accordingly.



The dockerfile is named Dockerfile. The following command may be executed to build an image from it:-
docker build -t python-barcode .

Now, to run the image:-
docker run python-barcode


Now, I have used Pandas library in my Python code. So, the makefile will create a virtual environment first and then, pip install pandas followed by code execution.
I have included one more Makefile which can be run if you have already installed Pandas on your system.
So, "makefile" is the one which creates virtual environment and installs the dependencies while "Makefile" is the one which directly runs the script considering Pandas is already on your system.