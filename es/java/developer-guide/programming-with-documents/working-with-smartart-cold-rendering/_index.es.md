---
title: Trabajar con Smart Art Cold Rendering in Java
second_title: Aspose.Words para Java
articleTitle: Trabajar con Smart Art Cold Rendering
linktitle: Trabajar con Smart Art Cold Rendering
type: docs
description: "Aspose.Words para Java ejecuta Smart Art Cold Rendering, lo que significa que pone y renderiza objetos SmartArt si el dibujo SmartArt pre-rendered está desaparecido o incorrecto."
weight: 330
url: /es/java/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

Los gráficos SmartArt se utilizan para crear rápidamente y fácilmente una representación visual de la información. Simplemente eliges un gran número de diseños que mejor se adapten a tu situación. Esta facilidad de uso hace que los gráficos SmartArt sean muy populares para algunos propósitos.

Microsoft Word genera y salva el dibujo pre-rendered junto con el `SmartArt` objeto. En la mayoría de los casos, el dibujo pre-rendered se hace bien por Aspose.Words y no se requieren medidas adicionales. Sin embargo, si el documento es guardado por otras aplicaciones, el dibujo SmartArt pre-rendered puede estar desaparecido o incorrecto. En este caso, el `SmartArt` objeto en sí mismo debe ser puesto y se debe Aspose.Words. Llamamos a este proceso `SmartArt` Cold Rendering.

## Usando Smart Art Cold Rendering

Aspose.Words permite utilizar un dibujo pre-rendered o realizar renderizado frío:

* Si hay un dibujo pre-rendered disponible, Aspose.Words lo usa para renderizar `SmartArt` objeto.
* Si falta el dibujo pre-rendered, Aspose.Words realiza implícitamente la renderización fría para hacer el `SmartArt` objeto.
* Si un dibujo pre-rendered está presente pero es incorrecto, es necesario realizar el renderizado en frío de SmartArt explícitamente llamando [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing) método.

El siguiente ejemplo de código muestra cómo actualizar los dibujos para todos los diagramas del documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## Soporte para diseños estándar SmartArt

Actualmente, sólo un número limitado de normas Microsoft Word Se admiten diseños SmartArt. Además, algunos de estos diseños se soportan parcialmente, lo que significa que se hacen nodos y formas significativas del diagrama, pero puede haber diferencias entre Microsoft Word y Aspose.Words diseño del diagrama.

En el cuadro que figura a continuación se enumeran los diseños totalmente y parcialmente compatibles:

|  Smart Diseños de arte Group |  Diseños totalmente compatibles |  Disposiciones parcialmente soportadas |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Lista básica</li><li>Hexágonos suplementarios</li><li>Lista de Balas verticales</li><li>Lista de cajas verticales</li><li>Varying Width List</li><li>Lista de Balas horizontales</li><li>Grouped List</li><li>Lista vertical de bloques</li><li>Lista de Chevron vertical</li><li>Lista de flechas verticales</li><li>Trapezoid List</li><li>Lista de cuadros</li><li>Lista de pirámides</li><li>Lista de objetivos</li></ul> |  <ul><li>Lista de líneas</li><li>Lista vertical de bolsillo</li><li>Lista de pestañas</li><li>Lista apilada</li><li>Lista de Accent vertical</li><li>Lista de círculos verticales</li></ul> |
|  `Process`  |  <ul><li>Proceso básico</li><li>Proceso de Accent</li><li>Proceso de bloque continuo</li><li>Aumento del proceso de flecha</li><li>Texto convergente</li><li>Calendario básico</li><li>Proceso básico de Chevron</li><li>Proceso de Accent Chevron</li><li>Proceso de Chevron cerrado</li><li>Lista de Chevron</li><li>Proceso vertical</li><li>Proceso acelerado</li><li>Lista de procesos</li><li>Proceso de Bending básico</li><li>Repetición del proceso de Bending</li><li>Proceso detallado</li><li>Hacia arriba</li><li>Proceso de Descenso</li><li>Proceso de Beneficiación Circular</li></ul> |  <ul><li>Paso al proceso</li><li>Paso al proceso</li><li>Flujo de alternancia</li><li>Increasing Circle Process</li><li>Proceso de Pie</li><li>Proceso de bloqueo interconectado</li><li>Flechas de proceso</li><li>Circle Accent Timeline</li><li>Circle Process</li><li>Subproceso</li><li>Proceso gradual</li><li>Proceso aleatorio a resultados</li><li>Circle Arrow Process</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Ciclo segmentado</li><li>Hexagon Radial</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Hierarquía de mesa</li><li>Arquitectura Diseño</li></ul> |
|  `Relationship`  |  <ul><li>Saldo</li><li>embudo</li><li>Gear</li><li>Y menos</li><li>Arrow Ribbon</li><li>Flechas de contrabalance</li><li>Oponer Flechas</li><li>Meta reservada</li><li>Meta básica</li><li>Pie básico</li><li>Basic Venn</li><li>Stacked Venn</li><li>Anillo interconectado</li></ul> |  <ul><li>Circle Relationship</li><li>Opposing Ideas</li><li>Ecuación</li><li>Ecuación vertical</li><li>Veneno lineal</li></ul> |
|  `Matrix`  |  <ul><li>Matriz básica</li><li>Matriz titulada</li><li>Matriz de rejilla</li><li>Matriz de ciclo</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Pirámide segmentada</li></ul> |

## Comparación de SmartArt Rendering Aspose.Words y Microsoft

La tabla siguiente muestra imágenes de ejemplo Aspose.Words Cold Rendering of some standard layouts compared to Microsoft Word Producto:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/>  |
|   **Circular Bending Process**   |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/>  |
|   **Repeating Bending Process**  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/>  |
|   **Trapezoid List**             |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/>  |
