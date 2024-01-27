---
title: Trabajar con SmartArt Cold Rendering en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con renderizado en frío SmartArt
linktitle: Trabajar con renderizado en frío SmartArt
description: "Introducción a las formas SmartArt usando C#."
type: docs
description: "Aspose.Words para .NET realiza SmartArt Cold Rendering, lo que significa que diseña y representa objetos SmartArt si el dibujo SmartArt pre-renderizado falta o es incorrecto usando C#."
weight: 330
url: /es/net/working-with-smartart-cold-rendering/
---

Los gráficos SmartArt se utilizan para crear rápida y fácilmente una representación visual de información. Simplemente elige entre una gran cantidad de diseños el que mejor se adapte a tu situación. Esta facilidad de uso hace que los gráficos SmartArt sean bastante populares para algunos propósitos.

Microsoft Word genera y guarda el dibujo pre-renderizado junto con el objeto `SmartArt`. En la mayoría de los casos, el dibujo pre-renderizado se representa bien mediante Aspose.Words y no se requieren acciones adicionales. Sin embargo, si otras aplicaciones guardan el documento, es posible que el dibujo SmartArt pre-renderizado falte o sea incorrecto. En este caso, el objeto `SmartArt` en sí debe diseñarse y representarse utilizando Aspose.Words. A este proceso lo llamamos `SmartArt` Cold Rendering.

## Uso del renderizado en frío SmartArt

Aspose.Words le permite utilizar un dibujo prerenderizado o realizar un renderizado en frío:

* Si hay un dibujo prerenderizado disponible, Aspose.Words lo usa para representar el objeto `SmartArt`.
* Si falta un dibujo pre-renderizado, Aspose.Words realiza implícitamente un renderizado en frío para renderizar el objeto `SmartArt`.
* Si hay un dibujo prerenderizado pero es incorrecto, es necesario realizar el renderizado en frío SmartArt explícitamente llamando al método [UpdateSmartArtDrawing](https://reference.aspose.com/words/net/aspose.words.drawing/shape/updatesmartartdrawing/).

El siguiente ejemplo de código muestra cómo actualizar dibujos para todos los diagramas del documento:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cs" >}}

## Soporte para diseños SmartArt estándar

Actualmente, sólo se admite un número limitado de diseños estándar Microsoft Word SmartArt. Además, algunos de estos diseños son parcialmente compatibles, lo que significa que se representan nodos y formas importantes del diagrama, pero puede haber diferencias entre el diseño del diagrama Microsoft Word y Aspose.Words.

La siguiente tabla enumera los diseños total y parcialmente compatibles:

|  Grupo de diseños SmartArt |  Diseños totalmente compatibles |  Diseños parcialmente compatibles |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Lista de bloqueo básica</li><li>Hexágonos alternos</li><li>Lista de viñetas verticales</li><li>Lista de cuadros verticales</li><li>Lista de ancho variable</li><li>Lista de viñetas horizontales</li><li>Lista agrupada</li><li>Lista de bloqueo vertical</li><li>Lista de galones verticales</li><li>Lista de flechas verticales</li><li>Lista trapezoidal</li><li>Lista de tablas</li><li>Lista de pirámides</li><li>Lista de objetivos</li></ul> |  <ul><li>Lista rayada</li><li>Lista de soportes verticales</li><li>Lista de pestañas</li><li>Lista apilada</li><li>Lista de acentos verticales</li><li>Lista de círculos verticales</li></ul> |
|  `Process`  |  <ul><li>Proceso Básico</li><li>Proceso de acento</li><li>Proceso de bloque continuo</li><li>Proceso de flecha creciente</li><li>Texto convergente</li><li>Línea de tiempo básica</li><li>Proceso básico de Chevron</li><li>Proceso de acento Chevron</li><li>Proceso cerrado de Chevron</li><li>Lista de galones</li><li>Proceso vertical</li><li>Proceso escalonado</li><li>Lista de procesos</li><li>Proceso de doblado básico</li><li>Repetir el proceso de doblado</li><li>Proceso detallado</li><li>Flecha hacia arriba</li><li>Proceso Descendente</li><li>Proceso de doblado circular</li></ul> |  <ul><li>Proceso de intensificación</li><li>Proceso de reducción</li><li>Flujo alterno</li><li>Proceso de círculo creciente</li><li>Proceso de pastel</li><li>Proceso de bloque interconectado</li><li>Flechas de proceso</li><li>Cronología del acento circular</li><li>Proceso circular</li><li>Proceso de subpaso</li><li>Proceso por fases</li><li>Proceso aleatorio a resultado</li><li>Proceso de flecha circular</li></ul> |
|  `Cycle`  |  – |  <ul><li>Ciclo segmentado</li><li>Radial hexagonal</li></ul> |
|  `Hierarchy`  |  – |  <ul><li>Jerarquía de tablas</li><li>Diseño de arquitectura</li></ul> |
|  `Relationship`  |  <ul><li>Balance</li><li>Embudo</li><li>Engranaje</li><li>Más y menos</li><li>Cinta de flecha</li><li>Flechas de contrapeso</li><li>Flechas opuestas</li><li>Objetivo anidado</li><li>Objetivo básico</li><li>Pastel Básico</li><li>venn básico</li><li>Venn apilados</li><li>Anillo interconectado</li></ul> |  <ul><li>Relación circular</li><li>Ideas opuestas</li><li>Ecuación</li><li>Ecuación vertical</li><li>Venn lineal</li></ul> |
|  `Matrix`  |  <ul><li>Matriz básica</li><li>Matriz titulada</li><li>Matriz de cuadrícula</li><li>Matriz de ciclo</li></ul> |  – |
|  `Pyramid`  |  – |  <ul><li>Pirámide segmentada</li></ul> |

## Comparación de renderizado SmartArt en Aspose.Words y Microsoft

La siguiente tabla muestra imágenes de ejemplo de Aspose.Words Cold Rendering de algunos diseños estándar en comparación con la salida de Microsoft Word:

|                                 |  **Aspose.Words** |  **Microsoft Word** |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Basic Process** |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="proceso_basico_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-word.png" alt="palabra_proceso_básica"/> |
|  **Circular Bending Process** |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="proceso_de_flexión_circular_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="palabra_proceso_de_flexión_circular"/> |
|  **Repeating Bending Process** |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
|  **Trapezoid List** |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="palabra_lista_trapezoide"/> |
