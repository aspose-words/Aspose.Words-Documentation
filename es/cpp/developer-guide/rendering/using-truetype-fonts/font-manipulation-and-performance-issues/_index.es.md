---
title: Manipulación de Fuentes y Problemas de Rendimiento en C++
second_title: Aspose.Words para C++
articleTitle: Manipulación de Fuentes y Problemas de Rendimiento
linktitle: Manipulación de Fuentes y Problemas de Rendimiento
description: "Aspose.Words para C++ utiliza el nombre completo de la fuente, el apellido, la versión y el estilo para encontrar los datos de fuente requeridos o un reemplazo adecuado para la fuente solicitada. FontSettings le permite acelerar la carga de los documentos."
type: docs
weight: 11
url: /es/cpp/font-manipulation-and-performance-issues/
---

Todos los mecanismos de manipulación de fuentes disponibles están contenidos en la clase [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings). Esta clase es responsable de obtener fuentes dentro de las fuentes de fuentes definidas, así como del proceso de sustitución de fuentes, como se describe a continuación.

## Analizando las Fuentes Resueltas

Las fuentes se analizan en varios pasos:

1. Obtención de información para la fuente, resolviendo desde todas las fuentes disponibles.
1. Analizar las fuentes resueltas para obtener glifos y métricas disponibles (horizontales y verticales).
1. Analizar las fuentes resueltas para incrustarlas y subconjuntarlas.

Cuando Aspose.Words encuentra una fuente en el documento por primera vez, intenta obtener información básica de la fuente, como el nombre completo de la fuente, el apellido, la versión y el estilo, de los archivos de fuentes ubicados en cada fuente. Después de recuperar todas las fuentes, Aspose.Words usa estos detalles para encontrar los datos de fuente requeridos o un reemplazo adecuado para la fuente solicitada.

## Problema De Rendimiento Al Reemplazar Fuentes

Dado que el procedimiento descrito anteriormente requiere mucho tiempo, puede afectar negativamente al rendimiento de la aplicación en su primer lanzamiento. Sin embargo, cada instancia de **FontSettings** tiene su propia caché, lo que podría reducir el tiempo de procesamiento de los documentos posteriores. Por ejemplo, puede compartir una instancia de la clase **FontSettings** entre diferentes documentos, lo que le permite acelerar la carga de los documentos. El siguiente ejemplo demuestra esto:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

En el caso de que **FontSettings** no esté definido explícitamente, Aspose.Words usa la instancia predeterminada **FontSettings**. Esta instancia también se comparte automáticamente entre documentos y se puede extraer de la siguiente manera:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## Usando la instancia FontSettings predeterminada

Si está seguro de que todos los documentos de procesamiento requieren la misma configuración de fuente, se recomienda configurar y utilizar la instancia predeterminada **FontSettings**. Supongamos que necesita utilizar las mismas fuentes para todos sus documentos. En este caso, puede modificar la instancia predeterminada de la siguiente manera:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

La **FontSettings** personalizada tiene mayor prioridad que la instancia predeterminada.

{{% /alert %}}