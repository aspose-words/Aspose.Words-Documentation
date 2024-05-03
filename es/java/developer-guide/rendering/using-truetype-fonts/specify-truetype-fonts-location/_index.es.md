---
title: Especificar el Verdadero Tipo Fonts Ubicación en Java
second_title: Aspose.Words para Java
articleTitle: Especificar el Verdadero Tipo Fonts Ubicación
linktitle: Especificar el Verdadero Tipo Fonts Ubicación
description: "Especifique varios Cierto. Tipo fuentes de fuentes: carpeta del sistema, fuentes de usuario, fuentes de carga de una secuencia, un sistema de archivos o memoria utilizando Java."
type: docs
weight: 30
url: /es/java/specify-truetype-fonts-location/
---

Este tema describe el comportamiento predeterminado de Aspose.Words cuando busca fuentes TrueType, incluyendo diferencias específicas del sistema operativo, y demuestra cómo especificar fuentes de fuentes de usuario.

El [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) clase se utiliza para especificar varias fuentes de fuentes. Hay varias implementaciones de **FontSourceBase** clase:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

A continuación se explican los detalles de la aplicación de algunas clases.

## Fuentes de carga del sistema {#loading-fonts-from-system}

Hay una especial [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) clase que siempre se utiliza por defecto. Representa todas las fuentes TrueType instaladas en el sistema. Por lo tanto, es posible crear una lista de fuentes con **SystemFontSource** y cualquier otra fuente necesaria:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

Una sola instancia de la **SystemFontSource** la clase se define por defecto en [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). En diferentes sistemas operativos, las fuentes pueden estar ubicadas en diferentes lugares. Sin embargo, utilizando un **FontSettings** instancia para cada documento no es una solución óptima. En la mayoría de los casos, utilizando [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) Debería ser suficiente.

Los casos de documentos son necesarios sólo si se requiere utilizar diferentes fuentes de fuentes para diferentes documentos, que es un caso raro. Usando varios **FontSettings** instancias disminuye el rendimiento porque no comparten el caché.

### Donde Aspose.Words Busca fuentes de TrueType en Windows

En la mayoría de los casos, Windows Los usuarios no enfrentan problemas significativos con fuentes perdidas o diseños incorrectos. Típicamente, Aspose.Words pasa a través de un documento, y cuando se encuentra con el enlace de una fuente, se obtiene con éxito los datos de la fuente de la carpeta del sistema.

On <span notrans="<span notrans=" Windows"=""></span>," Aspose.Words primero toma todas las fuentes disponibles de la _%windir%\Fonts carpeta. Este ajuste funcionará para usted la mayor parte del tiempo. Sólo especifica sus propias carpetas de fuentes si es necesario. Aspose.Words también busca fuentes adicionales registradas en el HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts clave del registro. Además, Windows 10 permite la instalación de fuentes para el usuario actual. Las fuentes se colocan en el %userprofile%\AppData\Local\Microsoft\Windows\Fonts carpeta y también especificado en HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts registro, donde Aspose.Words buscará estas fuentes.

Si un documento contiene fuentes incrustadas, Aspose.Words puede leer datos de fuentes relevantes del documento y utilizarlo para crear el diseño del documento. Los documentos también pueden contener enlaces a fuentes que no están en las carpetas del sistema, en cuyo caso los siguientes escenarios vienen a trabajar:

- Los usuarios pueden configurar nuevas fuentes a través de la **FontSettings** clase
- Aspose.Words puede intentar reemplazar la fuente perdida con una similar

### Fuentes sobre noWindows Sistemas

Aspose.Words buscará las fuentes en las carpetas de fuentes del sistema. Una lista de estas carpetas puede ser vista por la [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) método. Si no se encuentran fuentes compatibles, Aspose.Words utilizará la fuente predeterminada incorporada Fanwood.tf.

Desde las métricas de fuentes Windows y noWindows El sistema operativo es diferente, Aspose.Words hace todo lo posible para encontrar una fuente similar y construir un diseño similar al original. Sin embargo, esto no siempre es posible. En estos casos, **FontSettings** Clase debe usarse para añadir fuentes personalizadas o reglas de sustitución.

