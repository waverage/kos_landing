# KOS landing script
Putting rockets into the sky, then turning around and landing them again! Using the kOS mod for Kerbal Space Program.

The scripts are written in the Kerboscript language, which is described
on the [main documenation page for kOS](http://ksp-kos.github.io/KOS_DOC/).

## Setup guide

1. Clone this repository to the `Script` folder.
2. Copy the `boot/boot_kos_landing.ks` to your `Script/boot` folder.
3. Select boot file in VAB.

![Select boot file](/images/boot_file.PNG)

4. In a flight press the `Land` button.

![Press Land button](/images/landing_gui.PNG)

5. Profit...

## Licensing:

Code contributed here will be under the MIT license, and the act of
submitting content to this repository will constitute implied
consent to have the content you are submitting be placed under the
MIT license.

The entire text of the MIT license can be found in the LICENSE file
alongside this README file.  The shorthand version is this: 

  1. Don't plagerize.  (Give attribution where you got it from).
  2. Don't sue. (No liability is promised).

That's pretty much it, in a nutshell.  As long as you do that, we
don't care what you do with these script examples and libraries.

For the **attribution** requirement of the license, you need only
attribute the KSLib team as a single group.  You will not have to
attribute each individual member.  The intent is to have
the entire attribution fit in a single short comment line.

### Why MIT License?

The main kOS mod's code is released under the Gnu Public License, version
3, (GPL3), and you may wonder why the MIT license was chosen for this
repository instead.

The shorthand answer is: "GPL3 is verbose" and "The edge cases it
covers just aren't going to come up".  The small lightweight nature 
of kerboscript, and the purpose to which it is put, makes the extra
verbose terms and conditions of the GPL3 rather overkill for the
task at hand.  For casual new kerboscripters who just want to do
something small and simple, the GPL3 can be a bit intimidating.
