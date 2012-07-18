=======
asc-cls
=======

asc-cls is a LaTeX class which strives to adhere to the American Society
of Composites' conference paper guidelines.

I am not affiliated with the American Society of Composites.

License
=======

© 2012 T.B. Hartman

asc-cls is free and licensed under the Apache License 2.0.  You are welcome to
change and redistribute it under certain conditions.  For more information, see
the LICENSE file or visit:

http://www.apache.org/licenses/LICENSE-2.0

Please note Part 8 of the License; I am not responsible for your use of this
product.

Instructions
============

Download all the files here and run

    make

to create create everything you need.  You might finish it up with a 

    make clean

to get rid of all the intermediate files. This will create the class file, the
bibliography style file, the documentation for the class, and the rendered PDF
of the sample file.  You can then use

    \documentclass[]{asc}

in the preamble of your TeX source file (provided **asc.cls** is in TeX's path).

If ```make``` is not your thing, you can get the files by:

    latex asc.dtx

for the class docs,

    latex asc.ins

for the class file itself,

    latex asc.dbj

for the bibliography style file, and (after those)

    latex asc-sample
    bibtex asc-sample
    latex asc-sample
    latex asc-sample

for the rendered sample PDF.

Sample Document
===============

You may wish to render the example LaTeX document:

    pdflatex asc-sample
    bibtex asc-sample
    pdflatex asc-sample
    pdflatex asc-sample


Info & Bugs
===========

Source code:
    https://github.com/tbhartman/asc-cls

Please report any issues to:
    tbhartman@vt.edu
