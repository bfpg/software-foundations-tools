# Software Foundations for Windows

Here is a process for building or verifying a bundle of tools
for helping [Software Foundations][SF] workshop participants
get up-and-running quickly on Windows.

[SF]: http://www.cis.upenn.edu/~bcpierce/sf/current/index.html

You will need:

- A Windows virtual machine, preferably a fresh installation
  plus updates, with the ability to take and revert to
  snapshots, and to move large files between the VM and host.

- Some UNIX tools on the host, in particular:
    - `tar`
    - `find`
    - `zip`
    - `shasum`
    - `gpg`

## Extract binaries from the Coq installer

Coq binaries are distributed via an installer. We prefer to
provide a single ZIP file bundling all the tools and sources,
such that the tools can be used without further installation
or configuration. So we first extract the binaries from the
Coq installer.

- Shut down the Windows VM, and create a _pre-install_ snapshot.

- From the [Coq][] website, download to the host machine:
    - the [Windows installer][coq-installer]
    - its [checksum][coq-checksum]
    - the checksum [signature][coq-sig]

[Coq]: https://coq.inria.fr/
[coq-installer]: https://coq.inria.fr/distrib/V8.4pl6/files/coq-installer-8.4pl6.exe
[coq-checksum]: https://coq.inria.fr/distrib/V8.4pl6/files/coq-installer-8.4pl6.exe.sha1
[coq-sig]: https://coq.inria.fr/distrib/V8.4pl6/files/coq-installer-8.4pl6.exe.sha1.asc

- Verify the checksum and signature (as far as reasonably possible).

        shasum -c coq-installer-8.4pl6.exe.sha1
        gpg --keyserver-options auto-key-retrieve --verify coq-installer-8.4pl6.exe.sha1.asc

- Boot the Windows VM.

- Transfer the installer to the Windows VM.

- Run the installer, installing all components to default locations.

- Find the installation directory: `\Program Files (x86)\Coq`

- Create a directory named `Coq-8.4pl6` on the Desktop, and copy
  the contents of the installation directory to it.

- Delete `Uninstall.exe` from the root of the copy.

- Create a ZIP file from the copy, and copy the ZIP file from
  the VM to the host.

- Shut down the VM, and restore the _pre-install_ snapshot
  (effectively uninstalling Coq).

## Other tools

- From the [Emacs for Windows][Emacs] site, download to the host:
    - the [binary package][emacs-zip]
    - its [signature][emacs-sig]

[Emacs]: https://ftp.gnu.org/gnu/emacs/windows/
[emacs-zip]: https://ftp.gnu.org/gnu/emacs/windows/emacs-24.4-bin-i686-pc-mingw32.zip
[emacs-sig]: https://ftp.gnu.org/gnu/emacs/windows/emacs-24.4-bin-i686-pc-mingw32.zip.sig

- Verify:

        gpg --keyserver-options auto-key-retrieve --verify emacs-24.4-bin-i686-pc-mingw32.zip.sig

- From the [Proof General][PG] site, download to the host:
    - the [source][pg-source]

[PG]: http://proofgeneral.inf.ed.ac.uk/
[pg-source]: http://proofgeneral.inf.ed.ac.uk/releases/ProofGeneral-4.2.tgz

- Unpack the TGZ file.

- Delete all `*.elc` files from the `ProofGeneral-4.2` heirarchy.
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
  and the `emacs.bat` and `make.bat` files from this repository.

    - `bfpg-sf`
        - `software-foundations/`
            - `.git`, etc.
            - `sf/`
        - `tools/`
            - `Coq-8.4pl6/`
                - `bin`, `config`, etc.
            - `ProofGeneral-4.2`
                - `AUTHORS`, `INSTALL`, etc.
            - `emacs-24.4-bin-i686-pc-mingw32`
                - `bin`, `libexec`, etc.
        - `emacs.bat`
        - `make.bat`

- Package as a ZIP file:

        zip -r bfpg-sf-windows-2015-04-23.zip bfpg-sf/

## Test the bundle

- Boot the Windows VM.

- Copy the ZIP bundle to the VM, and unpack.

- Run `emacs.bat` and verify that Emacs opens to `Basics.v`, and
  that Proof General navigation works.

- Run `make.bat` and verify that it generates `.vo` and `.v.d` files
  in the `software-foundations/sf` directory.

- Shutdown and restore the _pre-install_ snapshot.
