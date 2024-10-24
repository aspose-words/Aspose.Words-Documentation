---
title: Manipular y sustituir fuentes de TrueType
second_title: Aspose.Words para Java
articleTitle: Manipular y sustituir fuentes de TrueType
linktitle: Manipular y sustituir fuentes de TrueType
description: "Aspose.Words para Java puede incrustar las fuentes TrueType correctas en el documento resultante para asegurar que se muestre con precisión, o buscar un reemplazo de fuentes adecuado, o utilizar el mecanismo de descomposición de fuentes."
type: docs
weight: 10
url: /es/java/manipulate-and-substitute-truetype-fonts/
---

Aspose.Words Requiere Escriba fuentes para una variedad de tareas, incluyendo documentos de renderización a formatos de página fija, por ejemplo, PDF o XPS. Cuando Aspose.Words hace un documento, necesita realizar la incrustación y subconjunción de fuentes TrueType en el documento resultante, que es una práctica normal durante una generación de documentos, incluyendo PDF popular o XPS formatos. Esto asegura que el documento aparezca igual a cualquier espectador. Moreover, the XPS especificación requiere fuentes para estar siempre incrustadas en el documento.

Asegurarse Aspose.Words mide con precisión los caracteres y con éxito incorpora las fuentes relevantes, se deben cumplir las siguientes condiciones:

1. Aspose.Words debe ser capaz de encontrar y acceder a los archivos de fuentes de TrueType en el sistema.
1. Debe haber suficientes fuentes de TrueType disponibles para Aspose.Words, preferiblemente con los mismos nombres de familia de fuentes que los utilizados en el documento.

Tenga en cuenta que la fuente en el documento representa una entidad, como el nombre de familia, estilo, tamaño, color, que es diferente del `TrueType` fuente (fotografía física) entidad. Aspose.Words resuelve la fuente en el documento a una fuente física en alguna etapa de procesamiento. Esto permite ciertas tareas, más comúnmente la tarea de calcular el tamaño del texto durante la construcción del diseño y la incorporación/subsetting a formatos de página fija. También están habilitadas varias tareas menos populares, como la resolución de fuentes y la sustitución, mientras se cargan HTML o incrustan/sustituyen a algunos formatos de flujo.

## Manipulación de fuentes y cuestiones de rendimiento

Todos los mecanismos disponibles de manipulación de fuentes están contenidos en [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) clase. Esta clase es responsable de buscar fuentes dentro de fuentes definidas, así como del proceso de sustitución de fuentes, como se describe a continuación.

Las fuentes se analizan en varios pasos:

1. Obtener información para la fuente, resolviendo de todas las fuentes disponibles.
1. Parsing the resolved fonts to get available glyphs y métricas (horizontal y vertical).
1. Parsing the resolved fonts for embedding and subsetting.

Cuando Aspose.Words encuentra una fuente en el documento por primera vez, intenta obtener información básica de fuentes, como el nombre completo de la fuente, el nombre de la familia, la versión, el estilo, de los archivos de fuentes ubicados en cada fuente de fuente. Después de recuperar todas las fuentes, Aspose.Words utiliza estos detalles para encontrar los datos de fuentes requeridos o un reemplazo adecuado para la fuente solicitada.

Dado que el procedimiento descrito anteriormente es prolongado, puede afectar negativamente el rendimiento de la aplicación en su primer lanzamiento. Sin embargo, cada instancia de **FontSettings** tiene su propio caché, que podría reducir el tiempo de procesamiento de documentos posteriores. Por ejemplo, puede compartir una instancia de la **FontSettings** clase entre diferentes documentos, que le permite acelerar la carga de los documentos. El siguiente ejemplo demuestra esto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

En el caso cuando **FontSettings** no se define explícitamente, Aspose.Words utiliza el predeterminado **FontSettings** instancia. Esta instancia también se comparte automáticamente entre los documentos, y puede extraerse de la siguiente manera:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Si usted está seguro de que todos los documentos de procesamiento requieren la misma configuración de fuentes, entonces se recomienda configurar y utilizar el predeterminado **FontSettings** instancia. Supongamos que usted necesita utilizar las mismas fuentes de fuentes para todos sus documentos. En este caso, puede modificar la instancia predeterminada como sigue:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

La medida **FontSettings** tienen mayor prioridad que la instancia predeterminada.

{{% /alert %}}

## Disponibilidad y sustitución de fuentes

Un texto en un documento puede ser formateado con varias fuentes, como Arial, Times New Roman, Verdana y otros. Cuando Aspose.Words hace un documento, intenta seleccionar las fuentes especificadas en el documento.

Sin embargo, hay situaciones cuando la fuente exacta no se puede encontrar y Aspose.Words debe sustituirlo por una fuente similar. Aspose.Words selecciona la fuente según el siguiente proceso:

