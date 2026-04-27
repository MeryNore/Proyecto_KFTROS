const navbar = document.getElementById('navbar');


/* Poner color al navbar cuando scroleas hacia abajo para diferenciarla del contenido*/
window.addEventListener('scroll', () => {
    if (window.scrollY > 50) {
        navbar.classList.add('scrolled');
    } else {
        navbar.classList.remove('scrolled');
    }
});


/**/
document.addEventListener('DOMContentLoaded', function () {
    const menuColapsable = document.getElementById('navbarNav');

    // Evento: Cuando el menú EMPIEZA a desplegarse
    menuColapsable.addEventListener('show.bs.collapse', function () {
        navbar.classList.remove('bg-transparent');
        navbar.classList.add('bg-dark');
    });

    // Evento: Cuando el menú TERMINA de cerrarse
    menuColapsable.addEventListener('hidden.bs.collapse', function () {
        // Comprobamos si estamos en la parte superior de la página
        // (Para no quitar el bg-dark si el usuario ya hizo scroll hacia abajo)
        if (window.scrollY === 0) {
            navbar.classList.remove('bg-dark');
            navbar.classList.add('bg-transparent');
        }
    });
});