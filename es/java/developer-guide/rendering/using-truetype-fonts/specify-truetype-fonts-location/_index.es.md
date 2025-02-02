﻿---
title: Especifique la ubicación de las fuentes TrueType en Java
second_title: Aspose.Words por Java
articleTitle: Especifique la ubicación de las fuentes TrueType
linktitle: Especifique la ubicación de las fuentes TrueType
description: "Especifique varias fuentes TrueType: carpeta del sistema, fuentes de usuario, cargando fuentes desde una secuencia, un sistema de archivos o memoria usando Java."
type: docs
weight: 30
url: /es/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

En este tema se describe el comportamiento predeterminado de Aspose.Words cuando busca fuentes TrueType, incluidas las diferencias específicas del sistema operativo, y se muestra cómo especificar fuentes de fuentes de usuario.

La clase [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) se usa para especificar varias fuentes de fuentes. Hay varias implementaciones de la clase **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

Los detalles de implementación de algunas clases se explican a continuación.

## Cargar fuentes desde System {#loading-fonts-from-system}

Hay una clase especial [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) que siempre se usa de forma predeterminada. Representa todas las TrueType fuentes instaladas en el sistema. Por lo tanto, es posible crear una lista de fuentes con **SystemFontSource** y cualquier otra fuente requerida:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

Una sola instancia de la clase **SystemFontSource** se define de forma predeterminada en [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). En diferentes sistemas operativos, las fuentes pueden ubicarse en lugares diferentes. Sin embargo, usar una instancia **FontSettings** para cada documento no es una solución óptima. En la mayoría de los casos, usar [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) debería ser suficiente.

Las instancias por documento son necesarias solo si se requiere usar diferentes fuentes para diferentes documentos, lo cual es un caso raro. El uso de varias instancias **FontSettings** disminuye el rendimiento porque no comparten la caché.

### Donde Aspose.Words Busca TrueType Fuentes en Windows

En la mayoría de los casos, los usuarios de Windows no enfrentan problemas significativos con fuentes omitidas o diseños incorrectos. Normalmente, Aspose.Words recorre un documento y, cuando encuentra el enlace de una fuente, recupera correctamente los datos de la fuente de la carpeta del sistema.

En Windows, Aspose.Words primero toma todas las fuentes disponibles de la carpeta _%windir%\Fonts. Esta configuración funcionará para usted la mayor parte del tiempo. Solo especifica sus propias carpetas de fuentes si es necesario. Aspose.Words también busca fuentes adicionales registradas en la clave de registro HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. Además, Windows 10 habilita la instalación de fuentes para el usuario actual. Las fuentes se colocan en la carpeta %userprofile%\AppData\Local\Microsoft\Windows\Fonts y también se especifican en el registro HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, donde Aspose.Words buscará estas fuentes.

Si un documento contiene fuentes incrustadas, Aspose.Words puede leer los datos de fuentes relevantes del documento y usarlos para crear el diseño del documento. Los documentos también pueden contener enlaces a fuentes que no están en las carpetas del sistema, en cuyo caso funcionan los siguientes escenarios:

- Los usuarios pueden configurar nuevas fuentes de fuentes a través de la clase **FontSettings**
- Aspose.Words puede intentar reemplazar la fuente perdida por una similar

### Fuentes en Sistemas que no sonWindows

Aspose.Words buscará las fuentes en las carpetas de fuentes del sistema. Se puede ver una lista de estas carpetas mediante el método [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders). Si no se encuentran fuentes compatibles, Aspose.Words utilizará la fuente predeterminada incorporada Fanwood.ttf.

Dado que las métricas de fuente de Windows y noWindows OS son diferentes, Aspose.Words hace todo lo posible para encontrar una fuente similar y crear un diseño similar al original. Sin embargo, esto no siempre es posible. En estos casos, la clase **FontSettings** debe usarse para agregar fuentes personalizadas o reglas de sustitución.

#### Donde Aspose.Words Busca TrueType Fuentes en Linux