#### Donde Aspose.Words Busca fuentes de TrueType en Linux

Diferentes Linux distribuciones pueden almacenar fuentes en diferentes carpetas. Aspose.Words busca fuentes en varias ubicaciones. Por defecto, Aspose.Words busca las fuentes en todas las siguientes ubicaciones: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fonts Este comportamiento predeterminado funcionará para la mayoría Linux distribuciones, pero no está garantizado trabajar todo el tiempo, en cuyo caso es posible que necesite especificar la ubicación de true tipo de fuentes explícitamente. Para ello, necesita saber dónde están instaladas las fuentes TrueType en su Linux distribución.

#### Donde Aspose.Words Busca fuentes de TrueType en Mac OS X

Aspose.Words busca fuentes en la carpeta /Library/Fonts, que es la ubicación estándar para fuentes TrueType en Mac OS X. Si bien este ajuste funcionará para usted la mayor parte del tiempo, es posible que necesite especificar sus propias carpetas de fuentes en el caso cuando lo necesite.

#### TrueType Fonts on Android

On Android, fonts workflow is encapsulated in Typeface class.
Hay cinco tipos de tipografías, cada tipo de cara representa un grupo de familias de fuentes similares:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Por ejemplo, según Android’ [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) config file, "times" pertenece a la familia "serif" para que NotoSerif-Regular.ttf se utilice cuando se solicite "tiempos":

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

Para buscar fuentes similares, se utilizan las estrategias descritas anteriormente

Además de ellos, Aspose.Words tiene su propia lista de reemplazos para el Android plataforma.

Digamos que el documento contiene la fuente PMingLiU-ExtB, en primer lugar, Aspose.Words está buscando la fuente requerida dentro de las fuentes del sistema.

La lista predeterminada de Android carpetas de fuentes es:

- /system/fonts
- /system/font
- /data/fonts

El Aspose.Words mira a través de fuentes definidas por el usuario que se estableció con el método:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

En caso de que se haya especificado un reemplazo explícito, Aspose.Words reemplaza la fuente perdida con la sugerencia del usuario:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

Si ninguna de las reglas funcionaba, Aspose.Words comprobar la mesa de reemplazo interna. Si la tabla contiene información sobre un buen ajuste entonces la fuente se reemplaza. En nuestro caso Aspose.Words seleccionará `Typeface.SERIF`. Pero si la tabla no sabe nada sobre la fuente solicitada entonces Aspose.Words recoge una fuente basada en reglas especiales MS Word o la distancia más cercana en el espacio Panose.

#### TrueType Fonts on .NET Core y Xamarin

