CONTEXT

WHAT USER STORY YOU ARE WORKING ON:

I am working on the user story "User wants to log in."

WHAT YOU ARE TRYING TO DO:

I am trying to have the user update their profile.

DETAILED DESCRIPTION OF THE BUG/ERROR:

I have been updating the profile and saving it and the result is that there is no error, but the changes aren't saved.

WHAT I'VE TRIED

There is no error message. I've used debug to print out the object and it's the right user object, just without the changes.

I did update in the rails console, but it worked fine, and the changes showed up on the view.

[picture of the view]

I logged the update, and found that the database wasn't saving my update, and then logged the result of .update, which was false.

QUESTION

Why is update returning false? Is that my problem?
