#!/usr/bin/env sh

testCommitMessageWithNoBodyAccepted() {
    output=`main test/res/commit-validation-suite/test-commit-message-with-no-body-accepted/commit.txt`
    assertEquals 0 $?
}

testCommitMessageWithInvalidBodyNotAccepted() {
    output=`main test/res/commit-validation-suite/test-commit-message-with-invalid-body-not-accepted/commit.txt`
    assertEquals 1 $?
}

oneTimeSetUp() {
  . ./commit-msg
}
