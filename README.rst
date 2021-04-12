DSS Software Engine
===================

**dss-engine** aims to provide a software facade for solving Power Flow on Distribution Systems.
The main idea is to completely decouple the solver engine from the domain problem.

In order to do that, we shall use a Domain Driven approach, always attempting to reduce
complexity and allowing the project to evolve into more robust designs.

The basic scaffolding was provided by the scafollddd_ project, where a basic structure
for a Python 3.8 backend is provided using Poetry, Falcon and Docker-compose.

Running
^^^^^^^
In order to run this project you will need Docker and Docker-compose installed and
configured. I recommed using Docker for testing and prototyping, as you cann start
your application and debug without configuring an entire environment for that.

If working from a Linux machine:

.. code-block::

    make build %% builds the project
    make up    %% starts the project
    make down  %% stops the project

.. _scafollddd: https://python-poetry.org/

