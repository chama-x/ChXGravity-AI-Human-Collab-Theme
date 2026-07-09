# Ch X Gravity — Intent Syntax Showcase

This artifact is designed to showcase the complete bimodal syntax highlighting system. Use this to verify that all code syntax is completely grayscale, italicized, and muted, while comments stand up straight, bold, and glow in soft Hologram Haze purple.

````carousel
```python
# ==========================================
# 1. PYTHON BLUEPRINT SHOWCASE
# ==========================================
# Comments are bold, straight, and purple.
# They are the sole focus of the architecture.

import math

class GravitySimulator:
    def __init__(self, mass: float):
        # Initialize simulation physics
        self.mass = mass
        self.gravity_constant = 6.6743e-11 # DIM DATA PAYLOAD

    def calculate_pull(self, distance: float) -> float:
        # Pull calculation logic
        if distance <= 0:
            return 0.0 # Plumbing (if/return) is dark italic
        
        force = (self.gravity_constant * self.mass) / (distance ** 2)
        return force # Connective variables are medium gray
```
<!-- slide -->
```javascript
// ==========================================
// 2. JAVASCRIPT / DOM BLUEPRINT SHOWCASE
// ==========================================
// DOM objects and variables are caught in grayscale.
// No blue leaks are allowed here.

(function() {
    const selector = '.btn-proceed-custom';
    const elements = document.querySelectorAll(selector);

    elements.forEach((element) => {
        // Highlight active keys on click
        element.addEventListener('click', (event) => {
            console.log('Gravity sequence initiated.');
            element.classList.add('active');
        });
    });
})();
```
<!-- slide -->
```css
/* ==========================================
   3. CSS STYLING BLUEPRINT SHOWCASE
   ==========================================
   Pseudo-elements, pseudo-classes, and hex colors 
   are strictly grayscaled. Only this header glows. */

.btn-proceed-custom {
    background-color: #c4f042 !important; /* LIME GREEN ACCENT */
    color: #141414 !important;
    font-family: "Nunito", sans-serif !important;
    font-weight: 600 !important;
}

/* Pseudo-elements and classes are gray selectors */
.btn-proceed-custom::selection {
    background-color: rgba(255, 255, 255, 0.15);
}

.btn-proceed-custom:hover {
    background-color: #d9fb62 !important; /* DIM HOVER HEX */
}
```
<!-- slide -->
```json
{
  "//": "==========================================",
  "//": "4. JSON CONFIGURATION SHOWCASE",
  "//": "==========================================",
  "watermark.branding": {
    "name": "Ch X Gravity",
    "theme": "Intent-Grayscale",
    "version": 2.1,
    "active": true
  }
}
```
````

### Summary of Grayscale Hierarchy (All Italic)
- **#4a4a4a (Dim Gray):** Strings, numbers, and hex colors (e.g., `#a78bfa`, `6.6743e-11`, `"Nunito"`).
- **#5a5a5a (Dark Gray):** Plumbing keywords (e.g., `import`, `def`, `class`, `if`, `return`, `const`, `function`).
- **#6c6c6c (Medium-Dark Gray):** Variables, punctuation, and constants (e.g., `self.mass`, `elements`, `rgba`).
- **#7d7d7d (Medium-Light Gray):** Attributes and dictionary/JSON keys (e.g., `"watermark.branding"`, `mass: float`).
- **#909090 (Light Gray, Bold Italic):** Classes, functions, selectors, and tags (e.g., `GravitySimulator`, `calculate_pull`, `.btn-proceed-custom`, `::selection`).

### The Accent (Straight & Bold)
- **#a695d6 (Soft Hologram Haze):** Comments and docstrings. No italics. Absolute visual dominance.
