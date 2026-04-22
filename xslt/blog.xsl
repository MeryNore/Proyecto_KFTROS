<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html> 
            <head>
                <style>
                    body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f4ece1; color: #333; padding: 20px; }
                    h1 { text-align: center; color: #4a3b32; }
                    .grid-container { display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 20px; max-width: 1000px; margin: auto; }
                    .card { background-color: white; border-radius: 8px; padding: 20px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); border-top: 4px solid #c49a6c; }
                    .card-imagen { width: 100%; height: 200px; object-fit: cover; border-radius: 6px; margin-bottom: 15px; }
                    .categoria { font-size: 12px; color: #c49a6c; text-transform: uppercase; font-weight: bold; letter-spacing: 1px; }
                    .titulo { font-size: 1.2em; color: #2c211b; margin: 10px 0; }
                    .meta { font-size: 12px; color: #888; margin-bottom: 15px; }
                    .resumen { line-height: 1.5; color: #555; }
                    .etiquetas { margin-top: 15px; }
                    .etiqueta { display: inline-block; background: #e9e2d5; color: #4a3b32; font-size: 11px; padding: 4px 8px; border-radius: 4px; margin-right: 5px; }
                </style>
            </head>
            <body>
                <h1>☕ El Blog del Café de Especialidad</h1>
                
                <div class="grid-container">
                    <xsl:for-each select="blog_cafe/articulo">
                        <div class="card">
                            <img class="card-imagen" src="../{imagen}" alt="{titulo}"/>
                            <div class="categoria"><xsl:value-of select="categoria"/></div>
                            <h2 class="titulo"><xsl:value-of select="titulo"/></h2>
                            <div class="meta">
                                Por <b><xsl:value-of select="autor"/></b> el <xsl:value-of select="fecha"/>
                            </div>
                            <p class="resumen"><xsl:value-of select="resumen"/></p>
                            
                            <div class="etiquetas">
                                <xsl:for-each select="etiquetas/etiqueta">
                                    <span class="etiqueta"><xsl:value-of select="."/></span>
                                </xsl:for-each>
                            </div>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>