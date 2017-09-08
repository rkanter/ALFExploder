#!/bin/bash

# build code and copy dependencies
mvn clean dependency:copy-dependencies package $@
