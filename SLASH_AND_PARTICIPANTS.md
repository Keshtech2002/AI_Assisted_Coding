# Slash Commands & Participants — Guide

This document explains common slash commands (e.g., `/init`, `/todo`, `/test`) and the concept of conversation participants (user, assistant, system, tool) when using AI-assisted workflows.

1. What is a slash command?
   - A short directive starting with `/` used to trigger a specific workflow or macro.
   - Examples: `/init` to scaffold a project, `/test` to run tests, `/todo` to create task lists.

2. Common participants
   - **User:** You, the person asking for help.
   - **Assistant:** The AI (Copilot, ChatGPT) that responds and makes changes.
   - **System:** Global instructions that shape assistant behavior (e.g., `.github/copilot-instructions.md`).
   - **Tool:** External helpers (linters, test runners, file editors) called by the assistant.

3. How to design slash commands in prompts
   - Make them idempotent where possible (re-running doesn't cause harm).
   - Keep arguments explicit: `/scaffold name=widget lang=python`.
   - Return a concise summary of actions and files modified.

4. Example workflows
   - `/init`: scaffold minimal project structure and README.
   - `/exercise add name=foo`: create exercise skeleton under `exercises/foo`.
   - `/explain file=path`: assistant opens and explains a file.

5. Examples and templates (see `examples/`)
