# pre-commit
This repository contains scripts for pre-commit hooks.

## Usage

```
- repo: https://github.com/Latch/pre-commit
  rev: v1.0.2
  hooks:
  - id: prepare-commit-msg
    name: Prepare commit message
    language: script
    always_run: true
    verbose: true
    stages: [prepare-commit-msg]
```

## Scripts

### prepare-commit-msg.sh

The `prepare-commit-msg.sh` script is a pre-commit hook that is executed before creating a commit message. It adds the branch name to the beggining of the message.

### post-checkout.sh

The `post-checkout.sh` script is a pre-commit hook that is executed after a successful `git checkout` command. It increases the version on locals.tf if a new branch is created and if there is a version.
