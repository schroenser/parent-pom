#!/usr/bin/env bash
if [ "$TRAVIS_BRANCH" = 'master' ] && [ "$TRAVIS_PULL_REQUEST" == 'false' ]; then
    mvn package -P sign --settings ci-resources/mvnsettings.xml
else
    mvn package
fi