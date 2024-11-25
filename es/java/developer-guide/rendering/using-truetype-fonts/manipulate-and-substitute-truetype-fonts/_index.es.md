---
title: Manipular y sustituir las fuentes TrueType
second_title: Aspose.Words por Java
articleTitle: Manipular y sustituir las fuentes TrueType
linktitle: Manipular y sustituir las fuentes TrueType
description: "Aspose.Words para Java puede incrustar las fuentes TrueType correctas en el documento resultante para garantizar que se muestre con precisión, o buscar un reemplazo de fuente adecuado, o utiliza el mecanismo de respaldo de fuentes."
type: docs
weight: 10
url: /es/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words requiere fuentes TrueType para una variedad de tareas, incluida la representación de documentos en formatos de página fija, por ejemplo, PDF o XPS. Cuando Aspose.Words procesa un documento, necesita realizar incrustaciones y subconjuntos de incrustaciones de TrueType fuentes en el documento resultante, lo cual es una práctica normal durante la generación de un documento, incluidos los formatos populares PDF o XPS. Esto garantiza que el documento aparecerá igual para cualquier espectador. Además, la especificación XPS requiere que las fuentes estén siempre incrustadas en el documento.

Para garantizar que Aspose.Words mida con precisión los caracteres e incruste correctamente las fuentes relevantes, se deben cumplir las siguientes condiciones:

1. Aspose.Words debería poder encontrar y acceder a los archivos de fuentes TrueType en el sistema.
1. Debe haber suficientes fuentes TrueType disponibles para Aspose.Words, preferiblemente con los mismos nombres de familia de fuentes que los utilizados en el documento.

Tenga en cuenta que la fuente del documento representa una entidad, como apellido, estilo, tamaño, color, que es diferente de la entidad de fuente `TrueType` (fuente física). Aspose.Words convierte la fuente del documento en una fuente física en alguna etapa del procesamiento. Esto habilita ciertas tareas, más comúnmente la tarea de calcular el tamaño del texto durante la construcción del diseño y la incrustación / subconjunto en formatos de página fija. Asimismo, se habilitan otras tareas menos populares, como la resolución y sustitución de fuentes al cargar HTML o incrustar/subconjuntar en algunos formatos de flujo.

## Manipulación de Fuentes y Problemas de Rendimiento

Todos los mecanismos de manipulación de fuentes disponibles están contenidos en la clase [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). Esta clase es responsable de obtener fuentes dentro de las fuentes de fuentes definidas, así como del proceso de sustitución de fuentes, como se describe a continuación.

Las fuentes se analizan en varios pasos:

1. Obtención de información para la fuente, resolviendo desde todas las fuentes disponibles.
1. Analizar las fuentes resueltas para obtener glifos y métricas disponibles (horizontales y verticales).
1. Analizar las fuentes resueltas para incrustarlas y subconjuntarlas.

Cuando Aspose.Words encuentra una fuente en el documento por primera vez, intenta obtener información básica de la fuente, como el nombre completo de la fuente, el apellido, la versión y el estilo, de los archivos de fuentes ubicados en cada fuente. Después de recuperar todas las fuentes, Aspose.Words usa estos detalles para encontrar los datos de fuente requeridos o un reemplazo adecuado para la fuente solicitada.

Dado que el procedimiento descrito anteriormente requiere mucho tiempo, puede afectar negativamente al rendimiento de la aplicación en su primer lanzamiento. Sin embargo, cada instancia de **FontSettings** tiene su propia caché, lo que podría reducir el tiempo de procesamiento de los documentos posteriores. Por ejemplo, puede compartir una instancia de la clase **FontSettings** entre diferentes documentos, lo que le permite acelerar la carga de los documentos. El siguiente ejemplo demuestra esto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

En el caso de que **FontSettings** no esté definido explícitamente, Aspose.Words usa la instancia predeterminada **FontSettings**. Esta instancia también se comparte automáticamente entre documentos y se puede extraer de la siguiente manera:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Si está seguro de que todos los documentos de procesamiento requieren la misma configuración de fuente, se recomienda configurar y utilizar la instancia predeterminada **FontSettings**. Supongamos que necesita utilizar las mismas fuentes para todos sus documentos. En este caso, puede modificar la instancia predeterminada de la siguiente manera:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

La **FontSettings** personalizada tiene mayor prioridad que la instancia predeterminada.

{{% /alert %}}

## Disponibilidad y Sustitución de Fuentes

Un texto en un documento se puede formatear con varias fuentes, como Arial, Times New Roman, Verdana y otras. Cuando Aspose.Words representa un documento, intenta seleccionar las fuentes especificadas en el documento.

Sin embargo, hay situaciones en las que no se puede encontrar la fuente exacta y Aspose.Words debe sustituirla por una fuente similar. Aspose.Words selecciona la fuente de acuerdo con el siguiente proceso:

