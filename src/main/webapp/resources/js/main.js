const toggleBtn = document.querySelector('.navbar__toogleBtn');
const menu = document.querySelector('.navbar__menu');
const search = document.querySelector('.navbar__search');

toggleBtn.addEventListener('click', () => {
    menu.classList.toggle('active');
    search.classList.toggle('active');
});