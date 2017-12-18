# Contributing

Everyone is welcome to open a pull request and improve this package. To maximize the chance to make the PR become accepted, please consider the following guidelines.

### Structure

* Each template should have in its own directory
* A template should always consist of a `main.tex` file and should only be extended, if the code extends the complexity of a single file (e.g. more than 1000 lines).
* Included `.tex` files should be stored in a folder, e.g. named "lib" (for structural docs) or "g" (for tikz graphics).
* Non-compiling PRs will be rejected
* Always add the main.pdf output as a
* No interdependencies between templates, please. I know this creates a lot of duplicate code,  but there is a clear intention behind this: Users and especially those who are new to LaTeX should have a quick editable, easy to understand and easy to compile template to create their own cv. Therefore each cv should be viewed as a single instance. In the future there may be an enhancement to define the personal credentials in a single file and include it in each cv template.
* Make sure, that your PR does not cause a template to exceed the size of one page. This project intends to keep every tamplte short and clear.

### Code

* Comments should be added as often as possible. Please see the modern or infographics template for orientation.
* Greater sections should be introduced with a block-sized comment. Please see the modern or infographics template for orientation.
* Please comment parameters. If a parameter is not commented yet and the command is therefore not understandable, please open an issue.


### Learn LaTeX

The following constructs/libraries are crucial to know in order to conribute successfully:

* newenvironment
* newcommand
* tikz


A good way to start are the following pages:

Wikibooks: https://en.wikibooks.org/wiki/LaTeX
For Questions: https://tex.stackexchange.com/
Especially Tikz: http://www.texample.net/tikz/
