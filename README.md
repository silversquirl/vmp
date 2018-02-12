# vmp

A music player based on the concept of "everything is a file".

## What is this?

It's a music player inspired by MPD and the UNIX philosophy. Unlike
MPD, vmp does not handle playlists or libraries or anything other than
playing music (actually, it doesn't even do that much; see below for
more details).  vmp was designed to be easy to integrate into systems
using other programs, which led to its file-based interface.

## How does it work?

vmp is controlled by, and stores most of its state in, files. This
makes for an interface that is very easy to connect to other things,
such as status bars and notifications.

vmp has two parts: the basic interface and the fancy interface.

### Basic interface

The basic interface simply watches and modifies a directory tree to
control and report the status of an instance of mpv that it supervises.
It provides a very simple file-based interface to playing music.

### Fancy interface

The fancy interface is designed to be a bit more user-friendly than the
basic interface, and provides a command-based control system using a FIFO.
It also does a few extra things, like keeping track of the queued files
and the player history, allowing you to jump to next or previous tracks.

TODO: The fancy interface currently does not automatically play the next
track when the current one finishes.

## Dependencies

Stuff you probably already have:

- `bash`
- `sed`
- `cmp`
- `cat`
- `tac`
- `grep` with support for the `--line-buffered` option

Stuff you might need to install:

- `mpv`
- `inotifywait`
