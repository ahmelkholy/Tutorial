
most people who have used Linux have seen the root directory but not
everybody understands what the directories are used for - a Windows
user opening the file manager looks very much like opening the home folder in
Windows and all looks very familiar you've got your documents your downloads
your pictures your videos same thing that is until they explore up the tree
looking for the C Drive
where's Program Files where's the directory that Linux is installed in -
how do you find anything let me explain I'll take a quick minute here for new
Linux users coming from Windows Windows and Linux evolved in very different ways
once upon a time there was a thing called ms-dos the disk operating system
it was command-line only but you could still run programs games and WordPerfect
but you didn't need Windows Windows was added to PCs and you can install it on
top of DOS you would start up your computer and type in win to start
Windows it used letters to assign drives with a and B being removable disks since
early pcs only had floppy drives with the addition of hard drives the letter C
became the letter for your internal disk additional discs were given the next
available letter you could install things in Doss wherever you wanted to
windows installed itself in his own directory called funny enough Windows
later Microsoft changed how it booted by evolving their kernel to be less and
less dependent on DOS and eventually allowed Windows to boot directly without
dos at all Microsoft's file directory structure kind of stayed the same
now Linux is different and so is its file structure it also doesn't install
applications like Windows does starting with Windows 95 Microsoft created the
Program Files directory which was the default installation directory for most
applications for the most part Linux follows UNIX traditions which is why
uses the forward slash instead of the back slash like Windows Linux also cares
about capitalization so you can have things like this file file file file
file file as you can see while they're all named file they all use different
capitalization so Linux will allow this because they're technically not named
exactly the same Mac users who have explored their hard drives might find
Linux a little more familiar this is because Mac's also evolved from a UNIX
ancestor more specifically BSD so let's have a look at the route and go over how
all this work this layout for the most part is
outlined in the filesystem hierarchy standard or FHS which defines the
structure and layout and is maintained by the Linux Foundation
I want a note here that not all distributions follow this some do their
own special thing also several ways of structuring the folders has changed over
the years but most of what follows still applies in most cases so let's go
end-to-end starting with bin in being short for binaries these are the most
bin
basic binaries which is another word for programs or applications things like LS
to list your directory cat to display the output of a file and other basic
functions are stored here skipping ahead a little bit I also want to point out s
sbin
bin these are system binaries that a system administrator would use and that
a standard user wouldn't have access to without permission
both of these folders contain the files that need to be accessible when running
in single user mode as opposed to the usual multi-user mode single user mode
is a special mode that boots you in as a root user to allow you to do system
repairs and upgrades or testing networking is usually disabled in this
mode because of security issues when you install a program in Linux it's
typically not placed in these folders next is boot this is a folder you don't
boot
want to play around in it contains everything your OS needs to boot in
other words your boot loaders live here next we have cd-rom which I'm going to
cdrom
skip because it's not in all distros and it's more of a legacy mounting point for
your cd-rom so let's move on to dev this is where your devices live Linux again
dev
following UNIX has a standard where it was decided everything is a file
here you'll find your hardware a disk for example would be dev slash SDA here
and a partition on that disk would be for example dev SD a1 SD a2 and so on
you can also find everything else here from your webcam to your keyboard this
is typically an area that applications and drivers will access and is rarely
something a user should be dabbling in so going back to root the next folder is
etc
etc' the name of this folder has been argued as standing for etc edit to
configurations are stored however when I'm talking about
configurations I'm talking about for things that are system-wide such as apt
in this folder for example you would find the list of all your sources what
repos your system connects to as well as its various settings so if you're
looking for something that is a system-wide application and not a per
user setting for example Libre Office would have settings in each user's
folder and it wouldn't be system-wide because each user can have different
settings and this brings me to the next folder which is home however I'm going
to save this for the end because there's some things I want to discuss about it
so we'll come back to it later next are the Lib folders this includes
lib, /lib32, /lib64
Lib Lib 32 and lips' 64 these are where the libraries are stored libraries are
files that applications can use to perform various functions they're
required by the binaries in bin and s bin for example moving on we have media
and MNT or mount these directories are where you would find your other mounted
mnt, /media
drives it can be a floppy disk USB stick external hard drive network drive or
even a second hard drive so if you're looking for that a B or D Drive this is
where you want to be looking now this media folder wasn't always around it was
typically just MNT and that's where you mounted your storage devices nowadays
most distros automatically mount devices for you in the media directory so your
USB stick that you inserted would be in media user name device name so why are
there two directories well if you're mounting things manually use the MNT
directory and leave the media directory to the OS to manage most distros and
file managers such as Nautilus for example what I'm using here and dolphin
and PC man FM will have something on the side here for example in Nautilus I can
click other locations and here I can access my other devices if I had a USB
stick plugged in right now it would show up here and I could simply click on it
and access it next down the line is opt this is the optional folder which is
opt
usually where manually installed software from vendors resides
though some software packages found in the repo can also find their way here
VirtualBox guest additions is one example so here for example is a VPN
software that I installed and the drivers for my brother printer slash
scanner this is also where you can install software you've created yourself
this folder is where I place all the applications I've written first I on
Linux next we have prop rock is where you'll find pseudo files that contain
proc
information about system processes and resources for example every process will
have a directory here which contains all kinds of information on that process an
example I can show you here if I open the system monitor I can see Dasia
due monitors process ID or hid is two three four four so if I navigate to proc
two three four four which is the pit for the Dasia dupe monitor I can see all
kinds of pseudo files here this is much like dev where they're not actually
files on the system this is the kernel translating other information to appear
as files so for example here I can open the status file and it'll show me all
kinds of information on that process there's tons more in here but this isn't
something you want to play in if you are a developer if you're writing
applications this is very handy here you can also find information like for the
CPU for example this will give you all kinds of information on the CPU and you
can also do up time which will print out your uptime for your system
next is root root is the root users home folder unlike a user's home folder it
root
does not contain the typical directories inside and it does not reside in the
home directory you can store files here if you wish but you need root
permissions to access it the location of this directory also ensures that root
always has access to its home folder in case you have the regular users home
directory stored on another drive which you cannot access next is run this one's
run
fairly new and different distros use it in slightly different ways it's a temp
FS file system which means it runs in RAM this also means that everything in
it is gone when the system's rebooted or shut down it's used for processes that
start early in the boot procedure to store runtime information that they use
to function we've already covered s bin so next down the line
is snap this is a folder where snap packages are stored and are mainly used
snap
by Ubuntu snap packages are completely self-contained applications that run
differently than regular packages and applications this will be covered in a
future video on its own since it'll take more time to explain SRV this is the
srv
service directory where service data is stored it'll probably be empty for you
but if you run a server such as a web server or FTP server you would store the
files that will be accessed by external users here this allows for better
security since it's at the root of the drive and it also allows you to easily
mount this folder from another hard drive next down the line is sis the
sys
system folder has been around a long time it's a way to interact with the
kernel one older example is writing to a file using VGA switcheroo and change
settings on graphic cards in a hybrid system this directory is similar to the
run directory and it's not physically written to the disk it's created every
time the system boots up so you wouldn't store anything here and nothing gets
installed here TMP is of course a temp or temporary directory this is where
tmp
files are temporarily stored by applications that could be used during a
session one example is if you're writing a document in a word processor it will
regularly save a temporary copy of what you're writing here so that if the
application crashes it can look here to see if there's a recent saved copy that
you can recover this folder is usually emptied when you reboot the system on
occasion you might find some files or directory that remain and could be stuck
there because the system can't delete them this normally isn't a big deal
unless there's hundreds of files or the files are taking a lot of disk space in
which case you might want to log in as the root user in single user mode
navigate to this folder and manually delete them moving on we have the USR
usr
folder this is the user application space where applications will be
installed that are used by the user as opposed to the bin directory is used by
the system and system administrator to perform maintenance it's also known as
the UNIX system resource and any applications installed here are
considered non-essential for basic system operation installed applications
will reside in one of several places here such as user bin user s bin or
local bin local Ben with their required library stored
in local user local Lib or user Lib most programs that are installed from source
code will end up in the local folders many larger programs will install
themselves into user share any installed source code such as the kernel source
and header files will go into the SRC directory this directory seems like a
confusing mess at first and while the directory structure and what goes where
is laid out in the FHS I mentioned earlier you'll still have to sometimes
look in other places to find things someone making a certain application
might not adhere to the standard and could just do what they want
also some distros may treat these folders differently as well going back
to root we have next var var is the variable directory it contains files and
var
directories that are expected to grow in size for example var crash holds
information about processes that have crashed var log contains log files for
both the system and many different applications which will constantly grow
in size as you use the system you'll also find other things in here like
databases for mail and temporary storage for printer queues also known as the
spool and finally we will come back to the home folder when you enter the home
home
folder you'll see that each user has its own folder inside of it the home folder
is where you store your personal files and documents like I said each user has
their own home folder and each user can only access their own unless they use
admin permissions some users mount the home folder on a different drive or
different partition which allows you to reinstall your system and preserve your
files the home folder also contains many different directories which store your
application settings a hidden directory is simply one that starts with a period
Linux hides these by default you can view them in the file manager by
selecting show hidden files or by pressing ctrl H this is of course using
Nautilus in gnome and some file managers might be different PC man FM is also
press ctrl H to view hidden files if you're in the terminal and you list
files it'll only show you what is not hidden unless you specify - a for all
and now you can see all your hidden files these hidden directory store
things like cache some applications like a browser used to
store temporary files other applications might store thumbnails or information
that will be used over and over repeatedly then you have folders like
config and local which store individual application settings genie for example
can be found in config so here's the genie folder any settings that I change
in the genie options are saved here if I go back to the home folder you can see
that some applications store their settings straight into the home folder
like GIMP for example these hidden folders are also where your desktop
settings are saved whether you use open blobs KDE gnome
unity they all save their settings here such as what wallpaper you use what
theme you use and so on you can even place your icons and themes in these
folders so that you can have a custom look and easily save them for reuse
these hidden folders are important if you want to backup your files and your
settings I covered backups how to do them and
where to store them in another video which I'll link in the corner of the
screen and in the description below if you don't customize your system or you
don't care to then you can simply backup all the folders you see here if you want
to save all your settings then you might want to include all the hidden files as
well so if you reinstall your system you simply log in and all your theming will
already be done just like you left it you will have to reinstall your
applications but once you install them the settings you set for them will
already be in place and the applications will run just like they did before so as
you can see if Linux is kind of similar to Mac but very different from Windows
although it seems like a mess it's actually a more efficient way of doing
things and allows much more sharing of common resources between packages when
it comes to adding and removing software your distro will have a package manager
that will handle all this for you package manager tracks where everything
is going so that when you remove your package it takes all those files with it
I hope you found this informative I did put quite a bit of work into preparing
it and I'll have quite a bit of editing to do now so if you liked the video
please click like and don't forget to subscribe by hitting that big red button
and the bell to get notified of new videos most importantly if you found it
useful please share it by clicking that share button and spread it out to your
Twitter Facebook or whatever platform you use as always you can also follow me
over on Twitter at Dorian dot slash and swing by my patreon page
as well all the links are in the description thanks for watching and
until next time bash on
you