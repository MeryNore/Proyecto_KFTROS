<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
                <title>KFTROS - Nosotros</title>
                <!-- Bootstrap CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
                <!-- Font Awesome CSS -->
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
                <!-- ESTILOS CSS -->
                <link href="../css/estilos.css" rel="stylesheet"/>
            </head>
            <body>
                <!-- Navbar -->
                <header>
                    <nav class="navbar navbar-expand-lg navbar-dark bg-dark text-white">
                        <div class="container-fluid">
                            <a class="navbar-brand fw-bold fs-3" href="/">KFTROS</a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarNav">
                                <ul class="navbar-nav ms-auto">
                                    <li class="nav-item">
                                        <a class="nav-link active fs-5" aria-current="page" href="/">Inicio</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link fs-5" href="../xml/nosotros.xml">Nosotros</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link fs-5" href="../xml/productos.xml">Productos</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link fs-5" href="../xml/blog_cafe.xml">Blog</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link fs-5" href="../views/contacto.html">Contacto</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </header>
                
                <!-- Main -->
                <main class="min-vh-100">
                    
                    <!-- Nuestra historia -->
                    <div class="container py-5 mt-5">
                        <section class="row">
                            <div class="col-md-6 text-center align-self-center">
                                <h1>Nuestra historia</h1>
                                <p class="lead text-muted">- Más allá de una simple taza -</p>
                                <p>
                                    En KFTROS, creemos que el café es mucho más que una dosis de cafeína para sobrevivir a las mañanas. Para nosotros, es un viaje fascinante que conecta el esfuerzo de familias productoras a miles de kilómetros con el momento exacto en el que das el primer sorbo en tu casa.
                                    Nuestra aventura comenzó con una revelación simple pero poderosa: el café no debería saber a quemado.
                                    Cansados del café comercial y oscuro que oculta los verdaderos sabores del grano, decidimos adentrarnos en el mundo del café de especialidad. Queríamos descubrir las notas florales de un lavado de Etiopía, la dulzura acaramelada de un origen colombiano y la complejidad de un proceso natural. Y lo más importante: queríamos compartir ese descubrimiento contigo.
                                </p>
                            </div>
                            <div class="col-md-6 text-center">
                                <img src="../assets/images/nosotros.jpg" alt="Nuestra historia" class="img-fluid rounded w-50"></img>
                            </div>
                        </section>
                    </div>
                    
                    <!-- Nuestro equipo -->
                    <div class="container-fluid p-5 mt-5 bg-dark text-white">
                        <section class="row">
                            <!-- carrucel de miembros del equipo -->
                            <div class="col-md-6 mt-4">
                                <div id="carouselEquipo" class="carousel carousel-dark slide">
                                    <div class="carousel-indicators">
                                        <xsl:for-each select="//persona">
                                            <xsl:variable name="pos" select="position() - 1"/>
                                            <button type="button" data-bs-target="#carouselEquipo" data-bs-slide-to="{$pos}">
                                                <xsl:if test="position() = 1">
                                                    <xsl:attribute name="class">active</xsl:attribute>
                                                    <xsl:attribute name="aria-current">true</xsl:attribute>
                                                </xsl:if>
                                                <xsl:attribute name="aria-label">Slide <xsl:value-of select="position()"/></xsl:attribute>
                                            </button>
                                        </xsl:for-each>
                                    </div>
                                    <div class="carousel-inner">
                                        <xsl:for-each select="//persona">
                                            <div class="carousel-item" data-bs-interval="5000">
                                                <xsl:if test="position() = 1">
                                                    <xsl:attribute name="class">carousel-item active</xsl:attribute>
                                                </xsl:if>
                                                <img src="{imagen}" class="d-block w-100" alt="Miembro del equipo"/>
                                                <div class="carousel-caption d-md-block bg-dark bg-opacity-75 p-4 rounded text-white text-opacity-75">
                                                    <h5>
                                                        <xsl:value-of select="datos_personales/nombre_completo/nombre"/>
                                                        <xsl:text> </xsl:text>
                                                        <xsl:value-of select="datos_personales/nombre_completo/apellido1"/>
                                                    </h5>
                                                    <p class="mb-2">
                                                        <strong><xsl:value-of select="datos_empresa/puesto"/></strong>
                                                    </p>
                                                    <p class="mb-2">
                                                        <small>Departamento: <xsl:value-of select="datos_empresa/departamento"/></small>
                                                    </p>
                                                    <p class="mb-0">
                                                        <small>
                                                            <i class="fas fa-envelope mx-1"></i> <xsl:value-of select="datos_personales/email"/>
                                                        </small>
                                                    </p>
                                                </div>
                                            </div>
                                        </xsl:for-each>
                                    </div>
                                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselEquipo" data-bs-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Previous</span>
                                    </button>
                                    <button class="carousel-control-next" type="button" data-bs-target="#carouselEquipo" data-bs-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Next</span>
                                    </button>
                                </div>
                            </div>
                            
                            <div class="col-md-6 align-self-center">
                                <h1>Nuestro equipo</h1>
                                <p class="lead">- Conoce a los profesionales detrás de tu café favorito -</p>
                                <p>
                                    En KFTROS, nuestro equipo es el corazón de nuestra misión. Cada miembro aporta su pasión, experiencia y dedicación para ofrecerte el mejor café de especialidad. Desde los baristas que perfeccionan cada taza hasta los expertos en selección de granos que viajan por el mundo en busca de los mejores orígenes, nuestro equipo trabaja con un solo objetivo: brindarte una experiencia cafetera excepcional.
                                </p>
                            </div>
                        </section>
                    </div>

                </main>
                    
                <!-- Footer -->
                <footer class="bg-dark text-white py-4 mt-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <h5>KFTROS</h5>
                                <p>Tu fuente de café de especialidad de calidad superior.</p>
                            </div>
                            <div class="col-md-4">
                                <h5>Enlaces Rápidos</h5>
                                <ul class="list-unstyled">
                                    <li><a href="/" class="text-white-50 text-decoration-none">Inicio</a></li>
                                    <li><a href="/xml/nosotros.xml" class="text-white-50 text-decoration-none">Nosotros</a></li>
                                    <li><a href="/xml/productos.xml" class="text-white-50 text-decoration-none">Productos</a></li>
                                    <li><a href="/xml/blog_cafe.xml" class="text-white-50 text-decoration-none">Blog</a></li>
                                    <li><a href="/views/contacto.html" class="text-white-50 text-decoration-none">Contacto</a></li>
                                </ul>
                            </div>
                            <div class="col-md-4">
                                <h5>Contacto</h5>
                                <p class="mb-1">Email: info@kftros.com</p>
                                <p class="mb-1">Teléfono: +34 942 123 456</p>
                                <p>Síguenos en redes sociales</p>
                                <ul class="list-unstyled d-flex gap-3">
                                    <li><a href="#" class="text-white text-decoration-none"><i
                                                class="fa-brands fa-instagram fa-lg"></i></a></li>
                                    <li><a href="#" class="text-white text-decoration-none"><i
                                                class="fa-brands fa-facebook fa-lg"></i></a></li>
                                    <li><a href="#" class="text-white text-decoration-none"><i
                                                class="fa-brands fa-twitter fa-lg"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <hr class="bg-white-50"></hr>
                        <div class="text-center d-flex align-items-center justify-content-center gap-2">
                            <i class="fa-regular fa-copyright"></i>
                            <p class="mb-0">2026 KFTROS. Todos los derechos reservados.</p>
                        </div>
                    </div>
                </footer>
                    
                    
                <!-- Bootstrap JS -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>