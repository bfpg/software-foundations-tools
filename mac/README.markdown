# Software Foundations for Mac OS X

Here is a process for building or verifying a bundle of tools
for helping [Software Foundations][SF] workshop participants
get up-and-running quickly on Mac OS X.

[SF]: http://www.cis.upenn.edu/~bcpierce/sf/current/index.html

You will need:

- An Apple Mac with a recent version of OS X.

## Tools

- Download the tools:
    - [Emacs 24.5-1][emacs-dmg] from the [Emacs for Mac OS X][emacs-osx] site
    - [Coq 8.4pl5][coq-dmg] from the [Coq][] website
    - [Proof General 4.2][PG42] from the [Proof General][PG] website

[emacs-dmg]: http://emacsformacosx.com/emacs-builds/Emacs-24.5-1-universal.dmg
[emacs-osx]: http://emacsformacosx.com/
[coq-dmg]: https://coq.inria.fr/distrib/V8.4pl5/files/coqide-8.4pl5.dmg
[Coq]: https://coq.inria.fr/
[PG42]: http://proofgeneral.inf.ed.ac.uk/releases/ProofGeneral-4.2.tgz
[PG]: http://proofgeneral.inf.ed.ac.uk/

- Unpack the Proof General TGZ file.

- Delete all `*.elc` files from the ProofGeneral-4.2 heirarchy.
  (They have been compiled for an older version of Emacs).

## Software Foundations source

- On the host, clone the Software Foundations source, and do
  some housekeeping:

        git clone git@github.com:bfpg/software-foundations.git
        cd software-foundations
        git checkout upstream
        git checkout master
        git remote rename origin bfpg

## Build the bundle

- Create a directory somewhere, with the following heirarchy,
  populated with the components collected in the previous steps,
  and the `emacs` and `make` scripts from this repository.

    - `sf-mac`
        - `sf`
            - `software-foundations/`
                - `.git`, etc.
                - `sf/`
            - `tools/`
                - `Coq-8.4pl5/`
                    - `CoqIDE_8.4pl5.app`
                - `ProofGeneral-4.2`
                    - `AUTHORS`, `INSTALL`, etc.
                - `Emacs-24.5-1`
                    - `Emacs.app`, `More...`, etc.
            - `emacs`
            - `make`

- Package as a DMG file:

        hdiutil create -size 420m -srcfolder sf-mac sf-mac-2015-05-18.dmg

## Test the bundle

- Open the disk image, and copy the `sf` directory somewhere.

- Run the `emacs` script and verify that Emacs opens to `Basics.v`, and that
  Proof General navigation works.

- Run the `make` script and verify that it generates `.vo` and `.v.d` files in
  the `software-foundations/sf` directory.
