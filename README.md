# pre-commit
# Repository Name

This repository contains scripts for pre-commit hooks.

## Usage

`- repo: https://github.com/Latch/pre-commit
  rev: v1.0.0
  hooks:
  - id: prepare-commit-msg
    name: Prepare commit message
    language: script
    always_run: true
    verbose: true
    stages: [prepare-commit-msg]`

## Scripts

### prepare-commit-msg.sh

The `prepare-commit-msg.sh` script is a pre-commit hook that is executed before creating a commit message. It is useful for modifying the commit message or adding additional information to it. This script can be used to automatically prepend a branch name or add a template to the commit message.

### post-checkout.sh

The `post-checkout.sh` script is a pre-commit hook that is executed after a successful `git checkout` command. It is useful for performing tasks such as updating dependencies, cleaning up temporary files, or resetting configuration settings.