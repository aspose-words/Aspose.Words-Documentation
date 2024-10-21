---
title: Trabajar con SmartArt Renderizado en frío en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con SmartArt Renderizado en frío
linktitle: Trabajar con SmartArt Renderizado en frío
type: docs
description: "Aspose.Words para C++ realiza SmartArt Renderizado en frío, lo que significa que presenta y renderiza SmartArt objetos si falta el dibujo SmartArt renderizado previamente o es incorrecto."
weight: 330
url: /es/cpp/working-with-smartart-cold-rendering/
---

Los gráficos SmartArt se utilizan para crear rápida y fácilmente una representación visual de la información. Simplemente elija entre una gran cantidad de diseños que mejor se adapten a su situación. Esta facilidad de uso hace que los gráficos SmartArt sean bastante populares para algunos propósitos.

Microsoft Word genera y guarda el dibujo renderizado previamente junto con el objeto `SmartArt`. En la mayoría de los casos, el dibujo preprocesado se procesa bien con Aspose.Words y no se requieren acciones adicionales. Sin embargo, si el documento es guardado por otras aplicaciones, es posible que falte el dibujo SmartArt renderizado previamente o que sea incorrecto. En este caso, el objeto `SmartArt` en sí mismo debe diseñarse y renderizarse usando Aspose.Words. A este proceso lo llamamos Renderizado en frío `SmartArt`.

## Usando SmartArt Renderizado en frío

Aspose.Words le permite utilizar un dibujo renderizado previamente o realizar renderizado en frío:

* Si hay disponible un dibujo renderizado previamente, Aspose.Words lo usa para renderizar el objeto `SmartArt`.
* Si falta un dibujo renderizado previamente, Aspose.Words realiza implícitamente un renderizado frío para renderizar el objeto `SmartArt`.
* Si hay un dibujo renderizado previamente presente pero es incorrecto, se requiere realizar un renderizado frío SmartArt explícitamente llamando al método [UpdateSmartArtDrawing](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/updatesmartartdrawing/).

El siguiente ejemplo de código muestra cómo actualizar dibujos para todos los diagramas del documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cpp" >}}

## Compatibilidad con diseños estándar SmartArt

Actualmente, solo se admite un número limitado de diseños estándar de Microsoft Word SmartArt. Además, algunos de estos diseños son compatibles parcialmente, lo que significa que se representan nodos y formas significativos del diagrama, pero puede haber diferencias entre Microsoft Word y el diseño del diagrama Aspose.Words.

La siguiente tabla enumera los diseños total y parcialmente compatibles:

| SmartArt Grupo de Diseños | Diseños totalmente compatibles | Diseños parcialmente compatibles |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>Lista de Bloqueo Básica</li><li>Hexágonos Alternos</li><li>Lista de Viñetas Verticales</li><li>Lista de Cajas Verticales</li><li>Lista de Ancho Variable</li><li>Lista de Viñetas Horizontales</li><li>Lista Agrupada</li><li>Lista de Bloqueo Vertical</li><li>Lista de Chevrones Verticales</li><li>Lista de Flechas Verticales</li><li>Lista de Trapecios</li><li>Lista de Tablas</li><li>Lista Piramidal</li><li>Lista de Objetivos</li></ul> | <ul><li>Lista Alineada</li><li>Lista de Soportes Verticales</li><li>Lista de Pestañas</li><li>Lista Apilada</li><li>Lista de Acento Vertical</li><li>Lista de Círculos Verticales</li></ul> |
| `Process` | <ul><li>Proceso Básico</li><li>Proceso de Acento</li><li>Proceso de Bloque Continuo</li><li>Proceso de Flecha Creciente</li><li>Texto Convergente</li><li>Cronología Básica</li><li>Proceso Básico de Chevron</li><li>Proceso de Acento Chevron</li><li>Proceso Chevron Cerrado</li><li>Lista de Chevrones</li><li>Proceso Vertical</li><li>Proceso Escalonado</li><li>Lista de Procesos</li><li>Proceso Básico de Doblado</li><li>Proceso de Doblado Repetido</li><li>Proceso Detallado</li><li>Flecha hacia Arriba</li><li>Proceso Descendente</li><li>Proceso de Doblado Circular</li></ul> | <ul><li>Intensificar el Proceso</li><li>Proceso de Reducción</li><li>Flujo Alterno</li><li>Proceso de Círculo Creciente</li><li>Proceso Pie</li><li>Proceso de Bloques Interconectados</li><li>Flechas de Proceso</li><li>Cronología del Acento Circular</li><li>Proceso Circular</li><li>Proceso de Subetapa</li><li>Proceso Por Fases</li><li>Proceso Aleatorio al Resultado</li><li>Proceso de Flecha Circular</li></ul> |
| `Cycle` |–| <ul><li>Ciclo Segmentado</li><li>Radial Hexagonal</li></ul> |
| `Hierarchy` |–| <ul><li>Jerarquía de Tablas</li><li>Diseño de Arquitectura</li></ul> |
| `Relationship` | <ul><li>Saldo</li><li>Embudo</li><li>Engranaje</li><li>Más Y Menos</li><li>Cinta de Flecha</li><li>Flechas de Contrapeso</li><li>Flechas Opuestas</li><li>Objetivo Anidado</li><li>Objetivo Básico</li><li>Pastel Básico</li><li>Venn Básico</li><li>Venn Apilado</li><li>Anillo Interconectado</li></ul> | <ul><li>Relación de Círculo</li><li>Ideas Opuestas</li><li>Ecuación</li><li>Ecuación Vertical</li><li>Venn Lineal</li></ul> |
| `Matrix` | <ul><li>Matriz Básica</li><li>Matriz titulada</li><li>Matriz de Cuadrícula</li><li>Matriz de Ciclos</li></ul> |–|
| `Pyramid` |–| <ul><li>Pirámide Segmentada</li></ul> |

## Comparación del renderizado SmartArt en Aspose.Words y Microsoft

La siguiente tabla muestra imágenes de ejemplo de Aspose.Words Representación en frío de algunos diseños estándar en comparación con la salida de Microsoft Word:

|| **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |
