The shell is actually a little programming language.

Just like JavaScript or Python, it has variables.

They look a little different though.

In the shell, whenever you create or modify a variable,

you just give it a name and an equal sign,

followed by the value that you want it to have.

Note that you can't put any spaces around the equal sign.

Then when you want to refer to the variable,

you put a dollar sign in front of its name.

But they're actually two different kinds of variables in the shell.

One of them is called a shell variable.

The lines and columns variables that you saw earlier are these kind.

These are just internal to the shell program itself.

The other kind is called an environment variable.

Environment variables are shared with programs that you run from within the shell.

One environment variable that's really important is the path variable.

That tells your system where your program files are.

So when you type a command,

such as LS, it can find the program to run it.

For instance, on my system the LS program is in slash bin slash LS.

So it's in the slash bin directory,

and the slash bin directory is here in my path variable.

The directories in the path variable are separated by

colons and the shell searches them starting with the first one,

and then proceeding to the right until it finds the command that you entered.

That's how the shell is able to find the LS command when I want to run.

You'll sometimes see instructions telling you to add a directory to your path,

so that programs in it can be found.

To add the new directory to the end of your path,

you do it like this: path equals dollar sign path colon,

and then the new directory.

But if you do it like this right at the shell prompt,

that change will only last until you close the shell.

We'll take a look at where you do it if you want to keep that changed next.

But first a couple of quizzes.
