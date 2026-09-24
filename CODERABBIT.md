# CodeRabbit — Setup & Usage Guide

This guide covers creating a CodeRabbit account, using its CLI in VS Code, integrating suggestions with GitHub, and copying suggestions into this repo (manually or via Copilot-assisted edits).

## Create an account
1. Visit the CodeRabbit website and sign up with an email or OAuth provider.
2. Verify your email and generate a CLI API token from your account settings.

## Install CLI and authenticate (local)
1. Install via package manager or download the binary. Example for Linux (if provided by CodeRabbit):

```bash
# hypothetical install
curl -fsSL https://coderabbit.example/install.sh | sh
# then authenticate
coderabbit login --token YOUR_TOKEN
```

2. Verify with `coderabbit whoami`.

## Use in VS Code
- Install CodeRabbit extension (if available) or use the integrated terminal to run `coderabbit` commands.
- Use `/`-style commands or the extension UI to request suggestions for files or code blocks.

## GitHub integration
- Connect CodeRabbit to your GitHub account in the CodeRabbit dashboard to enable PR-based suggestions or repository scanning.
- When suggestions are provided as PRs or patches, review diffs before merging.

## Copying suggestions into this repo
1. Manual: copy suggested code into the appropriate file, run tests/linter.

2. Using a patch file (recommended for small patches)
	- Save the suggestion as `suggestion.patch` (unified diff format).
	- Preview/apply locally:

```bash
# check the patch will apply cleanly
git apply --check suggestion.patch
# apply the patch
git apply suggestion.patch
```

	- Commit the applied change and push to a branch for review.

3. Assisted via Copilot
	- Paste the suggestion text into a prompt and ask Copilot to create a focused edit, for example:

"Here is a patch file — apply the changes to `path/to/file` and update tests to cover the new behavior."

	- Carefully review the suggested edit in the editor before saving.

4. PR-based suggestions from CodeRabbit
	- If CodeRabbit can open a PR or provide a patch URL, fetch the patch and test locally as above.
	- Review diffs on GitHub, run CI, and only merge after manual review.

## Quick safety checklist
- Run `git status` and ensure you're on a feature branch.
- Run `git apply --check` before applying.
- Run tests and linter after applying.
- Scan the patch for excluded content (secrets, opaque tokens).

## Safety and verification
- Always review, run tests, and scan for secrets before accepting remote suggestions.