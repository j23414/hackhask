# hackhask

HackHask is me hacking at haskell until it is beaten into some semblence of understanding and I have 
emerged victoriously, master of all I see! Mwahahaha!

Mostly, it's me reading through tutorials, implementing the code, and being 
surprised everytime something doesn't work as I'd expect.

[Learn You A Haskell For Great Good - An awesomely named tutorial](http://learnyouahaskell.com/chapters)

## Installation (on Mac)

```bash
$ brew cask install haskell-platform
# Or by picking a haskell package manager (cabal vs stack)
$ brew install haskell-stack
$ brew install cabal-install
```
## Some basics

```bash
$ ghci                     #  Welcome to the world of Haskell
GHCi, version 8.0.1: http://www.haskell.org/ghc/  :? for help
Prelude> :l script         -- That's the letter L for LOAD script.hs
Prelude> :quit             -- You are leaving the world of Haskell
$ ghc script.hs            # compile haskel script
$ ghc --make script.hs            # compile haskel script
$ ./script                 # run from bash command line
```

