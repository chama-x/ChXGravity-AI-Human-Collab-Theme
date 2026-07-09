# Ch X Gravity — Core System Rules

**CRITICAL RULES FOR ALL AGENT INTERACTIONS IN THIS WORKSPACE:**

You are operating within the "Ch X Gravity" design repository. This project strictly adheres to the Architect-Orchestrator paradigm. When editing UI configuration files (`settings.json`, `custom.css`, `custom.js`) or proposing new features, you MUST enforce the following constraints with 100% compliance:

### 1. Zero Purposeless Accents (Strict Grayscale)
The standard UI must be completely devoid of color noise. Badges, git statuses, highlights, progress bars, terminal logs, and generic UI components must ALWAYS be mapped to strict grayscale values (e.g., `#888888`, `#777777`, `#555555`, `#333333`, `#b0b0b0`). Do not introduce standard theme colors (like blue, pink, red) for typical UI feedback unless it is an absolute critical error.

### 2. Exclusive Accent Rule: Acid Pistachio (#dfff00)
Acid Pistachio is exclusively reserved for **AI Approval / Proceed / Accept Changes** actions. It must NEVER be used for search highlights, warnings, generic buttons, or badges. It is the visual indicator for the human to greenlight agentic action.

### 3. Exclusive Accent Rule: Hologram Haze (#a78bfa / #a695d6)
Hologram Haze (a signature soft purple) is exclusively reserved for **Human Intent**. 
- In the code editor, it is ONLY used for Comments and Docstrings.
- In the UI, it is ONLY used for the Active Cursor Glow.
Never apply this color to generic text, buttons, backgrounds, or sidebars.

### 4. Bimodal Typographic Inversion
If adding new syntax highlighting rules to `editor.tokenColorCustomizations`:
- **Code is Recessive**: All executable code (variables, strings, keywords, classes) MUST be styled as *italic*. (Classes/Functions can be bold italic, but must always be italicized).
- **Comments are Dominant**: Comments MUST be non-italic, straight, and bold (`fontStyle: "bold"`).

Do not violate these rules under any circumstances. If the user asks for a UI change, verify it does not bleed colors outside of these exclusive constraints.