Diferentes distribuciones Linux pueden almacenar fuentes en carpetas diferentes. Aspose.Words busca fuentes en varias ubicaciones. De forma predeterminada, Aspose.Words busca las fuentes en todas las ubicaciones siguientes: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. Este comportamiento predeterminado funcionará para la mayoría de las distribuciones Linux, pero no se garantiza que funcione todo el tiempo, en cuyo caso es posible que deba especificar explícitamente la ubicación de las fuentes true type. Para hacer esto, necesita saber dónde están instaladas las fuentes TrueType en su distribución Linux.

#### Donde Aspose.Words Busca TrueType Fuentes en Mac OS X

Aspose.Words busca fuentes en la carpeta `/Library/Fonts`, que es la ubicación estándar para TrueType fuentes en Mac OS X. Si bien esta configuración funcionará para usted la mayor parte del tiempo, es posible que deba especificar sus propias carpetas de fuentes en el caso de que lo necesite.

#### TrueType Fuentes en Android

En Android, el flujo de trabajo de fuentes se encapsula en la clase Typeface.
Hay cinco tipos de tipos de letra, cada tipo de letra representa un grupo de familias de fuentes similares:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Por ejemplo, de acuerdo con Android's [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) archivo de configuración, "times" pertenece a la familia" serif " so NotoSerif - Regular.ttf se utilizará cuando se solicite" times":

**Fonts.xml**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

Para buscar fuentes similares, se utilizan las estrategias descritas anteriormente.

Además de ellos, Aspose.Words tiene su propia lista de reemplazos para la plataforma Android.

Digamos que el documento contiene la fuente PMingLiU-ExtB, en primer lugar, Aspose.Words está buscando la fuente requerida dentro de las fuentes del sistema.

La lista predeterminada de carpetas de fuentes Android es:

- / sistema / fuentes
- / sistema / fuente
- / datos / fuentes

Aspose.Words busca en fuentes definidas por el usuario que se configuraron con el método:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

En caso de que se haya especificado un reemplazo explícito, Aspose.Words reemplaza la fuente faltante con la sugerencia del usuario:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

Si ninguna de las reglas funcionó, Aspose.Words verifique la tabla de reemplazo interno. Si la tabla contiene información sobre un buen ajuste, se reemplaza la fuente. En nuestro caso Aspose.Words seleccionará `Typeface.SERIF`. Pero si la tabla no sabe nada sobre la fuente solicitada, Aspose.Words elige una fuente basada en reglas especiales de MS Palabras o la distancia más cercana en el espacio Panose.

#### TrueType Fuentes en .NET Core y Xamarin

