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

Use

    \documentclass[]{asc}

in the preamble of your TeX source file.  For further instructions, reference the documentation by either running

    make docs

or

    pdflatex asc.dtx

To create the class and bibliography style files, run

    latex asc.ins
    latex asc.dbj

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
