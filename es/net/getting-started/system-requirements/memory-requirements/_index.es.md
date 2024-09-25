---
title: Requisitos de memoria
second_title: Aspose.Words para .NET
articleTitle: Requisitos de memoria
linktitle: Requisitos de memoria
description: "¿Cuánta memoria requiere Aspose.Words para .NET para trabajar con documentos? Conozca los detalles."
type: docs
weight: 10
url: /es/net/memory-requirements/
---

Aspose.Words proporciona una amplia gama de funciones para trabajar con documentos en varios formatos. Es importante tener en cuenta que no existe límite en el tamaño máximo de un archivo de documento que Aspose.Words puede procesar o representar. La única limitación es la cantidad de RAM (memoria) disponible de tu lado.

## Cuánta memoria necesita Aspose.Words

Por lo general, Aspose.Words necesita varias veces más memoria que el tamaño del documento para construir un modelo del documento en la memoria. Por ejemplo, si el tamaño de su documento es 1 MB, Aspose.Words necesita entre 10 y 20 MB de RAM para construir su modelo de objetos de documento (DOM) en la memoria. El multiplicador depende del formato porque algunos formatos son más compactos que otros. Por ejemplo, DOCX es más compacto que DOC y RTF, y DOC es más compacto que RTF.

No existe una forma exacta de estimar cuánta memoria Aspose.Words consume realmente durante el procesamiento de un archivo de documento en particular. Como sabrá, .NET almacena datos en clases, cada instancia de clase usa algo de memoria para fines internos de CLR. Por lo tanto, cualquier párrafo o texto formateado (incluso si consta de un carácter) requiere algo de memoria adicional después de cargarse en el DOM. Además, el motor recolector de basura .NET utiliza un algoritmo complejo para determinar el mejor momento para realizar una recolección de memoria, lo que dificulta determinar el consumo real de memoria.

## Cómo calcular la cantidad de memoria

Consideremos dos documentos:

1. Documento DOCX "A": tamaño de 0,35 MB (2 mil páginas), solo texto
2. Documento DOCX "B": tamaño de 0,35 MB (solo 1 página), con una imagen PNG en su interior

Como sabes, muchos formatos modernos como DOCX, ODT, etc. son archivos ZIP simples. Entonces, obtenemos el siguiente algoritmo de cálculo:
1. Descomprimir. El documento descomprimido "A" tiene un tamaño de 20 MB, el documento "B" tiene un tamaño de 0,4 MB
2. Cargar el documento en el modelo (construir su Modelo de Objetos de Documento – DOM):
* La creación de DOM del primer documento "A" requiere un tamaño de 49 MB
* La creación de DOM del segundo documento "B" requiere solo 2 MB de tamaño.
3. Medir la cantidad de memoria necesaria para convertir estos documentos en PDF. Para esta operación, Aspose.Words requiere:
 * 294 MB para el documento "A"
 * 7 MB para el documento "B"

Entonces, como puede ver, no existe una dependencia lineal del tamaño del documento de entrada. Hay muchos factores que pueden afectar el tamaño de RAM requerido: el formato del documento, su complejidad y estructura, la cantidad de imágenes y su formato, y muchos otros factores.

## Cómo calcular el multiplicador de memoria con mayor precisión

Los experimentos con miles de documentos reales muestran que normalmente Aspose.Words requiere varias veces más memoria que el tamaño promedio de un documento para construir un modelo de documento en la memoria y realizar operaciones simples como conversión entre formatos de flujo, mail merge, analizar, reemplazar, etc. A veces hablamos de un multiplicador de 2 y otras de 20.

Operaciones más complejas como renderizar (convertir a formatos de página fijos), actualizar campos, dividir páginas y otras, para algunos documentos requieren 20 veces más recursos que la memoria asignada por el documento cargado en Aspose.Words DOM.

Si los resultados de su perfil indican un posible problema de memoria en Aspose.Words, comuníquese con nuestro [Apoyo técnico](/words/es/net/technical-support/) e incluya toda la información de diagnóstico.

## Ver también

* [Medir el uso de memoria en Visual Studio (C#, Visual Basic, C++, F#)](https://learn.microsoft.com/en-us/visualstudio/profiling/memory-usage?view=vs-2022)
* [Representación](/words/es/net/rendering/)
* [Mail Merge e informes](/words/net/mail-merge-and-reporting/)
* [trabajar con campos](/words/es/net/working-with-fields/)