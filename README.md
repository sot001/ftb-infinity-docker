# FTB MageQuest

For instructions on how to use this docker image, see [dlord/minecraft][].

## notes:
* all files in the directory with the Dockerfile are copied into the container, so you can place custom server.properties files, ops.json files, whitelist.json files, etc. and have them encorporated into the running container.

## To run this container
```docker run -v /minecraft_worlds/world:/opt/minecraft/world -p 25566:25566 -d -it -e DEFAULT_OP=GrumpyOldSot -e MINECRAFT_EULA=true ftb-magequest```

## Pull Request Guidelines

All pull requests must have a description, and commit messages must follow
the Linux Kernel standards. Please see [Care And Operation Of Your Linus Torvalds][]
or [How to Write a Git Commit Message][] by Chris Beams.


[Care And Operation Of Your Linus Torvalds]: https://www.kernel.org/doc/Documentation/SubmittingPatches
[How to Write a Git Commit Message]: http://chris.beams.io/posts/git-commit/

[dlord/minecraft]: https://hub.docker.com/r/dlord/minecraft/
