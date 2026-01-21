One more cool little trick
for customizing the shell--

this one is called aliases.

It's a way of making long shell
commands shorter, because what

you really needed in the
shell was for the commands

to be even shorter, right?

So the way aliases
work is that you

use the alias command to give
a short name, such as "ll,"

to a longer command,
such as "ls -la."

It's just like this--

alias ll, equal sign, single
quote, ls space hyphen la,

single quote.

Now just as when you're
assigning variables,

the alias command doesn't
want to see a bunch of spaces

on either side of
the equal sign.

That will just give you
a bunch of weird errors.

Don't do that.

After you create an
alias, any time you

type the short command,
like ll, the shell

will just run the
long command, ls -la.

If you want to list all of
the aliases that you have,

just run the alias
command with no arguments.

Now one of the cool
things about aliases

is that you can use them the
same as regular commands.

You can do ls on a
directory, and you can

do ll on a directory as well.

Any options you
put after the alias

when you use it will just go
on the end of the command.

So ll/user/bin gets turned
into ls -la/user/bin.

Now this ll command will only
last as long as this terminal

window is open.

If you want your aliases to
be there every time you start

your shell, well, you put
them in your .bash_profile.

Here are some examples
of popular aliases

that I found looking around
at what other people use.

This last one, I think,
is pretty clever,

because sometimes people
typo "sl" instead of "ls,"

and this one just automatically
corrects it for them.
