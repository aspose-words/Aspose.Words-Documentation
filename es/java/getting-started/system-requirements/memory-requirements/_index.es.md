---
title: Requisitos de memoria
second_title: Aspose.Words para Java
articleTitle: Requisitos de memoria
linktitle: Requisitos de memoria
description: "Cuánto recuerdo hace Aspose.Words para Java ¿necesita trabajar con documentos? Aprenda los detalles."
type: docs
weight: 10
url: /es/java/memory-requirements/
---

Aspose.Words proporciona una amplia gama de características para trabajar con documentos en diversos formatos. Es importante señalar que no hay límite en el tamaño máximo de un archivo de documento que Aspose.Words puede procesar o renderizar. La única limitación es la cantidad de RAM (memoria) disponible en su lado.

## Cuanta memoria Aspose.Words Necesidades

Por lo general Aspose.Words necesita varias veces más memoria que el tamaño del documento para construir un modelo del documento en memoria. Por ejemplo, si su tamaño de documento es de 1 MB, Aspose.Words necesita 10-20 MB de RAM para construir su Document Object Model (G)DOM) en memoria. El multiplicador depende del formato porque algunos formatos son más compactos que otros. Por ejemplo, DOCX es más compacto que DOC y RTF, y DOC es más compacto que RTF.

No hay manera exacta de estimar cuánto memoria Aspose.Words consume realmente durante el procesamiento de cualquier archivo de documento en particular. Como usted puede saber Java almacena datos en clases, cada instancia de clase utiliza memoria para JVM (G)Java máquina virtual) propósitos internos. Así que cualquier párrafo o texto formateado (incluso consiste en un personaje) toma un poco de memoria extra después de cargar en el DOM. Moreover, the Java El motor de recogida de basura utiliza un algoritmo complejo para determinar el mejor momento para realizar una colección de memoria, lo que hace difícil determinar el consumo de memoria real.

## Cómo calcular la cantidad de memoria

Consideremos dos documentos:

1. DOCX "A" documento – 0,35 MB tamaño (2 mil páginas), texto solamente
2. DOCX "B" documento – 0.35 MB tamaño (sólo 1 página), con imagen PNG dentro

Como usted sabe, muchos formatos modernos como DOCX, ODT, etc. son simples archivos ZIP. Así que tenemos el siguiente algoritmo de cálculo:
1. Unzipping. Unzipped document "A" tiene 20 MB tamaño, documento "B" tiene 0,4 MB tamaño
2. Cargar el documento en el modelo (construir su Document Object Model – DOM):
* Creando DOM del primer documento "A" requiere 49 MB de tamaño
* Creando DOM del segundo documento "B" requiere sólo 2 MB de tamaño.
3. Medir la cantidad necesaria de memoria para enviar estos documentos a PDF. Para esta operación, Aspose.Words requiere:
  * 294 MB para el documento "A"
  * 7 MB para el documento "B"

Así que, como puede ver, no hay dependencia lineal del tamaño del documento de entrada. Hay muchos factores que pueden afectar el tamaño de RAM requerido – el formato de documento, su complejidad y estructura, el número de imágenes y su formato, y muchos otros factores.

## Cómo calcular el multiplicador de memoria de manera precisa

Experimentos con miles de documentos reales muestra que típicamente Aspose.Words requiere varias veces más memoria que el tamaño medio de documento para construir un modelo de documento en memoria y realizar operaciones simples como la conversión entre formatos de flujo, mail merge, Parse, reemplazar, etc. A veces estamos hablando de un multiplicador de 2, y a veces 20.

Operaciones más complejas como renderizar (convertir a formatos de página fijos), actualizar campos, página de división y otros, para algunos documentos requieren 20 veces más recursos que la memoria asignada por el documento cargado en Aspose.Words DOM.

Si los resultados de su perfil indican un posible problema de memoria en Aspose.Words, por favor contacte con nosotros [Technical Support](/words/es/java/technical-support/) e incluir toda la información de diagnóstico.

## Vea también

* [Rendering](/words/es/java/rendering/)
* [Mail Merge and Reporting](/words/java/mail-merge-and-reporting/)
* [Working with Fields](/words/es/java/working-with-fields/)