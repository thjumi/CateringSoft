     document.querySelectorAll('.faq-item strong').forEach((question) => {
        question.addEventListener('click', () => {
            const parent = question.parentElement;
            parent.classList.toggle('open');
        });
    });

// menú hamburguesa
const hamburger = document.getElementById('hamburger');
        const navMenu = document.getElementById('nav-menu');

        hamburger.addEventListener('click', () => {
            navMenu.classList.toggle('active');
        });