1. Aspose.Words intenta encontrar una fuente entre las fuentes disponibles con un nombre de fuente exacto.
1. Aspose.Words intenta encontrar la fuente requerida entre las fuentes incrustadas en el documento original. Algunos formatos de documento, como DOCX, pueden contener fuentes incrustadas.
1. Si Aspose.Words no puede localizar la fuente requerida con la coincidencia exacta del nombre y la propiedad [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) definida para esta fuente, Aspose.Words encontrará la fuente definida con **AltName** de la clase [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/), que especifica la información de la fuente.
1. Si Aspose.Words no puede localizar la fuente definida y **AltName** no está definida también, entonces las reglas de sustitución de fuentes se aplican una a una, como se describe a continuación (cuando se encuentra el reemplazo apropiado, el Proceso de Sustitución de fuentes se detiene y el siguiente paso no se ejecuta):
   1. Aspose.Words intentará aplicar la configuración de fuente OS, si está disponible, mediante la utilidad `FontConfig`. Esta característica que no esWindows debe usarse con un OS compatible con FontConfig. Casi cualquier OS basado en Unix ya tiene una biblioteca `FontConfig` diseñada para proporcionar configuración de fuentes en todo el sistema, personalización y acceso a las aplicaciones. De lo contrario, el usuario puede instalar fácilmente esta biblioteca.<br>
      Aspose.Words sabe cómo consultar datos e interpretar FontConfig resultados para sus propios fines. De forma predeterminada, la utilidad `FontConfig` está deshabilitada. Puede habilitarlo de la siguiente manera:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. El siguiente paso es un mecanismo simple pero increíblemente poderoso llamado [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). De forma predeterminada, esta función está activa y disponible para cualquier OS. Aspose.Words usa XML tablas que definen reglas básicas de sustitución para diferentes OS. De acuerdo con la regla de sustitución de tablas, se utilizará la lista de nombres de fuentes sustitutas.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - una fuente a reemplazar, SubstituteFonts - lista de variantes de sustitución, separadas por una coma. La primera fuente disponible se usa como reemplazo.<br>
      La característica principal de esta regla es la capacidad de cargar sus propias tablas de sustitución, como se muestra en el siguiente ejemplo:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      Puede tomar como base la tabla existente del jar o guardarla mediante programación de la siguiente manera:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      A pesar de la flexibilidad de este mecanismo, hay algunos casos en los que es mejor desactivarlo, como se muestra a continuación:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. La regla de sustitución **FontInfo** se aplicará si la regla de sustitución de tabla no puede encontrar la fuente. Este mecanismo está habilitado por defecto. Aspose.Words encuentra la fuente más adecuada de acuerdo con la información de fuente contenida en un documento en particular. Esta información se puede obtener de la clase **FontInfo** como se muestra a continuación:<br>
**Java**
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Los usuarios no pueden interferir en el flujo de trabajo de esta función a menos que decidan deshabilitarla en caso de resultados insatisfactorios:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Si **FontInfo** no está disponible para la fuente faltante, entonces el proceso se detiene.
   1. la regla de sustitución **DefaultFont** se aplicará en el caso de que la sustitución `FontInfo` también haya fallado. Esta regla también está habilitada de forma predeterminada. De acuerdo con esta regla, Aspose.Words intentará utilizar la fuente predeterminada especificada en la propiedad [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName). Si el usuario no ha elegido su propia fuente predeterminada, se utilizará "Times New Roman" como fuente predeterminada. Esta regla se puede deshabilitar como se muestra a continuación:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Para verificar la fuente predeterminada actual, use:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Para configurar su propia opción de reemplazo, solicite:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Si Aspose.Words no puede realizar la sustitución de fuentes, intenta obtener la primera fuente disponible de las fuentes disponibles.
1. Finalmente, si Aspose.Words no puede encontrar ninguna fuente entre las fuentes de fuentes disponibles, procesa el documento utilizando la fuente Fanwood gratuita que está incrustada en el ensamblaje Aspose.Words.

{{% alert color="primary" %}}

Si **FontInfo** está disponible, *FontInfo substitution rule* siempre resolverá la fuente y anulará la regla de fuente predeterminada. Si desea utilizar la regla de fuente predeterminada, debe deshabilitar *FontInfo substitution rule*. Tenga en cuenta que *FontConfig substitution rule* resolverá la fuente en la mayoría de los casos y, por lo tanto, anulará todas las demás reglas.

{{% /alert %}}

## Cómo Reconocer Que la Fuente Fue Reemplazada

A veces, puede no estar claro por qué ha cambiado el diseño del documento o por qué alguna fuente no se ve como se esperaba. En tales casos, los mensajes de advertencia de sustitución de fuentes implementados por la interfaz [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) vienen al rescate. Tienen el tipo de advertencia [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) y el formato de texto de descripción estándar, " No se ha encontrado la fuente '<OriginalFont>'. Usando la fuente '<SubstitutionFont> ' en su lugar. Motivo: <Reason>", con los siguientes motivos:

