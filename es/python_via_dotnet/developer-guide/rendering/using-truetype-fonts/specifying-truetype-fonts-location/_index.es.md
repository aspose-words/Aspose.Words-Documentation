---
title: Especificar la ubicación de las fuentes TrueType
second_title: Aspose.Words para Python via .NET
articleTitle: Especificar la ubicación de las fuentes TrueType
linktitle: Especificar la ubicación de las fuentes TrueType
description: "Especifique varias fuentes de fuentes TrueType: carpeta del sistema, fuentes de usuario, carga de fuentes desde una secuencia, un sistema de archivos o memoria usando Python."
type: docs
weight: 30
url: /es/python-net/specifying-truetype-fonts-location/
---

Este tema describe el comportamiento predeterminado de Aspose.Words cuando busca fuentes TrueType, incluidas las diferencias específicas del sistema operativo, y demuestra cómo especificar fuentes de fuentes del usuario.

La clase [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) se utiliza para especificar varias fuentes de fuentes. Hay varias implementaciones de la clase [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/):

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

Los detalles de implementación para algunas clases se explican a continuación.

## Cargando fuentes desde el sistema

Hay una clase [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) especial que siempre se utiliza de forma predeterminada. Representa todas las fuentes TrueType instaladas en el sistema. Por lo tanto, es posible crear una lista de fuentes con [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) y cualquier otra fuente requerida:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

Una única instancia de la clase [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) se define de forma predeterminada en [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). En diferentes sistemas operativos, las fuentes pueden estar ubicadas en diferentes lugares. Sin embargo, utilizar una instancia [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) para cada documento no es una solución óptima. En la mayoría de los casos, utilizar [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) debería ser suficiente.

Las instancias por documento solo son necesarias si es necesario utilizar diferentes fuentes de fuentes para diferentes documentos, lo cual es un caso poco común. El uso de varias instancias [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) disminuye el rendimiento porque no comparten caché.

### Dónde Aspose.Words busca fuentes TrueType en Windows

En la mayoría de los casos, los usuarios de Windows no enfrentan problemas importantes con fuentes perdidas o diseños incorrectos. Normalmente, Aspose.Words revisa un documento y, cuando encuentra el enlace de una fuente, recupera con éxito los datos de la fuente de la carpeta del sistema.

En Windows, Aspose.Words primero toma todas las fuentes disponibles de la carpeta _%windir%\Fonts. Esta configuración funcionará para usted la mayor parte del tiempo. Sólo especificas tus propias carpetas de fuentes si es necesario. Aspose.Words para .NET también busca fuentes adicionales registradas en la clave de registro *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts*. Además, Windows 10 permite la instalación de fuentes para el usuario actual. Las fuentes se colocan en la carpeta *%userprofile%\AppData\Local\Microsoft\Windows\Fonts* y también se especifican en el registro *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts*, donde Aspose.Words buscará estas fuentes.

Si un documento contiene fuentes incrustadas, Aspose.Words puede leer datos de fuentes relevantes del documento y usarlos para crear el diseño del documento. Los documentos también pueden contener enlaces a fuentes que no se encuentran en las carpetas del sistema, en cuyo caso funcionan los siguientes escenarios:

- Los usuarios pueden configurar nuevas fuentes de fuentes a través de la clase [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)
- Aspose.Words puede intentar reemplazar la fuente perdida por una similar


### Fuentes en sistemas que no son Windows

Aspose.Words buscará las fuentes en las carpetas de fuentes del sistema. Se puede ver una lista de estas carpetas mediante el método [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/). Si no se encuentran fuentes compatibles, Aspose.Words utilizará la fuente predeterminada incorporada Fanwood.ttf.

Dado que las métricas de fuente de los sistemas operativos Windows y no Windows son diferentes, Aspose.Words hace todo lo posible para encontrar una fuente similar y crear un diseño similar al original. Sin embargo, esto no siempre es posible. En estos casos, se debe utilizar la clase [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) para agregar fuentes personalizadas o reglas de sustitución.

