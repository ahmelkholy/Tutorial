So, we have five options in this quiz.

The first one, is asking to move

the documents/books directory into the documents directory.

But, that's where it already is,

so that won't do anything.

The second one will do just fine.

It'll move each file from documents/books into documents, so that one's good.

The third one has a CD into documents and then move

all the epub files from the books' subdirectory into the current directory,

which is to say the documents directory,

so that one works too.

The fourth one has a CD into documents/books and then

move all of the files in that directory into the parent directory which is documents.

So, that'll be fine too.

And as for this last one, well,

you see how the star is inside the single quotes?

That's asking the shell to look for a file whose name is literally documents/books/star.

And there isn't one of those,

so that won't work.

Remember that the single quotes indicate that

a special character should be treated as non-special and in this case,

we want star to be treated specially.

So, any of these three will work fine.

Do be aware though, that they will leave your shell in a different working directory.
