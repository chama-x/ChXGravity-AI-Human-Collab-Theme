# Blueprint: Unlocking Elite Potentials with Custom CSS

Enabling custom CSS injection in Antigravity IDE converts your workspace from a static application into a **fully programmable design canvas**. By leveraging CSS selector overrides, we can purposefully implement advanced visual ergonomics that reduce cognitive load and enhance focus.

Below is a collection of elite-level UX improvements you can inject into your [custom.css](file:///Users/chamaththiwanka/.gemini/antigravity-ide/brain/b1ebfa23-3258-4414-b09c-9029ab909c86/scratch/custom.css) to push the human-AI loop experience to the next level.

---

## 1. Visual Focus Anchoring (Neon Cursor & Active Tab Glow)

When context switching between your thoughts, the chat, and the code, your eyes waste microseconds looking for the cursor or finding the active tab. Adding subtle neon glows uses **salience anchoring** to immediately pull your gaze where it belongs.

```css
/* A soft, breathing neon glow around the editing cursor */
.monaco-editor .cursor {
    box-shadow: 0 0 10px rgba(166, 227, 161, 0.8), 
                0 0 20px rgba(166, 227, 161, 0.4) !important;
    transition: box-shadow 0.1s ease !important;
}

/* Accent highlight on the active tab, making it pop without thick borders */
.tab.active {
    box-shadow: inset 0 -2px 0 0 #a6e3a1 !important; /* Sleek underline */
    background-color: rgba(255, 255, 255, 0.02) !important;
}
```

---

## 2. Interactive Micro-Animations (Sidebar Nudge)

Adding tiny, fluid transitions to standard list actions provides positive visual feedback, making the UI feel "alive" and highly premium without introducing distraction.

```css
/* Smooth transition for file explorer rows */
.monaco-list-row {
    transition: background-color 0.2s cubic-bezier(0.25, 0.8, 0.25, 1), 
                padding-left 0.15s ease-out !important;
}

/* Elegant nudge hover effect in the explorer */
.monaco-list-row:hover {
    padding-left: 6px !important;
    background-color: rgba(255, 255, 255, 0.03) !important;
}
```

---

## 3. High-Fidelity Markdown Typography (Agent Responses)

AI agent responses are usually rendered in standard markdown previews with basic styling. We can elevate the typography hierarchy of agent outputs to make reading traces and code analysis much easier on the eyes.

```css
/* Editorial-grade markdown styling for Agent chat logs */
.markdown-body h1, 
.markdown-body h2 {
    font-weight: 700 !important;
    letter-spacing: -0.02em !important;
    color: #cdd6f4 !important;
    margin-top: 1.5em !important;
}

.markdown-body p {
    line-height: 1.7 !important;
    letter-spacing: 0.01em !important;
    color: #a6adc8 !important; /* Softer text color to reduce eye strain */
}

/* Style key blockquotes and notes from the Agent */
.markdown-body blockquote {
    border-left: 4px solid #b4befe !important;
    background-color: rgba(180, 190, 254, 0.03) !important;
    padding: 10px 15px !important;
    border-radius: 4px !important;
}
```

---

## 4. Glassmorphism / Frosted Glass UI (MacOS Acrylic Look)

If you are using a transparent theme, you can apply backdrop filters to create a stunning, frosted-glass effect on your sidebars, letting your desktop wallpaper softly bleed through.

```css
/* Frosted-glass look for sidebars (requires transparent window configurations) */
.monaco-workbench .part.sidebar {
    background-color: rgba(30, 30, 46, 0.7) !important;
    backdrop-filter: blur(20px) !important;
    -webkit-backdrop-filter: blur(20px) !important;
}
```

---

## How to Test and Expand This

1. Open your [custom.css](file:///Users/chamaththiwanka/.gemini/antigravity-ide/brain/b1ebfa23-3258-4414-b09c-9029ab909c86/scratch/custom.css).
2. Paste any of the blocks above into it.
3. Open the Command Palette (`Cmd+Shift+P`) and run: **`Reload Custom CSS and JS`**.
4. The styles will apply instantly!
