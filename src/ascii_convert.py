import sys
import os
print (os.path.join(os.getcwd(), 'jack.txt'))
file1 = open(os.path.join(os.getcwd(), 'src', 'jack.txt'), 'r')
Lines = file1.readlines()

total_string = "constant full_message_array : full_message := ("

for len, i in enumerate(Lines):
    #print(i.strip())
    print(f"constant starting_message{len} : message_type := \"{i.strip()}\";")
    total_string = total_string + f"starting_message{len},\n"


print(total_string)