Para .NET Core y Xamarin la misma norma aplicable Aspose.Words para Java versión. Por defecto, todas las fuentes del sistema de la plataforma en la que se ejecuta la aplicación están disponibles.
La lista de carpetas donde se realizará la búsqueda se puede encontrar llamando al método:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Fuentes de carga de la carpeta {#loading-fonts-from-folder}

Si el documento que se está procesando contiene enlaces a fuentes que no están en el sistema, o no quieres añadirlos a la carpeta del sistema, o no tienes permisos, entonces la mejor solución sería añadir una carpeta con tus propias fuentes usando la `SetFontsSources` método. Esto permitirá reemplazar la fuente del sistema por una fuente de usuario. Aspose.Words ya no buscará fuentes en el registro o Windows\Font carpeta y en cambio sólo escanear fuentes dentro de la carpeta(s) especificada. El `GetFontSources` método devolverá los valores correspondientes.

### Especifique una o varias carpetas de fuente

El [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) y los métodos SetFontsFolders son atajos a los **SetFontSources** método con uno o varios [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) casos. Estos métodos se utilizan para indicar dónde Aspose.Words debe buscar fuentes. Si una carpeta no existe o no es accesible, Aspose.Words ignora esta carpeta. Si todas las carpetas, incluidas las fuentes para la sustitución de fuentes, fueron ignoradas, Aspose.Words utilizará la fuente Fanwood como predeterminado.

El siguiente ejemplo demuestra cómo establecer la carpeta o fuente, que Aspose.Words utilizará posteriormente para buscar fuentes de TrueType durante el renderizado o la incrustación de fuentes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Un parámetro Boolean extra controla si las fuentes son escaneadas recursivamente a través de todas las carpetas, por lo que escanea todas las carpetas infantiles de una carpeta especificada. El siguiente ejemplo demuestra cómo establecer Aspose.Words buscar en múltiples carpetas para fuentes TrueType al renderizar o insertar fuentes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Tenga en cuenta las prioridades. Si hay fuentes con el mismo nombre familiar y estilo en diferentes fuentes de fuentes, entonces Aspose.Words seleccionará la fuente de la fuente con mayor prioridad. Vea la descripción del campo "Prioridad" a continuación.

{{% /alert %}}

Si no quieres usar fuentes de sistema en absoluto, Aspose.Words permite ignorarlos y utilizar sus propias fuentes solamente:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### Propiedad prioritaria

El [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) propiedad se utiliza cuando hay fuentes con el mismo nombre de familia y estilo en diferentes fuentes de fuentes. En este caso Aspose.Words selecciona la fuente de la fuente con el valor prioritario superior. Por ejemplo, hay una versión antigua de la fuente en la carpeta del sistema y el cliente agregó una nueva versión de la misma fuente en una carpeta personalizada.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Fuentes de carga de Stream {#loading-fonts-from-stream}

Aspose.Words proporciona el [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) class, que permite cargar fuentes desde el stream. Para utilizar la fuente de fuentes de streaming, un usuario necesita crear una clase derivada de **StreamFontSource** y proporcionar una aplicación de la [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) método. El **OpenFontDataStream** método podría llamarse varias veces. Por primera vez, se llamará cuando Aspose.Words escanea las fuentes de fuentes proporcionadas para obtener una lista de fuentes disponibles. Más adelante se puede llamar si la fuente se utiliza en el documento para analizar los datos de la fuente y para incorporar los datos de la fuente a algunos formatos de salida. **StreamFontSource** puede ser útil porque permite cargar los datos de la fuente sólo cuando es necesario, y no almacenarlo en la memoria para el `FontSettings` toda la vida.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** es una alternativa [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) ya que siempre es posible cargar un flujo a la memoria y pasarlo a **MemoryFontSource**. La diferencia es que **MemoryFontSource** se almacena en la memoria todo el tiempo, y **StreamFontSource** se carga bajo demanda y se elimina de inmediato. Pero puede ser cargado varias veces, como se describe anteriormente. En algunos casos **MemoryFontSource** es preferible, y en otros, **StreamFontSource**.

## Guardar y cargar una búsqueda de fuentes Cache

Al buscar una fuente por primera vez, Aspose.Words itera sobre las fuentes de fuentes especificadas por el usuario y forma un caché de búsqueda de fuentes basado en datos de estas fuentes. Así, el cache recopilará información sobre las fuentes disponibles: familia de fuentes, estilo, nombre completo de la fuente, y otros. En llamadas posteriores, Aspose.Words busca información sobre la fuente deseada por su nombre en el cache de búsqueda de fuentes, después de lo cual se analiza los archivos especificados para utilizar la fuente.

El procedimiento para analizar todos los archivos de fuentes disponibles para inicializar el cache es bastante largo. Aspose.Words permite guardar y cargar el caché utilizando el **FontSettings.SaveSearchCache** método para resolver el problema de rendimiento. Es decir, el usuario puede cargar un caché guardado previamente desde un archivo y saltar el paso de analizar todos los archivos de fuentes disponibles.

{{% alert color="primary" %}}

Use el mismo **SaveSearchCache** método para actualizar el caché.

{{% /alert %}}

{{% alert color="primary" %}}

El cache también es adecuado para otros escenarios cuando las fuentes se cargan sobre la red. O para escenarios cuando no hay manera de almacenar un `FontSettings` instancia con un caché cargado.

{{% /alert %}}


## Obtenga una lista de fuentes disponibles {#get-a-list-of-available-fonts}

Si desea obtener la lista de fuentes disponibles, que, por ejemplo, se puede utilizar para renderizar un documento PDF, puede utilizar el [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) método, como se muestra en el siguiente ejemplo de código. El [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) clase especifica información sobre la fuente física disponible Aspose.Words motor de fuentes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
