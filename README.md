# 🜀 Essence

This is a demonstration package that uses the PDS Node.js template repository.

Please visit our website at: https://nasa-pds-engineering-node.github.io/essence

It has useful information for developers and end-users. Allegedly.


## 💽 Prerequisites

None.


## 🏎️ User Quickstart

You can quickly install this by typing

    npm install


## ✋ Code of Conduct

All users and developers of the NASA-PDS software are expected to abide by our [Code of Conduct](https://github.com/NASA-PDS/.github/blob/main/CODE_OF_CONDUCT.md). Please read this to ensure you understand the expectations of our community.


## 🔧 Development

To develop this project, use your favorite text editor, or an integrated development environment of your choice with Node.js support.


### 👏 Contributing

For information on how to contribute to NASA-PDS codebases please take a look at our [Contributing guidelines](https://github.com/NASA-PDS/.github/blob/main/CONTRIBUTING.md).


### 🤫 Detecting Secrets

(These instructions can probably stay as-is.)

The PDS Engineering Node recommends using [detect-secrets](https://github.com/NASA-PDS/nasa-pds.github.io/wiki/Git-and-Github-Guide#detect-secrets) in order to prevent credentials, private email addresses, application keys, etc., from leaking into the commit history. To use `detect-secrets`, install the tool according to the instructions in the wiki. Then, make a baseline for any secrets that are _supposed_ to be in repository:

    detect-secrets scan . \
        --all-files \
        --disable-plugin AbsolutePathDetectorExperimental \
        --exclude-files '\.secrets..*' \
        --exclude-files '\.git.*' \
        --exclude-files '\.pre-commit-config\.yaml' \
        --exclude-files 'node_modules' > .secrets.baseline

Review the `.secrets.baseline` to determine which should be allowed and which are false positives:

    detect-secrets audit .secrets.baseline

Please remove any secrets that should not be seen by the public. You can then add the baseline file to the commit:

    git add .secrets.baseline

Then, configure the `pre-commit` hooks:

    pre-commit install
    pre-commit install -t pre-push
    pre-commit install -t prepare-commit-msg
    pre-commit install -t commit-msg

These hooks then will check for any future commits that might contain secrets.

👉 **Note:** A one time setup is required both to support `detect-secrets` and in your global Git configuration. See [the wiki entry on Secrets](https://github.com/NASA-PDS/nasa-pds.github.io/wiki/Git-and-Github-Guide#detect-secrets) to learn how.

