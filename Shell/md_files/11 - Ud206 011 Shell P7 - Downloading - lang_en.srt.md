So far, you've done a bunch of things with files and directories.

But where do files come from in the first place?

Well, they come from the web.

There's a shell command to download a file from the web.

That command is curl,

that stands for C URL,

as in see a web page.

Whoever named that, ha ha, yes, very funny.

You can use curl to get any web page,

but what it does is to show you the source code to

the page which is kind of cool but not always directly useful.

We try to get http://google.com,

it's actually showing us some HTML that really wants us to go someplace else.

You need to add a little option to curl,

curl dash big L means follow

redirects and then we'll see the source code to the actual google.com homepage.

Ha! there we go, this is

the compressed JavaScript source code to the google.com homepage.

It's got things in there like,

I'm Feeling Lucky and Google search.

This is a lot like what you'd see if you opened up

the View Source in the browser dev tools.

So, that's kind of handy for checking out web sites,

but curl is very useful for downloading files or pages by URL.

To get it to write to a file instead of displaying to the terminal,

we use the dash little o option.

We say, curl dash little o followed by

the file name that we'd like it to save under, like google.html.

This is actually a really common pattern for shell commands.

Start with the name of the command followed by

some options like dash little o google.html

and dash capital L and then followed

by the object that we actually want to operate on, like the URL.

We run this, curl will show a little progress message while it's downloading.

When it's finished, we just get our shell prompt back.

It's pretty common for Unix programs to not

display any logs or done message if they run successfully.

But it did run successfully.

And there's the file that it created, google.html.
