# U2.W4: Homework Cheater


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: title, book_title, publish_year, character, reason, pronoun
# Output:
	# =begin
	# In English class, we read the book BOOK, published on DATE.  My favorite 
	# character is PERSON.  PRONOUN_S is an important character in the book and 
	# I like PRONOUN_O.  Although there are many characters in the book, I related 
	# most strongly to LAST NAME because REASON.
	# =end

# Steps:
# DEFINE a method called fav_character that takes title, book_title, publish_year, character, reason, pronoun as Input
# 	SET pronoun_s to a hash containing the subject pronouns he/She
# 	SET pronoun_o to a hash continaing the object pronouns him/her
# 	SET subject_p to the pronoun element of pronoun_s
# 	SET subject_o to the pronoun element of pronoun_o
# 	SET l_character to the last word in character
# 	print the essay title
# 	print the output sentence with the relevant inputs inserted
# END define a method


# 3. Initial Solution
def fav_character(essay_title, book_title, publish_year, character, reason, pronoun)
	pronoun_s = {"male" => "he", "female" => "she"}
	pronoun_o = {"male" => "him", "female" => "her"}
	subject_p = pronoun_s[pronoun]
	object_p = pronoun_o[pronoun]
	l_character = character.split.last
	puts essay_title
	puts
	puts "In English class, we read the book \"#{book_title}\", written in #{publish_year.to_s}. \
My favorite character is #{character}.  #{subject_p.capitalize} is an important character in \
the book and I like #{object_p}.  Although there are many characters in the \
book, I relate most strongly to #{l_character} because #{reason}."
end

# 4. Refactored Solution
def fav_character(essay_title, book_title, publish_year, character, reason, pronoun)
	if pronoun == "male"
		subject_p = "he"
		object_p = "him"
	else
		subject_p = "she"
		object_p = "her"
	end
	l_character = character.split.last
	puts essay_title
	puts
	puts "In English class, we read the book \"#{book_title}\", written in #{publish_year.to_s}. \
My favorite character is #{character}.  #{subject_p.capitalize} is an important character in \
the book and I like #{object_p}.  Although there are many characters in the \
book, I relate most strongly to #{l_character} because #{reason}."
end

# 1. DRIVER TESTS GO BELOW THIS LINE

generic_template = "In English class, we read the book \"book_title\", written in \"year\". \
My favorite character is \"character\".  \"capitalized subject pronoun\" is an important character in \
the book and I like \"object pronoun\".  Although there are many characters in the \
book, I relate most strongly to \"last name of character\" because \"reason\"."

first_story = puts "Cedric Diggory Rocks \n\n In English class, we read the book \"Harry Potter and the Goblet of Fire\", \
written in 2000. My favorite character is Cedric Diggory.  He is an important \
character in the book and I like him.  Although there are many characters in the \
book, I relate most strongly to Diggory because I've always been super awesome at \
things but in the end lose out because of Voldemort.\n"

second_story = puts "You don't know anything about me\n\nIn English class, we read the \
book \"The Great Gatsby\", written in 1925. My favorite character is Jay Gatsby.  \
He is an important character in the book and I like him.  Although there are many \
characters in the book, I relate most strongly to Gatsby because I have so many secrets \
that make me powerful and popular."

third_story = puts "What a tragedy\n\n In English class, we read the book \"Romeo and 
Juliet\", written in 1597. My favorite character is Juliet.  She is an important character\
 in the book and I like her.  Although there are many characters in the book, I relate \
 most strongly to Juliet because I am so ready to die for love."

puts first_story == fav_character("Cedric Diggory Rocks", "Harry Potter and the Goblet of Fire", 
	2000, "Cedric Diggory", 
	"I've always been super awesome at things but in the end lose out because of Voldemort", 
	"male")

puts second_story == fav_character("You don't know anything about me", "The Great Gatsby", 
	1925, "Jay Gatsby", "I have so many secrets that make me powerful and popular", "male")


puts third_story == fav_character("What a tragedy", "Romeo and Juliet", 1597, "Juliet", 
	"I am so ready to die for love", "female")


# 5. Reflection 
=begin

I spent some time trying to come up with a user story that seemed reasonable.  That 
was probably the most tedious part of the assignment.  Writing the code was more
enjoyable.  I didn't really have any "aha" moments on this assignment.  The broad
goals of the assignment were pretty clear.

While I'm pretty confident that my solution generally accomplishes the goals of the 
assignment, I'm not entirely sure my solution is in the precise format the challenge 
is asking for. I didn't use any loops, which was one of the learning objectives.  While I 
am pretty confident in the learning objectives, the fact that this particular challenge
doesn't use some of them makes me think I may not have done the assignment quite right.

One aspect of my solution that doesn't seem great is how I defined the pronouns.  That
was the only change I made to my refactored code, and I'm not really sure if it's better.
Moreover, both options seem a bit bulky. Also, the assignment indicated that using an 
object would be a good way to do this, but I couldn't think of a way to improve the 
definitions by using an object (which would involve defining a class, right?  I really 
struggled to figure out what the assignment was suggesting here).  Moreover, I 
was confused because in the example "essay_writer" method, male was not a string.
As far as I understand, this must mean that male is a variable defined outside the method.
That didn't seem like a great way to execute the assignment, but again I may be missing
something here.

I'm also not thrilled with my driver code.  The assignment says to output the finished template
onto the screen, which means I'm going to need to use print/puts instead of return.
With that constraint, I can't figure out a way to write the driver code so it only 
outputs true/false instead of the whole story.  It's not a huge deal, but it does make
the tests rather bulky.  You have to look carefully to be sure they all passed. 
=end



