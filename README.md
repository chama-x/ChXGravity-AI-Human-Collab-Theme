# Ch X Gravity — IDE Theme & Architect Framework

**Ch X Gravity** is a highly opinionated, AI-first IDE customization framework for VS Code and its forks. It is built strictly on the **Architect-Orchestrator** philosophy—a paradigm shift where the human acts as the orchestrator of AI agents, and code generation is delegated.

## Core Philosophies

### 1. Bimodal Typographic Inversion
In traditional development, code is the primary focus. In AI-first development, *intent* is the primary focus.
- **Code is Recessive**: All programming syntax (functions, variables, logic) is rendered in *italics*, signaling that it is a generated artifact.
- **Intent is Dominant**: All comments and docstrings are rendered straight and **bold**, signaling human architectural intent.

### 2. Strict Grayscale Hierarchy & Exclusive Accents
We ruthlessly eliminate cognitive noise by stripping out the standard "circus" of syntax highlighting.
- **Strict Grayscale**: All syntax, UI badges, status bars, terminal logs, and Git statuses are aggressively desaturated into a strict grayscale hierarchy. Color is completely removed from generic information.
- **Exclusive Accent — Human Intent**: The signature **Hologram Haze (#a78bfa)** purple is used *exclusively* for Human Intent. It only appears in Comments and the Active Editor Cursor.
- **Exclusive Accent — AI Approval**: The **Acid Pistachio (#dfff00)** is used *exclusively* for the Proceed/Approve/Accept Changes action buttons. It signals green-lighting the AI to take action.

### 3. The Cockpit Layout
- The AI Agent chat panel occupies the prominent position on the left.
- The File Explorer is moved to the right.
- The UI is cleaned of unnecessary borders, drop shadows, and noisy status bar elements.

## Installation

1. Close your IDE if it is currently open.
2. Run the installation script in the root of this repository:
   ```bash
   bash install.sh
   ```
3. Open your IDE.
4. Open the Command Palette (`Cmd+Shift+P`) and search/run **`Enable Custom CSS and JS`**.
5. Restart your IDE when prompted. (If the layout isn't applied immediately, run **`Reload Custom CSS and JS`** from the Command Palette).
6. A warning may appear saying your installation is corrupt—this is normal because we modify core UI files to achieve this look. Click the gear icon on the notification and select **"Don't Show Again"**.

## Documentation
For research context, design potentials, and syntax test cases, see the [`docs/`](./docs) directory.
