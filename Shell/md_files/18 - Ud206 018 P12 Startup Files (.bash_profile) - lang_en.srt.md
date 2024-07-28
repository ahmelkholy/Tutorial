The Shell isn't
just a user interface,

it's also a
programming language.

Files containing Shell commands
are called Shell scripts.

These can be as simple
as one or two commands,

just like you'd write
at the Shell prompt.

Or they can be long
and complex programs

made of many functions.

But we're not going to look
very much into Shell programming

in this course.

However, there's
one place that's

very useful to pretty much
everyone who uses the Shell,

and that's in customizing
the Shell itself.

Here's an example, it's
really common for Shell users

to install programs into
a subdirectory of the home

directory called Bin,
which stands for binary.

But the Shell doesn't
come preconfigured to know

that there are any
commands there.

If you have a program
installed in bin/magic

and you want to run
it from the Shell,

you'd have to type the directory
out as well as the command

name.

Now, you can get around that
by adding that directory

to your path variable.

But that gets reset every
time you start a new Shell.

In order to make
that change sticky,

you have to put it into the
Shells configuration file.

Now for historical
reasons, there

are a few different
files that the Bash

Shell can run on startup
to get its configuration.

On a Mac or on a Windows
system with Git Bash,

the Shell in every terminal
you open will run the commands

in a file called .bash_profile.

But on a Linux system,
.bash_profile is only run

for some Shell sessions,
specifically log-in Shell

sessions.

Non-log-in Shells run a
file called .bashrc instead.

Now, this inconsistency
can be a problem

if you want to use the
same Shell configuration

on different operating systems.

One popular way to get around
this is to put a statement

into your .bash_profile that
says if there is a file called

.bashrc, run that file.

But if you're only
on Mac or Windows,

you can just use the
.bash_profile without worrying

about that.

Any command you put in
this configuration file

will be run every time
you start the Shell.

That includes
variable assignments,

like changing dollar sign path.

It can also include
anything you'd

like to see at the start
of your Shell session.

Maybe you want to see the
date and a friendly message.

No problem, just put
the date command there.

And maybe something
like echo, hey there.

Then when you start a new Shell,
the commands you put there get

run.
