(function() {
    // VS Code's UI is highly dynamic, so we need a MutationObserver or interval 
    // to catch the "Proceed" button when it gets rendered.
    
    function tagProceedButtons() {
        // Find all elements that might be buttons or action links
        const elements = document.querySelectorAll('.monaco-button, button, [role="button"], a.action-label');
        
        elements.forEach(el => {
            // Strip all whitespace and lowercase to handle nested spans or weird formatting
            const text = el.textContent.toLowerCase().replace(/\s+/g, '');
            if (text.includes('proceed') || 
                text.includes('acceptchanges') || 
                text.includes('acceptall')) {
                if (!el.classList.contains('btn-proceed-custom')) {
                    el.classList.add('btn-proceed-custom');
                }
            }
        });
    }

    // Run tagging on DOM mutations to handle dynamic artifact panels
    const observer = new MutationObserver((mutations) => {
        // We'll just run it aggressively on any mutation in the body
        // because VS Code DOM updates can be tricky to filter perfectly.
        tagProceedButtons();
    });

    // Start observing the workbench body
    setTimeout(() => {
        const body = document.querySelector('body');
        if (body) {
            observer.observe(body, { childList: true, subtree: true, characterData: true });
            tagProceedButtons(); // Initial run
        }
    }, 2000);
})();