#### Dónde Aspose.Words busca fuentes TrueType en Linux

Diferentes distribuciones de Linux pueden almacenar fuentes en diferentes carpetas. Aspose.Words busca fuentes en varias ubicaciones. De forma predeterminada, Aspose.Words busca las fuentes en todas las ubicaciones siguientes: */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts*. Este comportamiento predeterminado funcionará para la mayoría de las distribuciones Linux, pero no se garantiza que funcione todo el tiempo, en cuyo caso es posible que deba especificar explícitamente la ubicación de las fuentes True Type. Para hacer esto, necesita saber dónde están instaladas las fuentes TrueType en su distribución Linux.

#### Dónde busca Aspose.Words fuentes TrueType en Mac OS X

Aspose.Words busca fuentes en la carpeta */Library/Fonts*, que es la ubicación estándar para las fuentes TrueType en Mac OS X. Si bien esta configuración funcionará para usted la mayor parte del tiempo, es posible que deba especificar sus propias carpetas de fuentes en la carpeta */Library/Fonts*. caso cuando sea necesario.

## Cargando fuentes desde la carpeta

Si el documento que se está procesando contiene enlaces a fuentes que no están en el sistema, o no desea agregarlas a la carpeta del sistema, o no tiene permisos, entonces la mejor solución sería agregar una carpeta con sus propias fuentes usando el método [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/). Esto permitirá reemplazar la fuente del sistema con una fuente de usuario. Aspose.Words ya no buscará fuentes en el registro o en la carpeta Windows\Font y, en su lugar, solo buscará fuentes dentro de las carpetas especificadas. El método [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) devolverá los valores correspondientes.

### Especificación de una o varias carpetas de fuentes

Los métodos [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) y [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) son accesos directos al método [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) con una o varias instancias [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/). Estos métodos se utilizan para indicar dónde Aspose.Words debe buscar fuentes. Si una carpeta no existe o no es accesible, Aspose.Words simplemente ignora esta carpeta. Si se ignoraron todas las carpetas, incluidas las fuentes para la sustitución de fuentes, Aspose.Words utilizará la fuente Fanwood como predeterminada.

El siguiente ejemplo demuestra cómo configurar la carpeta o fuente, que Aspose.Words utilizará posteriormente para buscar fuentes TrueType durante la representación o incrustación de fuentes:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

Un parámetro booleano adicional controla si las fuentes se escanean de forma recursiva en todas las carpetas y, por lo tanto, se escanean todas las carpetas secundarias de una carpeta específica. El siguiente ejemplo demuestra cómo configurar Aspose.Words para que busque fuentes TrueType en varias carpetas al renderizar o incrustar fuentes:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Tenga en cuenta las prioridades. Si hay fuentes con el mismo apellido y estilo en diferentes fuentes, Aspose.Words seleccionará la fuente de la fuente con mayor prioridad. Consulte la descripción del campo "prioridad" a continuación.

Si no desea utilizar fuentes del sistema en absoluto, Aspose.Words le permite ignorarlas y utilizar únicamente sus propias fuentes:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Propiedad prioritaria

La propiedad **prioridad** se utiliza cuando hay fuentes con el mismo nombre de familia y estilo en diferentes fuentes de fuentes. En este caso, Aspose.Words selecciona la fuente de la fuente con el valor de prioridad más alto. Por ejemplo, hay una versión antigua de la fuente en la carpeta del sistema y el cliente agregó una nueva versión de la misma fuente en una carpeta personalizada.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Obtener una lista de fuentes disponibles

Si desea obtener la lista de fuentes disponibles, que, por ejemplo, se pueden usar para representar un documento PDF, puede usar el método [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/), como se muestra en el siguiente ejemplo de código. La clase [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) especifica información sobre la fuente física disponible para el motor de fuentes Aspose.Words:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
