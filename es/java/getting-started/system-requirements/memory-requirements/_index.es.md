---
title: Requisitos de Memoria
second_title: Aspose.Words por Java
articleTitle: Requisitos de Memoria
linktitle: Requisitos de Memoria
description: "¿Cuánta memoria requiere Aspose.Words para Java para trabajar con documentos? Aprende los detalles."
type: docs
weight: 10
url: /es/java/memory-requirements/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words proporciona una amplia gama de funciones para trabajar con documentos en varios formatos. Es importante tener en cuenta que no hay límite en el tamaño máximo de un archivo de documento que Aspose.Words puede procesar o procesar. La única limitación es la cantidad de RAM (memoria) disponible de su lado.

## Cuánta Memoria Necesita Aspose.Words

Por lo general, Aspose.Words necesita varias veces más memoria que el tamaño del documento para crear un modelo del documento en la memoria. Por ejemplo, si el tamaño de su documento es 1 MB, Aspose.Words necesita 10-20 MB de RAM para construir su Modelo de Objetos de documento (DOM) en la memoria. El multiplicador depende del formato porque algunos formatos son más compactos que otros. Por ejemplo, DOCX es más compacto que DOC y RTF, y DOC es más compacto que RTF.

No hay una forma exacta de estimar cuánta memoria Aspose.Words consume realmente durante el procesamiento de un archivo de documento en particular. Como sabrá, Java almacena datos en clases, cada instancia de clase usa algo de memoria para fines internos de JVM (Java máquina virtual). Por lo tanto, cualquier párrafo o texto formateado (incluso si consta de un carácter) requiere memoria adicional después de cargarlo en DOM. Además, el motor del recolector de basura Java utiliza un algoritmo complejo para determinar el mejor momento para realizar una recolección de memoria, lo que dificulta determinar el consumo real de memoria.

## Cómo Calcular la Cantidad de Memoria

Consideremos dos documentos:

1. DOCX "A" documento - 0.35 MB tamaño (2 mil páginas), solo texto
2. DOCX "B" documento - 0.35 MB tamaño (solo 1 página), con PNG imagen dentro

Como sabes, muchos formatos modernos como DOCX, ODT, etc. son simples ZIP archivos. Entonces, obtenemos el siguiente algoritmo de cálculo:
1. Descomprimir. El documento descomprimido "A" tiene un tamaño de 20 MB, el documento "B" tiene un tamaño de 0.4 MB
2. Cargando el documento en el modelo – construyendo su Modelo de Objetos de documento - DOM):
* Crear DOM del primer documento "A" requiere un tamaño de 49 MB
* Crear DOM del segundo documento "B" requiere solo 2 MB de tamaño.
3. Midiendo la cantidad de memoria requerida para procesar estos documentos a PDF. Para esta operación, Aspose.Words requiere:
  *  294 MB para el documento "A"
  * 7 MB para el documento "B"

Entonces, como puede ver, no hay dependencia lineal en el tamaño del documento de entrada. Hay muchos factores que pueden afectar el tamaño RAM requerido: el formato del documento, su complejidad y estructura, la cantidad de imágenes y su formato, y muchos otros factores.

## Cómo Calcular el Multiplicador de Memoria Con Mayor Precisión

Los experimentos con miles de documentos reales muestran que, por lo general, Aspose.Words requiere varias veces más memoria que el tamaño promedio del documento para crear un modelo de documento en la memoria y realizar operaciones simples como conversión entre formatos de flujo, mail merge, analizar, reemplazar, etc. A veces estamos hablando de un multiplicador de 2 y, a veces, de 20.

Operaciones más complejas como renderizar (convertir a formatos de página fijos), actualizar campos, dividir páginas y otras, para algunos documentos requieren 20 veces más recursos que la memoria asignada por el documento cargado en Aspose.Words DOM.

Si los resultados de su perfil indican un posible problema de memoria en Aspose.Words, comuníquese con nuestro [Equipo de Soporte](/words/java/technical-support/) e incluya toda la información de diagnóstico.

## Véase También

* [Renderizado](/words/java/rendering/)
* [Mail Merge y Presentación de Informes](/words/java/mail-merge-and-reporting/)
* [Trabajar con Campos](/words/java/working-with-fields/)
