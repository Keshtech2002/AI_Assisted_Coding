# AI Best Practices for Building with AI Tools

This file captures concise, practical best practices for working with AI-assisted coding tools like GitHub Copilot, ChatGPT, and local ML assistants.

1. Start small and iterate
   - Break features into minimal, testable steps.
   - Use short prompts that focus on one task at a time.

2. Be explicit in prompts
   - Include expected language, style, constraints, and examples.
   - Provide the repository context: key files, frameworks, and conventions.

3. Validate generated code
   - Run tests or quick manual checks.
   - Prefer small, deterministic examples for verification.

4. Use Copilot Instructions and repo metadata
   - Add `.github/copilot-instructions.md` to guide behavior across the repo.
   - Keep a `SLASH_AND_PARTICIPANTS.md` guide and `examples/slash/` for runnable demos.

5. Keep an iterative changelog
   - Record prompt versions and results.

6. Secure secrets and credentials
   - Never include secrets in prompts or committed files.

7. Learn to prompt for reasoning
   - Ask the assistant to explain tradeoffs, complexity, and alternatives.

8. Use tests and linters early
   - Add basic unit tests and a linter configuration to catch simple mistakes.

9. Review diffs before accepting code
   - Inspect suggested changes for security, license, and style.

10. Keep templates for common tasks
   - Save prompt templates for new feature scaffolding, refactors, and bug fixes.

---

 
