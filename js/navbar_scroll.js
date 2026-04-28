/* Este script está diseñado para controlar el background de nuestra barra de navegación en distintos
escenarios, para que no se mezcle con el contenido del resto de la web al hacer scroll o al desplegarla
en pantallas más pequeñas */


const navbar = document.getElementById('navbar');

/* Poner color al navbar cuando scroleas hacia abajo para diferenciarla del contenido (SOLO PARA EL INDEX)*/
window.addEventListener('scroll', () => {
    if (window.scrollY > 50) {
        navbar.classList.add('scrolled');
    } else {
        navbar.classList.remove('scrolled');
    }
});


/* Poner color a la navbar cuando despliega en formato movil para que se diferencie del contenido*/
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