- "nombre alternativo del documento" - para la sustitución por [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "sustitución de fontconfig" - para la sustitución por la regla de configuración de fuentes
- "sustitución de tabla" - para la sustitución por regla de tabla
- "sustitución de información de fuente" - para la sustitución por la regla de información de fuente
- "sustitución de fuente predeterminada": para la sustitución de la regla de fuente predeterminada
- "primera fuente disponible" – para sustituirla por la primera fuente disponible

## Configuración de fuente FallBack desde XML

Hay dos mecanismos diferentes utilizados en Aspose.Words: Sustitución de fuentes y respaldo de fuentes. La sustitución de fuentes se utiliza cuando la fuente especificada en el documento no se pudo encontrar entre las fuentes como se describió en las secciones anteriores. El mecanismo de respaldo de fuentes se usa cuando se resuelve la fuente, pero no contiene un carácter específico. En este caso, Aspose.Words intenta usar una de las fuentes alternativas para el carácter.

Existe un método [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) que crea automáticamente la configuración alternativa escaneando las fuentes disponibles. Dado que este método puede producir una configuración alternativa no óptima, puede controlar el comportamiento alternativo de la fuente utilizando las propiedades de la clase [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/). Esta clase especifica la configuración del mecanismo de respaldo de fuentes. Puede obtener una instancia de la clase **FontFallbackSettings** de la siguiente manera:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

De manera similar a *Table substitution rule*, este mecanismo usa tablas XML para la configuración. Estas XML tablas se pueden cargar y guardar con los siguientes métodos:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

La versión Aspose.Words incluye dos tablas: *MsOfficeFallbackSetting.xml* y *NotoFallbackSetting.xml*.

La tabla *MsOfficeFallbackSetting* define una estrategia de reemplazo para un rango de caracteres, que es similar a la estrategia utilizada por Microsoft Word. Por lo tanto,la estrategia requiere la instalación de Microsoft fuentes de Office. *MsOfficeFallbackSetting* se puede activar mediante el siguiente método:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

La tabla *NotoFallbackSetting* se crea especialmente para usarse con fuentes Google Noto (consulte más información sobre la configuración de fuentes Google Noto en la siguiente sección) y se puede habilitar de la siguiente manera:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

El siguiente ejemplo de código muestra cómo cargar la configuración de respaldo de fuentes desde un archivo XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

En el ejemplo de código anterior, se usa el siguiente archivo XML:

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

## Configuración de fuente predefinida FallBack para Fuentes Google Noto

Aspose.Words proporciona configuraciones predefinidas de respaldo de fuentes para Google Noto fuentes. Estas son fuentes gratuitas con licencia SIL Open Font License, que se pueden descargar desde Google Noto Fonts. La clase **FontFallbackSettings** proporciona un método [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings). Carga configuraciones alternativas predefinidas, que usan fuentes Google Noto como se muestra en el ejemplo de código a continuación:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Solo las fuentes Sans style Noto con grosor regular se utilizan en configuraciones predefinidas.

{{% /alert %}}

## Donde Aspose.Words Busca Fuentes

Aspose.Words intenta encontrar TrueType fuentes en el sistema de archivos automáticamente. Por lo general, puede confiar en el comportamiento predeterminado de Aspose.Words para encontrar las fuentes `TrueType`, pero a veces necesita especificar sus propias carpetas que contengan fuentes TrueType. El [Especifica la ubicación de las fuentes TrueType](/words/java/specify-truetype-fonts-location/) el tema describe cómo y dónde Aspose.Words busca las fuentes, así como cómo especificar sus propias ubicaciones de fuentes.

## Diferencias en el Procesamiento de Formatos de fuente en Aspose.Words y Microsoft Word

Existen algunas diferencias en el procesamiento de formatos de fuente en Aspose.Words y Microsoft Word como se muestra en la tabla a continuación:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType fuentes y OpenType fuentes con TrueType contornos | Apoyado. | Apoyado. |
| OpenType fuentes con PostScript contornos | Compatible con la mayoría de los escenarios. No se admite la incrustación en formatos de página fija como PDF y XPS. El texto se reemplaza con imágenes de mapa de bits. | Compatible con la mayoría de los escenarios, incluida la incrustación en formatos de página fija. |
| OpenType Variaciones de fuente | Solo se admiten instancias con nombre. No se admiten variaciones continuas. | Compatible con la única instancia predeterminada. No se admiten instancias con nombre ni variaciones continuas. |
| Fuentes Type1 | Compatible con las versiones Windows anteriores a 2013 y MacOS. El soporte se elimina en las versiones Windows a partir de 2013. | No soportado. |

## Véase También

- [Google Noto Fuentes](https://fonts.google.com/noto) para descargar fuentes gratuitas


