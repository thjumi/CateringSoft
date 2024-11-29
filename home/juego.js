     document.querySelectorAll('.faq-item strong').forEach((question) => {
        question.addEventListener('click', () => {
            const parent = question.parentElement;
            parent.classList.toggle('open');
        });
    });

