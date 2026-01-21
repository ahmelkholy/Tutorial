Now, we can do a lot more with
files then just look at them,

move them, and delete them.

For instance, let's
take that dictionary

file you downloaded
earlier and use it

to see if a word is
in the dictionary.

There's a Shell
command called grep

that knows how to search
a text file for lines

with particular contents.

If you give it a
word, such as shell,

and a file name
like dictionary.txt,

it will read the file
and output all the lines

that contain that word.

But what if, as in this case,
there are more lines than we

can see at once.

Well, one thing we
can do is to ask

the Shell to send the output
of grep into the less command.

You can do this with the pipe
or the vertical bar character.

What's going on here?

Well, the grep program
reads the input file

and prints out any lines
that match the pattern.

But the Shell has
arranged things

so that the output doesn't
go directly to the terminal.

Instead it gets sent
into the less program,

which displays those lines
of the terminal one page

at a time.

To read this command
out loud, you'd

say grep for shell in
dictionary.txt and pipe

it to less.

Now, grep can also operate on
input from another program.

For instance, you can pull a
file from the web using cURL

and immediately grep it
for a particular pattern

without having to save
it to a file first.

The output from
this cURL command

gets fed into this grep
command as its input,

instead of grep
reading from a file.

As you can see, sometimes
some of the output from cURL,

like this progress meter,
gets mixed in with some

of the output from grep--

so that can be a
little confusing.

They're actually not
getting mixed to the Shell,

but they're getting
mixed on our terminal.

If we sent this to a
file, it would be fine.

It wouldn't get mixed in.

Now if you just wanted to know
how many matches there are,

like how many words there are
that contain the string fish,

there are a couple of
different ways you can do that.

One of them is to pipe
the output of grep

into the word count
program, or wc,

and ask it to count lines
with its dash little l option.

There we got the number 105.

Another way is to give grep the
option dash little c for count.

And there's the same 105.
