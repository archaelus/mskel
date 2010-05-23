==================================================
MSkel - An idiosyncratic mochiweb project skeleton
==================================================

MSkel is an evolving and idiosyncratic project skeleton for building
websites with erlang and mochiweb. Templating is provided by erlydtl
and various other services (url routing, etc) is done by ejango.

Requirements
============

* Erlang R13B04
* Rebar

Building
========

1. git submodule init
2. git submodule update
3. rebar compile

Running
=======

1. ``erl -pa ebin lib/*/ebin -boot start_sasl -eval 'application:start(skel).'``
2. http://localhost:8123/
