# Data Science Handbook 
[![Documentation
Status](https://readthedocs.org/projects/data-science-hand../badge/?version=latest)](https://data-science-hand...readthedocs.io/en/latest/?badge=latest)

A comprehensive collection of data science technical concepts. The purpose of
this work is to consolidate notes taken over the years on various data science
topics and make it easily accessible via a web browser by using `Read the Docs`
for hosting.

The documentation can be found
[here](https://data-science-hand...readthedocs.io/en/latest/).

**Note:** This project is still under construction. More documentation and
references will be added as the project matures.

## Sphinx Documentation

To get started, first create a virtual environment and within this environment,
install the required dependencies by running:

```
pip install requirements.txt
```

Next, to build the docs locally for testing purposes, you can run the following
command from within the project root directory:

```
sphinx-autobuild -b html docs docs/build/html
```

An alternative shortcut command to build the docs is to run:

```
make docs
```

This will launch a web server on port 8000 and builds the doc locally. To 
access the docs, navigate to http://127.0.0.1:8000 in your browser.

## Contributing

When contributing to the project, it's recommended to edit the markdown files
in `docs/book` within an editor like VS Code. A handy shortcut command
`cmd-shift-v` in VS Code allows you to view the rendered markdown file in a
side-by-side view along with the source markdown file being edited. 

Once changes are made and ready to be published, please open a pull request on
the `development` branch for a review. After the changed are approved, a merge
request will automatically updated the published `readthedocs` page for the
project. 

