<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
                <title>KFTROS - Productos</title>
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
                    <nav class="navbar navbar-expand-lg navbar-dark bg-dark text-white shadow-lg fixed-top">
                        <div class="container-fluid">
                            <a class="navbar-brand fw-bold fs-3" href="../">KFTROS</a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarNav">
                                <ul class="navbar-nav ms-auto">
                                    <li class="nav-item">
                                        <a class="nav-link fs-5" href="../">Inicio</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link fs-5" href="../xml/nosotros.xml">Nosotros</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link active fs-5" aria-current="page" href="../xml/productos.xml">Productos</a>
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
                <main>

                    <!-- SECCIÓN DE CAFÉS -->
                    <div class="container p-5 my-5">
                        <div class="text-center mb-5 pt-4 pb-3">
                            <h2 class="fw-bold fs-1 mb-3">
                                <i class="fa-solid fa-coffee"></i>
                                Cafés de Especialidad
                            </h2>
                            <p class="text-muted fs-5">- Selecciones premium de los mejores orígenes del mundo -</p>
                        </div>
                        <!-- Datos generados desde el XML -->
                        <div class="row g-4">
                            <xsl:for-each select="//cafe/producto">
                                <div class="col-md-6 col-lg-4">
                                    <div class="card border-1 shadow-sm h-100 position-relative">
                                        <div class="card-body">
                                            <div class="row">
                                                <h5 class="col-9 fw-bold mb-3">
                                                    <xsl:value-of select="nombre"/>
                                                </h5>
                                                <xsl:choose>
                                                    <xsl:when test="disponibilidad = 'En stock'">
                                                        <span class="col-3 badge position-absolute top-0 end-0 m-3 bg-success">
                                                            <i class="fas fa-check-circle"></i> En stock
                                                        </span>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <span class="col-3 badge position-absolute top-0 end-0 m-3 bg-danger">
                                                            <i class="fas fa-times-circle"></i> Agotado
                                                        </span>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </div>
                                            <p class="small lh-sm">
                                                <xsl:value-of select="descripcion"/>
                                            </p>
                                            <div class="fs-5 fw-bold text-warning my-3">
                                                <xsl:value-of select="precio"/>€
                                            </div>
                                        </div>
                                        <div class="card-footer bg-white border-0 p-3">
                                            <xsl:choose>
                                                <xsl:when test="disponibilidad = 'En stock'">
                                                    <button class="btn btn-warning fw-bold w-100">
                                                        <i class="fas fa-shopping-cart me-2"></i>Añadir al carrito
                                                    </button>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <button class="btn btn-secondary w-100" disabled="disabled">
                                                        <i class="fas fa-times me-2"></i>Producto agotado
                                                    </button>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </div>
                                    </div>
                                </div>
                            </xsl:for-each>
                        </div>
                    </div>

                    <!-- SECCIÓN DE UTENSILIOS -->
                    <div class="container-fluid p-5 my-5 bg-dark text-white">
                        <div class="container">
                            <div class="text-center mb-5 pt-4 pb-3">
                                <h2 class="fw-bold fs-1 mb-3">
                                    <i class="fa-solid fa-blender"></i>
                                    Utensilios y Accesorios
                                </h2>
                                <p class="fs-5">- Todo lo que necesitas para preparar el café perfecto -</p>
                            </div>
                            <!-- Datos generados desde el XML -->
                            <div class="row g-4">
                                <xsl:for-each select="//utensilios/producto">
                                    <div class="col-md-6 col-lg-4">
                                        <div class="card border-0 shadow-sm h-100 position-relative">
                                            <div class="card-body">
                                                <div class="row">
                                                    <h5 class="col-9 fw-bold mb-3">
                                                        <xsl:value-of select="nombre"/>
                                                    </h5>
                                                    <xsl:choose>
                                                        <xsl:when test="disponibilidad = 'En stock'">
                                                            <span class="col-3 badge position-absolute top-0 end-0 m-3 bg-success">
                                                                <i class="fas fa-check-circle"></i> En stock
                                                            </span>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <span class="col-3 badge position-absolute top-0 end-0 m-3 bg-danger">
                                                                <i class="fas fa-times-circle"></i> Agotado
                                                            </span>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                </div>
                                                <p class="text-muted small lh-sm">
                                                    <xsl:value-of select="descripcion"/>
                                                </p>
                                                <div class="fs-5 fw-bold text-warning my-3">
                                                    <xsl:value-of select="precio"/>€
                                                </div>
                                            </div>
                                            <div class="card-footer bg-white border-0 p-3">
                                                <xsl:choose>
                                                    <xsl:when test="disponibilidad = 'En stock'">
                                                        <button class="btn btn-warning fw-bold w-100">
                                                            <i class="fas fa-shopping-cart me-2"></i>Añadir al carrito
                                                        </button>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <button class="btn btn-secondary w-100" disabled="disabled">
                                                            <i class="fas fa-times me-2"></i>Producto agotado
                                                        </button>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:for-each>
                            </div>
                        </div>
                    </div>

                    <!-- SECCIÓN DE SUSCRIPCIONES -->
                    <div class="container p-5 my-5">
                        <div class="text-center mb-5 pt-4 pb-3">
                            <h2 class="fw-bold fs-1 mb-3">
                                <i class="fa-solid fa-calendar-check"></i>
                                Suscripciones de Café
                            </h2>
                            <p class="text-muted fs-5">- Recibe cafés de especialidad en tu puerta regularmente -</p>
                        </div>
                        <!-- Datos generados desde el XML -->
                        <div class="row g-4">
                            <xsl:for-each select="//suscripciones/producto/suscripciones">
                                <div class="col-md-6">
                                    <div class="card border-1 shadow-sm h-100 position-relative">
                                        <div class="card-body">
                                            <div class="row">
                                                <h5 class="col-9 fw-bold mb-3">
                                                    <xsl:value-of select="nombre"/>
                                                </h5>
                                                <xsl:choose>
                                                    <xsl:when test="disponibilidad = 'En stock'">
                                                        <span class="col-3 badge position-absolute top-0 end-0 m-3 bg-success">
                                                            <i class="fas fa-check-circle"></i> Disponible
                                                        </span>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <span class="col-3 badge position-absolute top-0 end-0 m-3 bg-danger">
                                                            <i class="fas fa-times-circle"></i> No disponible
                                                        </span>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </div>
                                            <p class="text-muted small lh-sm">
                                                <xsl:value-of select="descripcion"/>
                                            </p>
                                            <div class="fs-5 fw-bold text-warning my-3">
                                                <xsl:value-of select="precio"/>€
                                            </div>
                                        </div>
                                        <div class="card-footer bg-white border-0 p-3">
                                            <xsl:choose>
                                                <xsl:when test="disponibilidad = 'En stock'">
                                                    <button class="btn btn-warning fw-bold w-100">
                                                        <i class="fas fa-gift me-2"></i>Suscribirse ahora
                                                    </button>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <button class="btn btn-secondary w-100" disabled="disabled">
                                                        <i class="fas fa-times me-2"></i>No disponible
                                                    </button>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </div>
                                    </div>
                                </div>
                            </xsl:for-each>
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
                                    <li><a href="../" class="text-white-50 text-decoration-none">Inicio</a></li>
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