1. Aspose.Words intenta encontrar una fuente entre las fuentes disponibles con un nombre exacto de la fuente.
1. Aspose.Words intenta encontrar la fuente requerida entre las fuentes incrustadas en el documento original. Algunos formatos de documentos como DOCX pueden contener fuentes incrustadas.
1. Si Aspose.Words es incapaz de localizar la fuente requerida con el partido de nombre exacto, y [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) propiedad definida para esta fuente, entonces Aspose.Words encontrará la fuente definida con **AltName** de la [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) class, which specifies the font information.
1. Si Aspose.Words no puede localizar la fuente definida, y **AltName** no se define también, entonces las reglas de sustitución de fuentes se aplican uno por uno, como se describe a continuación (cuando se encuentra el reemplazo apropiado, el proceso de sustitución de fuentes se detiene y el siguiente paso no se ejecuta):
   1. Aspose.Words intentará aplicar la configuración de la fuente OS, si están disponibles, utilizando `FontConfig` Utilidad. This Non-Windows función debe ser utilizado con un sistema operativo compatible con FontConfig. Casi cualquier sistema operativo basado en Unix ya tiene un `FontConfig` biblioteca que está diseñada para proporcionar configuración de fuentes a todo el sistema, personalización y acceso a aplicaciones. De lo contrario, esta biblioteca puede ser fácilmente instalada por el usuario.<br/>
      Aspose.Words sabe cómo consultar datos e interpretar los resultados de FontConfig para sus propios propósitos. Por defecto, el `FontConfig` La utilidad está desactivada. Puede activarlo de la siguiente manera:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. El siguiente paso es un mecanismo simple, pero increíblemente poderoso llamado [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). Por defecto, esta función está activa y disponible para cualquier sistema operativo. Aspose.Words utiliza tablas XML que definen reglas básicas de sustitución para diferentes OS. Según la regla de sustitución Tabla, se utilizará la lista de nombres de fuentes sustitutivas.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - una fuente a ser reemplazada, SubstituteFonts - lista de variantes de sustitución, separada por una coma. La primera fuente disponible se utiliza para reemplazar.<br/>
      La característica principal de esta regla es la capacidad de cargar sus propias tablas de sustitución, como se muestra en el siguiente ejemplo:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      Puede tomar como base la tabla existente del frasco o guardarla programáticamente de la siguiente manera:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      A pesar de la flexibilidad de este mecanismo, hay algunos casos en que es mejor desactivarlo, como se muestra a continuación:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. El **FontInfo** La regla de sustitución se aplicará si la regla de sustitución de la tabla no puede encontrar la fuente. Este mecanismo está habilitado por defecto. Aspose.Words encuentra la fuente más adecuada según la información de la fuente contenida en un documento en particular. Esta información puede obtenerse de la **FontInfo** clase como se muestra a continuación:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Los usuarios no pueden interferir en el flujo de trabajo de esta característica a menos que decidan deshabilitarlo en caso de resultados insatisfactorios:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Si **FontInfo** no está disponible para la fuente desaparecida, entonces el proceso se detiene.
   1. **DefaultFont** la norma de sustitución se aplicará en el caso en que la `FontInfo` La sustitución también ha fracasado. Esta regla también está habilitada por defecto. Según esta regla, Aspose.Words intentará utilizar la fuente predeterminada especificada en el [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) propiedad. Si el usuario no ha elegido su propia fuente predeterminada, entonces "Times New Roman" será utilizado como la fuente predeterminada. Esta regla puede desactivarse como se muestra a continuación:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Para comprobar la fuente predeterminada actual, utilice:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Para configurar su propia opción de reemplazo, aplicar:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Si Aspose.Words no puede realizar la sustitución de fuentes, intenta obtener la primera fuente disponible de fuentes disponibles.
1. Por último, si Aspose.Words no puede encontrar ninguna fuente entre las fuentes disponibles, que renderiza el documento utilizando la fuente gratuita Fanwood que está incrustada en Aspose.Words asamblea.

{{% alert color="primary" %}}

Si **FontInfo** está disponible, la regla de sustitución *FontInfo* siempre resolverá la fuente y anulará la regla de fuente predeterminada. Si desea utilizar la regla de fuente predeterminada, debe deshabilitar la regla de sustitución *FontInfo*. Tenga en cuenta que la regla de sustitución *FontConfig* resolverá la fuente en la mayoría de los casos, y así anula todas las demás reglas.

{{% /alert %}}

## Cómo reconocer Que la fuente fue reemplazada

A veces, puede no estar claro por qué el diseño del documento ha cambiado, o por qué alguna fuente no parece lo esperado. En tales casos, la sustitución de fuentes advierte mensajes implementados por el [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) Interfaz viene a rescatar. Tienen el [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) tipo de advertencia y el formato de texto de descripción estándar, "Font '<originalfont>No se ha encontrado. Usando '<substitutionfont>' fuente en su lugar. Razón: <reason>", con las siguientes razones:</reason></substitutionfont></originalfont>

