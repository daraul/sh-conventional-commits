#!/usr/bin/env sh

testCommitMessageWithNoBodyAccepted() {
    output=`main test/res/commit-validation-suite/test-commit-message-with-no-body-accepted/commit.txt`
    assertEquals 0 $?
}

oneTimeSetUp() {
  . ./commit-msg
}
