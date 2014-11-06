Effektif adminstrators guide
============================

The Effektif administrators guide uses [Sphinx](http://sphinx-doc.org/) to create the documentation as HTML and PDF. Sphinx is a Python library. The documentation itself is written using reStructuredText with some Sphinx flavor and is available in english and german.

### Prerequisites
* [Python](https://www.python.org/downloads/)
    * you can go with version 2.7.x, but 3.x should work as well
* [PIP](https://pypi.python.org/pypi/pip)
* sphinx >= 1.2.3
* sphinx-autobuild >= 0.3.0
* sphinx-intl >= 0.9.5

### Setup 
In order to edit the documentation, you will want to install Sphinx on your local machine. Therefore, make sure you have Python and [PIP](https://pypi.python.org/pypi/pip) installed.

1. Clone the repository to your system.
2. Open the `docs` directory in your local copy. 
3. Run `make install`

This will install all necessary modules including Sphinx.

### Edit the documentation
The source files are located in `docs/source`. The file `index.rst` is the main documentation file that includes all the other source files. In general, the source files are divided by chapters.

The directory `_static` contains static files like images that are referenced in the documentation and are included during the build process.

The directory `locale` contains the translation files (\*.po) that have be adjusted after changing the source files.

Some helpful resources regarding Sphinx and reST:
* http://rest-sphinx-memo.readthedocs.org/en/latest/ReST.html
* http://sphinx-doc.org/

### Translations
When you edited the documentation, you have to update the translations as well.

1. Open the `docs` directory in your local copy. 
2. Run `make i18nextract`
3. Update the \*.po files in `source/locale`.
4. Run `make i18nmerge`

Always commit the \*.mo files as well, because they are required by readthedocs to create the german translation.

### Create the artifacts
Before you can create PDF files locally you need to set up an appropriate latex environment. On MacOs you can for instance install [MacTex](http://tug.org/mactex/).

The HTML generation works out of the box with Sphinx.

By default the english versions of the artifact will be created. In order to generate the artifacts for another language, use the following parameter:
`-e SPHINXOPTS="-D language='de'"`

Create HTML (en):
`make html`

Create HTML (de):
`make -e SPHINXOPTS="-D language='de'" html`

Create PDF from Latex (en):
`make pdfen`

Create PDF from Latex (de): 
`make pdfde`

If you try to create artifacts in both languages right after each other, the PDF creation might fail. Then simply clean up the build directory (`make clean`) and run the creation command again.