# Plantilla para escribir tesis en LaTeX (tesis-uchile2)

Esta plantilla es uno de los resultados de mi propia tesis y está diseñada de acuerdo a los requerimientos de la Universidad de Chile para presentar los trabajos de tesis. 

Este trabajo se basa en la plantilla que aparece en https://github.com/rduenasf/template-tesis-uchile y que fue diseñada por Rodrigo Dueñas.

La idea de este trabajo es simplificar la tarea a otros tesistas de modo que se concentren en el contenido y no en pasar en constantes combates con Latex. Este repositorio se puede descargar en zip y editar directamente.

En esta plantilla incluyo:
* Todos los paquetes de uso frecuente para insertar ecuaciones, tablas, imágenes, diagramas vectorizados, etc.
* Algunos paquetes y tipografías comerciales que utilicé en mi tesis (aparecen desactivados para que esta plantilla se pueda usar en cualquier computador con Latex)
* Ejemplos de cómo insertar tablas, imágenes, notas al pie, comentarios, etc y cómo citar papers o libros en Latex

Como complemento a esta plantilla también subí un manual express de Latex (revisado) en base a las guías que hice para mis ayudantías: https://github.com/pachamaltese/tutorial-express-latex

Visit [http://pachamaltese.github.io](http://pachamaltese.github.io)

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.

![alt text](http://mirrors.creativecommons.org/presskit/buttons/88x31/png/by-nc-sa.png "Under Creative Commons license")

# LaTeX vs R Markdown

Si generas el documento desde Markdown, el archivo Rmd tiene la opción de exportar a un archivo tex activada.
Para que se muestre la bibliografía, debes compilar el archivo tex generado con la opción pdflatex + bibtex + pdflatex.