Para .NET Core y Xamarin se aplica la misma regla que para Aspose.Words para la versión Java. De forma predeterminada, todas las fuentes del sistema de la plataforma en la que se ejecuta la aplicación están disponibles.
La lista de carpetas donde se realizará la búsqueda se puede encontrar llamando al método:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Cargar fuentes desde la carpeta {#loading-fonts-from-folder}

Si el documento que se está procesando contiene enlaces a fuentes que no están en el sistema, o no desea agregarlas a la carpeta del sistema, o carece de permisos, entonces la mejor solución sería agregar una carpeta con sus propias fuentes usando el método `SetFontsSources`. Esto permitirá reemplazar la fuente del sistema con una fuente de usuario. Aspose.Words ya no buscará fuentes en el registro o en la carpeta Windows\Font y, en su lugar, solo buscará fuentes dentro de las carpetas especificadas. El método `GetFontSources` devolverá los valores correspondientes.

### Especifique Una o Varias Carpetas de Fuentes

Los métodos [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) y SetFontsFolders son accesos directos al método **SetFontSources** con una o varias instancias [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/). Estos métodos se utilizan para indicar dónde Aspose.Words debe buscar las fuentes. Si una carpeta no existe o no es accesible, Aspose.Words simplemente la ignora. Si se ignoraron todas las carpetas, incluidas las fuentes para la sustitución de fuentes, Aspose.Words usará la fuente Fanwood como predeterminada.

El siguiente ejemplo demuestra cómo configurar la carpeta o el origen, que Aspose.Words utilizará posteriormente para buscar fuentes TrueType durante la representación o incrustación de fuentes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Un parámetro booleano adicional controla si las fuentes se escanean recursivamente en todas las carpetas, por lo tanto, escanean todas las carpetas secundarias de una carpeta específica. El siguiente ejemplo demuestra cómo configurar Aspose.Words para que busque fuentes TrueType en varias carpetas al representar o incrustar fuentes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Tenga en cuenta las prioridades. Si hay fuentes con el mismo apellido y estilo en diferentes fuentes de fuentes, Aspose.Words seleccionará la fuente de la fuente con mayor prioridad. Consulte la descripción del campo "Prioridad" a continuación.

{{% /alert %}}

Si no desea utilizar fuentes del sistema en absoluto, Aspose.Words le permite ignorarlas y usar solo sus propias fuentes:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### Propiedad Prioritaria

La propiedad [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) se usa cuando hay fuentes con el mismo apellido y estilo en diferentes fuentes de fuentes. En este caso, Aspose.Words selecciona la fuente del origen con el valor de prioridad más alto. Por ejemplo, hay una versión anterior de la fuente en la carpeta del sistema y el cliente agregó una nueva versión de la misma fuente en una carpeta personalizada.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Cargar fuentes desde Stream {#loading-fonts-from-stream}

Aspose.Words proporciona la clase [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/), que permite cargar fuentes desde la secuencia. Para usar el origen de la fuente stream, un usuario debe crear una clase derivada de **StreamFontSource** y proporcionar una implementación del método [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream). El método **OpenFontDataStream** podría llamarse varias veces. Por primera vez, se llamará cuando Aspose.Words escanee las fuentes de fuentes proporcionadas para obtener una lista de las fuentes disponibles. Más tarde se puede llamar si la fuente se usa en el documento para analizar los datos de la fuente e incrustar los datos de la fuente en algunos formatos de salida. **StreamFontSource** puede ser útil porque permite cargar los datos de la fuente solo cuando es necesario y no almacenarlos en la memoria durante la vida útil de `FontSettings`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource**

## Guardar y Cargar una Caché de Búsqueda de Fuentes

Al buscar una fuente por primera vez, Aspose.Words itera sobre las fuentes especificadas por el usuario y forma una caché de búsqueda de fuentes en función de los datos de estas fuentes. Por lo tanto, el caché recopilará información sobre las fuentes disponibles: familia de fuentes, estilo, nombre completo de la fuente y otros. En llamadas posteriores, Aspose.Words busca información sobre la fuente deseada por su nombre en la caché de búsqueda de fuentes, después de lo cual analiza los archivos especificados para usar la fuente.

El procedimiento para analizar todos los archivos de fuentes disponibles para inicializar la caché requiere bastante tiempo. Aspose.Words le permite guardar y cargar la caché utilizando el método **FontSettings.SaveSearchCache** para resolver el problema de rendimiento. Es decir, el usuario puede cargar un caché guardado previamente desde un archivo y omitir el paso de analizar todos los archivos de fuentes disponibles.

{{% alert color="primary" %}}

Utilice el mismo método **SaveSearchCache** para actualizar la caché.

{{% /alert %}}

{{% alert color="primary" %}}

La caché también es adecuada para otros escenarios cuando las fuentes se cargan a través de la red. O para escenarios en los que no hay forma de almacenar una instancia `FontSettings` con una caché cargada.

{{% /alert %}}


## Obtener una Lista de Fuentes Disponibles {#get-a-list-of-available-fonts}

Si desea obtener la lista de fuentes disponibles, que, por ejemplo, se pueden usar para representar un documento PDF, puede usar el método [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts), como se muestra en el siguiente ejemplo de código. La clase [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) especifica información sobre la fuente física disponible para el motor de fuentes Aspose.Words.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
