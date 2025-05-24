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

testValidCommitMessageWithCommentsIsAccepted() {
    output=`main test/res/commit-validation-suite/test-valid-commit-message-with-comments-is-accepted/commit.txt`
    assertEquals 0 $?
}

testCommitMessageWithOnlyBreakingChangeFooterIsAccepted() {
    output=`main test/res/commit-validation-suite/test-commit-message-with-only-breaking-change-footer-is-accepted/commit.txt`
    assertEquals 0 $?
}

testCommitMessageWithOnlyBreakingChangeTypeIsAccepted() {
    output=`main test/res/commit-validation-suite/test-commit-message-with-only-breaking-change-type-is-accepted/commit.txt`
    assertEquals 0 $?
}

testCommitMessageWithOnlyScopeAndBreakingChangeTypeIsAccepted() {
    output=`main test/res/commit-validation-suite/test-commit-message-with-only-scope-and-breaking-change-type-is-accepted/commit.txt`
    assertEquals 0 $?
}

testCommitMessageWithBothBreakingChangeTypeAndFooterIsAccepted() {
    output=`main test/res/commit-validation-suite/test-commit-message-with-both-breaking-change-type-and-footer-is-accepted/commit.txt`
    assertEquals 0 $?
}

testCommitMessageWithScopeAndNoBodyIsAccepted() {
    output=`main test/res/commit-validation-suite/test-commit-message-with-scope-and-no-body-is-accepted/commit.txt`
    assertEquals 0 $?
}

oneTimeSetUp() {
  . ./commit-msg
}
