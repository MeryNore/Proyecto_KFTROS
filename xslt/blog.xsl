<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
                <title>KFTROS - Blog</title>
                <!-- Bootstrap CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
                <!-- Font Awesome CSS -->
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
                <!-- ESTILOS CSS -->
                <link href="../css/estilos.css" rel="stylesheet"/>
            </head>
            <body>9
                <!-- Navbar -->
                <header>
                    <nav class="navbar navbar-expand-lg navbar-dark bg-dark text-white shadow-lg fixed-top">
                        <div class="container-fluid">
                            <a class="navbar-brand fw-bold fs-3" href="../index.html">KFTROS</a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarNav">
                                <ul class="navbar-nav ms-auto">
                                    <li class="nav-item">
                                        <a class="nav-link fs-5" href="../index.html">Inicio</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link fs-5" href="../xml/nosotros.xml">Nosotros</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link fs-5" href="../xml/productos.xml">Productos</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link active fs-5" aria-current="page" href="../xml/blog_cafe.xml">Blog</a>
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
                <main>
                    <!-- Sección de introducción -->
                    <div class="container my-5">
                        <div class="text-center mb-5 pt-5 pb-3">
                            <h1 class="fw-bold fs-1">
                                <i class="fa-solid fa-blog"></i>
                                Nuestro Blog
                            </h1>
                            <p class="text-muted fs-5">- Historias, técnicas y pasión por el buen café -</p>
                        </div>
                    </div>

                    <!-- SECCIÓN DE ARTÍCULOS -->
                    <div class="container my-5">
                        <!-- Datos generados desde el XML -->
                        <div class="row g-4">
                            <xsl:for-each select="blog_cafe/articulo">
                                <div class="col-12">
                                    <div class="card border-1 shadow-sm overflow-hidden rounded-4 card-hover h-100">
                                        <div class="row g-0 h-100">
                                            <!-- Imagen del artículo -->
                                            <div class="col-12 col-md-4 col-lg-6">
                                                <img class="blog-card-img" src="{imagen}" alt="{titulo}"/>
                                            </div>
                                            
                                            <div class="col-12 col-md-8 col-lg-6">
                                                <div class="card-body d-flex flex-column h-100 p-4 p-md-5">
                                                    <!-- Categoría -->
                                                    <div class="mb-2">
                                                        <span class="badge bg-warning text-dark fw-bold px-3 py-2">
                                                            <i class="fas fa-tag me-1"></i>
                                                            <xsl:value-of select="categoria"/>
                                                        </span>
                                                    </div>
                                                    
                                                    <!-- Título -->
                                                    <h4 class="card-title fw-bold mb-3">
                                                        <xsl:value-of select="titulo"/>
                                                    </h4>
                                                    
                                                    <!-- Meta información -->
                                                    <div class="d-flex gap-3 mb-4 text-muted small">
                                                        <span>
                                                            <i class="fas fa-user me-1"></i>
                                                            <xsl:value-of select="autor"/>
                                                        </span>
                                                        <span>|</span>
                                                        <span>
                                                            <i class="fas fa-calendar me-1"></i>
                                                            <xsl:value-of select="fecha"/>
                                                        </span>
                                                    </div>
                                                    
                                                    <!-- Resumen -->
                                                    <p class="card-text text-muted mb-4">
                                                        <xsl:value-of select="resumen"/>
                                                    </p>
                                                    
                                                    <!-- Etiquetas -->
                                                    <div class="mb-3">
                                                        <xsl:for-each select="etiquetas/etiqueta">
                                                            <span class="badge bg-light text-dark me-2 mb-1 border py-2">
                                                                #<xsl:value-of select="."/>
                                                            </span>
                                                        </xsl:for-each>
                                                    </div>
                                                    
                                                    <!-- Botón leer más -->
                                                    <a href="#" class="btn btn-outline-warning fw-bold align-self-start">
                                                        <i class="fas fa-arrow-right me-2"></i>Leer más
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </xsl:for-each>
                        </div>
                    </div>

                    <!-- CTA -->
                    <div class="container-fluid">
                        <div class="text-center rounded-3">
                            <i class="fas fa-pen-fancy mt-4 mb-3 d-block" style="font-size: 4rem;"></i>
                            <h1 class="mb-3">¿Tienes una historia cafetera?</h1>
                            <p class="col-lg-8 mx-auto fs-5">
                                Nos encantaría conocer tus experiencias, recetas y descubrimientos en el mundo del café. Contáctanos para colaborar en el blog.
                            </p>
                            <div class="d-inline-flex gap-2 mb-5 flex-wrap justify-content-center">
                                <a href="../views/contacto.html" class="d-inline-flex align-items-center btn btn-warning btn-lg px-4 rounded-pill text-dark" type="button">
                                    Comparte tu historia
                                    <i class="fas fa-arrow-right ms-2"></i>
                                </a>
                                <a href="../index.html" class="btn btn-outline-dark btn-lg px-4 rounded-pill" type="button">
                                    Volver al inicio
                                </a>
                            </div>
                        </div>
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
                                    <li><a href="../index.html" class="text-white-50 text-decoration-none">Inicio</a></li>
                                    <li><a href="../xml/nosotros.xml" class="text-white-50 text-decoration-none">Nosotros</a></li>
                                    <li><a href="../xml/productos.xml" class="text-white-50 text-decoration-none">Productos</a></li>
                                    <li><a href="../xml/blog_cafe.xml" class="text-white-50 text-decoration-none">Blog</a></li>
                                    <li><a href="../views/contacto.html" class="text-white-50 text-decoration-none">Contacto</a></li>
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