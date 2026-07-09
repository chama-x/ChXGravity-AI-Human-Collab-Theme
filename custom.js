(function() {
    // VS Code's UI is highly dynamic, so we need a MutationObserver or interval 
    // to catch the "Proceed" button when it gets rendered.
    
    function tagProceedButtons() {
        // Find all elements that might be buttons
        const elements = document.querySelectorAll('.monaco-button, button, [role="button"]');
        
        elements.forEach(el => {
            // Check if the text content starts with 'Proceed' (to account for shortcut spans)
            if (el.textContent.trim().startsWith('Proceed')) {
                if (!el.classList.contains('btn-proceed-custom')) {
                    el.classList.add('btn-proceed-custom');
                }
            }
        });
    }

    // Run tagging on DOM mutations to handle dynamic artifact panels
    const observer = new MutationObserver((mutations) => {
        let shouldRun = false;
        for (let mutation of mutations) {
            if (mutation.addedNodes.length > 0 || mutation.type === 'characterData') {
                shouldRun = true;
                break;
            }
        }
        if (shouldRun) {
            tagProceedButtons();
        }
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
