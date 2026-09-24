# LLM Tools: Claude, Gemini, OpenClaw — Quick Guide

This document summarizes popular LLM developer tools you mentioned: Anthropic Claude, Google Gemini, and OpenClaw. It covers account setup, CLI usage, VS Code usage, GitHub integration, and safe workflows for applying suggestions to this repository.

## Claude (Anthropic)
- Overview: Claude is an Anthropic LLM focused on helpful, harmless assistant behavior.
- Account & API: Sign up at Anthropic, create an API key from your account dashboard.
- CLI: If using a `claude` CLI, install per vendor instructions and authenticate with your API key.

Common CLI patterns (hypothetical):

```bash
# authenticate
claude login --api-key YOUR_KEY
# request a completion or code suggestion
claude complete --file path/to/file --prompt "Improve this function"
```

- `claude.md`: keep a short guidance file named `claude.md` (or similar) that contains repository-specific instructions and examples to include in prompts when calling Claude. Example contents:

```
Repository: AI-Assisted Coding
Style: concise, test-first, small functions
Do not add secrets
```

## Gemini (Google)
- Overview: Gemini family includes models available through Google Cloud and other interfaces.
- Account & API: Use Google Cloud console, enable the appropriate API, and create service credentials.
- CLI: `gemini`-style CLIs (or `gcloud alpha` integrations) let you request generation or evaluate code.

Example (hypothetical):

```bash
# authenticate using gcloud
gcloud auth login
# call gemini or use provided SDK/CLI
gemini suggest --file path/to/file --temperature 0.2
```

## OpenClaw
- Overview: OpenClaw (third-party or open-source tool) — treat as a toolkit for local or hosted LLM ops.
- Install & auth: follow the project's README; typical flows use API tokens or local model endpoints.

## VS Code usage
- Extensions: prefer official vendor extensions (if available) or use the CLI in the integrated terminal.
- Workflow: request a suggestion, open the suggested diff or patch, preview changes, run tests, then commit.

## GitHub integration
- Connect tools to GitHub via the tool dashboard to enable PRs or repo scans.
- Always review suggested PRs: run CI, inspect diffs, and verify no secrets are introduced.

## Applying suggestions safely
- Save suggestions as `suggestion.patch` and preview:

```bash
git apply --check suggestion.patch
git apply suggestion.patch
```

- Use `examples/llm/` scripts to simulate the flow locally before applying real patches.

## Example prompts and `claude.md` usage
- Keep a short prompt file (`claude.md`) with repository context and style points to include when calling Claude or other assistants. This reduces prompt drift and improves consistency.

## References
- Link vendor docs when available (Anthropic, Google Cloud, and OpenClaw project page).

---
If you want, I can populate a sample `claude.md`, add real example prompts, or wire a tiny local runner to call a mock CLI for demonstration. Which would you like next?
