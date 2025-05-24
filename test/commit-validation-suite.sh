#!/usr/bin/env sh

testCommitMessageWithNoBodyAccepted() {
    output=`main test/res/commit-validation-suite/test-commit-message-with-no-body-accepted/commit.txt`
    assertEquals 0 $?
}

testCommitMessageWithInvalidBodyNotAccepted() {
    output=`main test/res/commit-validation-suite/test-commit-message-with-invalid-body-not-accepted/commit.txt`
    assertEquals 1 $?
}

testCommitMessageWithValidBodyAccepted() {
    output=`main test/res/commit-validation-suite/test-commit-message-with-valid-body-is-accepted/commit.txt`
    assertEquals 0 $?
}

testCommitMessageWithValidBodyAndValidFooterIsAccepted() {
    output=`main test/res/commit-validation-suite/test-commit-message-with-valid-body-and-valid-footer-is-accepted/commit.txt`
    assertEquals 0 $?
}

testCommitMessageWithValidBodyAndInvalidFooterIsRejected() {
    output=`main test/res/commit-validation-suite/test-commit-message-with-valid-body-and-invalid-footer-is-rejected/commit.txt`
    assertEquals 1 $?
}

oneTimeSetUp() {
  . ./commit-msg
}
