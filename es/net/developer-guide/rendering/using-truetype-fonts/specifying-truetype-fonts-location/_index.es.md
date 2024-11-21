---
title: Especificar la ubicación de las fuentes TrueType en C#
second_title: Aspose.Words para .NET
articleTitle: Especificar la ubicación de las fuentes TrueType
linktitle: Especificar la ubicación de las fuentes TrueType
description: "Especifique varias fuentes de fuentes TrueType: carpeta del sistema, fuentes de usuario, carga de fuentes desde una secuencia, un sistema de archivos o memoria usando C#."
type: docs
weight: 30
url: /es/net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Este tema describe el comportamiento predeterminado de Aspose.Words cuando busca fuentes TrueType, incluidas las diferencias específicas del sistema operativo, y demuestra cómo especificar fuentes de fuentes del usuario.

La clase [FontSourceBase](https://reference.aspose.com/words/es/net/aspose.words.fonts/fontsourcebase/) se utiliza para especificar varias fuentes de fuentes. Hay varias implementaciones de la clase **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/es/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/es/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/es/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/es/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/es/net/aspose.words.fonts/memoryfontsource)

Los detalles de implementación para algunas clases se explican a continuación.

## Cargar fuentes desde el sistema {#loading-fonts-from-system}

Hay una clase [SystemFontSource](https://reference.aspose.com/words/es/net/aspose.words.fonts/systemfontsource/) especial que siempre se utiliza de forma predeterminada. Representa todas las fuentes TrueType instaladas en el sistema. Por lo tanto, es posible crear una lista de fuentes con **SystemFontSource** y cualquier otra fuente requerida:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

Una única instancia de la clase **SystemFontSource** se define de forma predeterminada en [FontSettings](https://reference.aspose.com/words/es/net/aspose.words.fonts/fontsettings/). En diferentes sistemas operativos, las fuentes pueden estar ubicadas en diferentes lugares. Sin embargo, utilizar una instancia **FontSettings** para cada documento no es una solución óptima. En la mayoría de los casos, utilizar [DefaultInstance](https://reference.aspose.com/words/es/net/aspose.words.fonts/fontsettings/defaultinstance/) debería ser suficiente.

Las instancias por documento solo son necesarias si es necesario utilizar diferentes fuentes de fuentes para diferentes documentos, lo cual es un caso poco común. El uso de varias instancias **FontSettings** disminuye el rendimiento porque no comparten caché.

### Dónde Aspose.Words busca fuentes TrueType en Windows

En la mayoría de los casos, los usuarios de Windows no enfrentan problemas importantes con fuentes perdidas o diseños incorrectos. Normalmente, Aspose.Words revisa un documento y, cuando encuentra el enlace de una fuente, recupera con éxito los datos de la fuente de la carpeta del sistema.

En Windows, Aspose.Words primero toma todas las fuentes disponibles de la carpeta _%windir%\Fonts. Esta configuración funcionará para usted la mayor parte del tiempo. Sólo especificas tus propias carpetas de fuentes si es necesario. Aspose.Words para .NET también busca fuentes adicionales registradas en la clave de registro HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. Además, Windows 10 permite la instalación de fuentes para el usuario actual. Las fuentes se colocan en la carpeta %userprofile%\AppData\Local\Microsoft\Windows\Fonts y también se especifican en el registro HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, donde Aspose.Words buscará estas fuentes.

Si un documento contiene fuentes incrustadas, Aspose.Words puede leer datos de fuentes relevantes del documento y usarlos para crear el diseño del documento. Los documentos también pueden contener enlaces a fuentes que no se encuentran en las carpetas del sistema, en cuyo caso funcionan los siguientes escenarios:

- Los usuarios pueden configurar nuevas fuentes de fuentes a través de la clase **FontSettings**
- Aspose.Words puede intentar reemplazar la fuente perdida por una similar

{{% alert color="primary" %}}

La representación Aspose.Words en un servidor normalmente no funcionará con una aplicación ASP.NET configurada para ejecutarse en el nivel de confianza medio, porque prohíbe el acceso al registro y limita el acceso al sistema de archivos.

{{% /alert %}}

### Fuentes en sistemas que no son Windows

Aspose.Words buscará las fuentes en las carpetas de fuentes del sistema. Se puede ver una lista de estas carpetas mediante el método [GetSystemFontFolders](https://reference.aspose.com/words/es/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Si no se encuentran fuentes compatibles, Aspose.Words utilizará la fuente predeterminada incorporada Fanwood.ttf.

Dado que las métricas de fuente de los sistemas operativos Windows y no Windows son diferentes, Aspose.Words hace todo lo posible para encontrar una fuente similar y crear un diseño similar al original. Sin embargo, esto no siempre es posible. En estos casos, se debe utilizar la clase **FontSettings** para agregar fuentes personalizadas o reglas de sustitución.

#### Dónde Aspose.Words busca fuentes TrueType en Linux

Diferentes distribuciones de Linux pueden almacenar fuentes en diferentes carpetas. Aspose.Words busca fuentes en varias ubicaciones. De forma predeterminada, Aspose.Words busca las fuentes en todas las ubicaciones siguientes: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fonts Este comportamiento predeterminado funcionará para la mayoría de las distribuciones Linux., pero no se garantiza que funcione todo el tiempo, en cuyo caso es posible que deba especificar explícitamente la ubicación de las fuentes True Type. Para hacer esto, necesita saber dónde están instaladas las fuentes TrueType en su distribución Linux.

#### Dónde busca Aspose.Words fuentes TrueType en Mac OS X

Aspose.Words busca fuentes en la carpeta /Biblioteca/Fonts, que es la ubicación estándar para las fuentes TrueType en Mac OS X. Si bien esta configuración funcionará para usted la mayor parte del tiempo, es posible que deba especificar sus propias carpetas de fuentes en el caso de que necesitas.

## Cargar fuentes desde la carpeta {#loading-fonts-from-folder}

Si el documento que se está procesando contiene enlaces a fuentes que no están en el sistema, o no desea agregarlas a la carpeta del sistema, o no tiene permisos, entonces la mejor solución sería agregar una carpeta con sus propias fuentes usando el método [SetFontsSources](https://reference.aspose.com/words/es/net/aspose.words.fonts/fontsettings/setfontssources/). Esto permitirá reemplazar la fuente del sistema con una fuente de usuario. Aspose.Words ya no buscará fuentes en el registro o en la carpeta Windows\Font y, en su lugar, solo buscará fuentes dentro de las carpetas especificadas. El método [GetFontSources](https://reference.aspose.com/words/es/net/aspose.words.fonts/fontsettings/getfontssources/) devolverá los valores correspondientes.

### Especificar una o varias carpetas de fuentes

Los métodos [SetFontsFolder](https://reference.aspose.com/words/es/net/aspose.words.fonts/fontsettings/setfontsfolder/) y [SetFontsFolders](https://reference.aspose.com/words/es/net/aspose.words.fonts/fontsettings/setfontsfolder/s) son accesos directos al método **SetFontSources** con una o varias instancias [FolderFontSource](https://reference.aspose.com/words/es/net/aspose.words.fonts/folderfontsource/). Estos métodos se utilizan para indicar dónde Aspose.Words debe buscar fuentes. Si una carpeta no existe o no es accesible, Aspose.Words simplemente ignora esta carpeta. Si se ignoraron todas las carpetas, incluidas las fuentes para la sustitución de fuentes, Aspose.Words utilizará la fuente Fanwood como predeterminada.

El siguiente ejemplo demuestra cómo configurar la carpeta o fuente, que Aspose.Words utilizará posteriormente para buscar fuentes TrueType durante la representación o incrustación de fuentes:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

Un parámetro booleano adicional controla si las fuentes se escanean de forma recursiva en todas las carpetas y, por lo tanto, se escanean todas las carpetas secundarias de una carpeta específica. El siguiente ejemplo demuestra cómo configurar Aspose.Words para que busque fuentes TrueType en varias carpetas al renderizar o incrustar fuentes:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Tenga en cuenta las prioridades. Si hay fuentes con el mismo apellido y estilo en diferentes fuentes, Aspose.Words seleccionará la fuente de la fuente con mayor prioridad. Consulte la descripción del campo "Prioridad" a continuación.

Si no desea utilizar fuentes del sistema en absoluto, Aspose.Words le permite ignorarlas y utilizar únicamente sus propias fuentes:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### Propiedad prioritaria

La propiedad [Priority](https://reference.aspose.com/words/es/net/aspose.words.fonts/fontsourcebase/priority/) se utiliza cuando hay fuentes con el mismo nombre de familia y estilo en diferentes fuentes de fuentes. En este caso, Aspose.Words selecciona la fuente de la fuente con el valor de prioridad más alto. Por ejemplo, hay una versión antigua de la fuente en la carpeta del sistema y el cliente agregó una nueva versión de la misma fuente en una carpeta personalizada.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## Cargar fuentes desde Stream {#loading-fonts-from-stream}

Aspose.Words proporciona la clase [StreamFontSource](https://reference.aspose.com/words/es/net/aspose.words.fonts/streamfontsource/), que permite cargar fuentes desde la secuencia. Para utilizar la fuente de fuente de flujo, un usuario debe crear una clase derivada de **StreamFontSource** y proporcionar una implementación del método [OpenFontDataStream](https://reference.aspose.com/words/es/net/aspose.words.fonts/streamfontsource/openfontdatastream/). El método **OpenFontDataStream** se puede llamar varias veces. Por primera vez, se llamará cuando Aspose.Words escanee las fuentes de fuentes proporcionadas para obtener una lista de las fuentes disponibles. Más tarde se puede llamar si la fuente se utiliza en el documento para analizar los datos de la fuente e incrustar los datos de la fuente en algunos formatos de salida. **StreamFontSource** puede ser útil porque permite cargar los datos de la fuente sólo cuando es necesario y no almacenarlos en la memoria durante la vida útil del [Configuración de fuente](https://fontsettings/).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** es una alternativa a [MemoryFontSource](https://reference.aspose.com/words/es/net/aspose.words.fonts/memoryfontsource/) ya que siempre es posible cargar una secuencia en la memoria y pasarla a **MemoryFontSource**. La diferencia es que el **MemoryFontSource** se almacena en la memoria todo el tiempo y el **StreamFontSource** se carga según demanda y se elimina de inmediato. Pero puede cargarse varias veces, como se describe arriba. En algunos casos es preferible **MemoryFontSource** y en otros, **StreamFontSource**.

## Guardar y cargar una caché de búsqueda de fuentes

Cuando busca una fuente por primera vez, Aspose.Words itera sobre las fuentes de fuentes especificadas por el usuario y forma un caché de búsqueda de fuentes basado en los datos de estas fuentes. Por lo tanto, el caché recopilará información sobre las fuentes disponibles: familia de fuentes, estilo, nombre completo de la fuente y otros. En llamadas posteriores, Aspose.Words busca información sobre la fuente deseada por su nombre en el caché de búsqueda de fuentes, después de lo cual analiza los archivos especificados para usar la fuente.

El procedimiento para analizar todos los archivos de fuentes disponibles para inicializar el caché lleva bastante tiempo. Aspose.Words le permite guardar y cargar el caché utilizando el método [SaveSearchCache](https://reference.aspose.com/words/es/net/aspose.words.fonts/fontsettings/savesearchcache/) para resolver el problema de rendimiento. Es decir, el usuario puede cargar un caché previamente guardado desde un archivo y omitir el paso de analizar todos los archivos de fuentes disponibles.

{{% alert color="primary" %}}

Utilice el mismo método **SaveSearchCache** para actualizar el caché.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo preparar fuentes de fuentes y generar caché de búsqueda de fuentes por adelantado:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

El siguiente ejemplo de código muestra cómo configurar fuentes de fuentes y cargar la caché de búsqueda antes de procesar documentos:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

La caché de búsqueda de fuentes es excelente para la integración de Aspose.Words en AWS Lambda debido a una serie de limitaciones. Por ejemplo, del tamaño del contenedor principal y, como resultado, del número de fuentes.

La caché también es adecuada para otros escenarios cuando las fuentes se cargan a través de la red. O para escenarios en los que no hay forma de almacenar una instancia `FontSettings` con un caché cargado.

{{% /alert %}}

## Obtenga una lista de fuentes disponibles {#get-a-list-of-available-fonts}

Si desea obtener la lista de fuentes disponibles, que, por ejemplo, se pueden usar para representar un documento PDF, puede usar el método [GetAvailableFonts](https://reference.aspose.com/words/es/net/aspose.words.fonts/fontsourcebase/getavailablefonts/), como se muestra en el siguiente ejemplo de código. La clase [PhysicalFontInfo](https://reference.aspose.com/words/es/net/aspose.words.fonts/physicalfontinfo/) especifica información sobre la fuente física disponible para el motor de fuentes Aspose.Words:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
