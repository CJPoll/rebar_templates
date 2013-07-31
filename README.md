rebar_templates
===============

A group of rebar templates that include the standard OTP behaviors.

The setup_app script sets up a skeleton for an app with the following directory
structure:

-root
 |
 +-apps
 | |
 | +-appname
 |  |
 |  +-src
 |  +-ebin
 |  +-doc
 |  +-test
 |
 +-deps
 |
 +-rel
   |
   +-files
   +-reltool.config

Think of it as an "application template".

It requires exactly one argument: the application name. Don't forget to quote it
if it contains spaces for some ungodly reason.

It currently does not create a Makefile, though I intend to add that shortly. 
Nor does it create a rebar.config file, though I intend to add a basic default
one soon as well.

The update\_templates script places the templates in the ~/.rebar/templates
directory, creating it if necessary.