- "nombre alternativo del documento" - para sustitución por [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "sustitución defontconfig" - para sustitución por regla de configuración de fuentes
- "sustitución estable" - para sustitución por regla de mesa
- "sustitución de información de columna" - para sustitución por fuente info regla
- "sustitución de fuentes predeterminadas" - para sustitución por regla de fuente predeterminada
- "primera fuente disponible" - para sustitución con primera fuente disponible

## Ajustes de Font FallBack desde XML

Hay dos mecanismos diferentes utilizados en Aspose.Words - Sustitución de fuentes y retroceso de fuentes. La sustitución de fuentes se utiliza cuando la fuente especificada en el documento no se puede encontrar entre las fuentes de fuentes como se describe en las secciones anteriores. El mecanismo Font fallback se utiliza cuando la fuente se resuelve, pero no contiene un carácter específico. En este caso, Aspose.Words trata de utilizar una de las fuentes de otoño para el personaje.

Hay un [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) método que construye automáticamente la configuración desplegable escaneando fuentes disponibles. Dado que este método puede producir un ajuste desplegable no óptimo, puede controlar el comportamiento descomposición de fuentes utilizando las propiedades de las [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) clase. Esta clase especifica los ajustes del mecanismo descomposición de fuentes. Puedes conseguir una instancia de la **FontFallbackSettings** clase como sigue:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

De forma similar a *Regla de sustitución compatible*, este mecanismo utiliza tablas XML para la configuración. Estas tablas XML se pueden cargar y guardar con los siguientes métodos:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

El Aspose.Words La liberación incluye dos tablas: *MsOfficeFallbackSetting.xml* y *NotoFallbackSetting.xml*.

El *MsOfficeFallbackSetting* tabla define una estrategia de sustitución para una gama de caracteres, que es similar a la estrategia utilizada por Microsoft Word. Así pues, la estrategia requiere la instalación de Microsoft Fuentes de oficina. *MsOfficeFallbackSetting* se puede activar mediante el siguiente método:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

El *NotoFallbackSetting* mesa se crea especialmente para uso con Google Noto fuentes (ver más sobre Google Noto configuración de fuentes en la siguiente sección) y puede ser habilitado como sigue:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

El siguiente ejemplo de código muestra cómo cargar la configuración de caída de fuentes desde un archivo XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

En el ejemplo de código anterior se utiliza el siguiente archivo XML:

{{< highlight html >}}
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
        <!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
        <!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
        <!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
        <Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
        <!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
        <Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial" />
        <!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
        <Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
        <!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
        <Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}

## Ajustes predefinidos de Font FallBack para Google Noto Fuentes

Aspose.Words proporciona ajustes predefinidos de la fuente Google Noto fuentes. Estas son fuentes gratuitas con licencia bajo SIL Open Font License, que se puede descargar Google Noto Fuentes. El **FontFallbackSettings** clase proporciona una [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) método. Carga ajustes predefinidos de la espalda, que utilizan Google Noto fonts as shown in the code example below:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Solo las fuentes de estilo Sans Noto con peso regular se utilizan en ajustes predefinidos.

{{% /alert %}}

## Donde Aspose.Words Busca fuentes

Aspose.Words intenta encontrar fuentes TrueType en el sistema de archivos automáticamente. Por lo general, puede confiar en el comportamiento predeterminado de Aspose.Words para encontrar `TrueType` fuentes, pero a veces necesitas especificar tus propias carpetas que contienen fuentes TrueType. El [Especificar el Verdadero Tipo Fonts Ubicación](/words/es/java/specify-truetype-fonts-location/) tema describe cómo y dónde Aspose.Words busca fuentes, así como cómo especificar sus propias ubicaciones de fuentes.

## Diferencias en el procesamiento de formatos de fuentes en Aspose.Words y Microsoft Word

Hay algunas diferencias en el procesamiento de formatos de fuentes en Aspose.Words y Microsoft Word como se muestra en el cuadro siguiente:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| Fuentes TrueType y fuentes OpenType con esquemas TrueType | Apoyado. | Apoyado. |
| Fuentes OpenType con esquemas PostScript | Apoyado para la mayoría de los escenarios. Embedding a formatos de página fija como PDF y XPS no son compatibles. El texto es reemplazado por imágenes de mapa de bits. | Se apoyó en la mayoría de los escenarios, incluyendo la incorporación a formatos de página fija. |
| Variaciones de fuentes de OpenType | Sólo se admiten casos nombrados. Variaciones continuas no soportadas. | Soportado por la única instancia predeterminada. No se admiten casos marcados y variaciones continuas. |
| Tipo1 fuentes | Apoyo Windows versiones anteriores a 2013 y en versiones MacOS. El apoyo se ha reducido Windows versiones a partir de 2013. | No es compatible. |

## Vea también

- [Google Noto Fuentes](https://fonts.google.com/noto) para descargar fuentes gratuitas


