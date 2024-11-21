---
title: Sustituir fuentes TrueType
second_title: Aspose.Words para Python via .NET
articleTitle: Manipular y sustituir fuentes TrueType
linktitle: Manipular y sustituir fuentes TrueType
description: "Aspose.Words para Python via .NET puede incrustar las fuentes TrueType correctas en el documento resultante para garantizar que se muestre con precisión. Si una fuente o un carácter específico no está disponible, Aspose.Words busca una fuente de reemplazo adecuada o utiliza el mecanismo de reserva de fuentes."
type: docs
weight: 10
url: /es/python-net/manipulating-and-substitution-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words requiere fuentes TrueType para una variedad de tareas, incluida la representación de documentos en formatos de página fija, por ejemplo, PDF o XPS. Cuando Aspose.Words procesa un documento, necesita realizar la incrustación y la incrustación de subconjuntos de fuentes TrueType en el documento resultante, lo cual es una práctica normal durante la generación de un documento, incluidos los formatos populares PDF o XPS. Esto garantiza que el documento aparecerá igual para cualquier espectador. Además, la especificación XPS requiere que las fuentes estén siempre incrustadas en el documento.

Para garantizar que Aspose.Words mida con precisión los caracteres e incruste correctamente las fuentes relevantes, se deben cumplir las siguientes condiciones:

1. Aspose.Words debería poder encontrar y acceder a archivos de fuentes TrueType en el sistema.
1. Debe haber suficientes fuentes TrueType disponibles para Aspose.Words, preferiblemente con los mismos nombres de familia de fuentes que las utilizadas en el documento.

Tenga en cuenta que la fuente del documento representa una entidad, como el apellido, el estilo, el tamaño y el color, que es diferente de la entidad de fuente `TrueType` (fuente física). Aspose.Words convierte la fuente del documento en una fuente física en alguna etapa del procesamiento. Esto permite ciertas tareas, más comúnmente la tarea de calcular el tamaño del texto durante la construcción del diseño y la incrustación/subconfiguración en formatos de página fija. También están habilitadas otras tareas menos populares, como la resolución y sustitución de fuentes mientras se carga HTML o la incrustación/subconfiguración en algunos formatos de flujo.

## Problemas de rendimiento y manipulación de fuentes

Todos los mecanismos de manipulación de fuentes disponibles están contenidos en la clase [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). Esta clase es responsable de recuperar fuentes dentro de fuentes de fuentes definidas, así como del proceso de sustitución de fuentes, como se describe a continuación.

Las fuentes se analizan en varios pasos:

1. Obtener información para la fuente, resolviendo a partir de todas las fuentes disponibles.
1. Analizar las fuentes resueltas para obtener glifos y métricas disponibles (horizontales y verticales).
1. Analizar las fuentes resueltas para incrustarlas y crear subconjuntos.

Cuando Aspose.Words encuentra una fuente en el documento por primera vez, intenta obtener información básica de la fuente, como el nombre completo de la fuente, el apellido, la versión y el estilo, de los archivos de fuentes ubicados en cada fuente de fuente. Una vez recuperadas todas las fuentes, Aspose.Words utiliza estos detalles para encontrar los datos de fuente requeridos o un reemplazo adecuado para la fuente solicitada.

Dado que el procedimiento descrito anteriormente lleva mucho tiempo, puede afectar negativamente el rendimiento de la aplicación en su primer inicio. Sin embargo, cada instancia de [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) tiene su propia caché, lo que podría reducir el tiempo de procesamiento de documentos posteriores. Por ejemplo, puedes compartir una instancia de la clase [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) entre diferentes documentos, lo que te permite acelerar la carga de los documentos. El siguiente ejemplo demuestra esto:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsWithLoadOption.py" >}}

En el caso de que [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) no esté definido explícitamente, Aspose.Words utiliza la instancia [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) predeterminada. Esta instancia también se comparte automáticamente entre documentos y se puede extraer de la siguiente manera:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsDefaultInstance.py" >}}

Si está seguro de que todos los documentos procesados requieren la misma configuración de fuente, se recomienda configurar y utilizar la instancia [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) predeterminada. Suponga que necesita utilizar las mismas fuentes de fuentes para todos sus documentos. En este caso, puedes modificar la instancia predeterminada de la siguiente manera:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsFontSource.py" >}}

{{% alert color="primary" %}}

El [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) personalizado tiene mayor prioridad que la instancia predeterminada.

{{% /alert %}}

## Disponibilidad y sustitución de fuentes

El texto de un documento se puede formatear con varias fuentes, como Arial, Times New Roman, Verdana y otras. Cuando Aspose.Words procesa un documento, intenta seleccionar las fuentes especificadas en el documento.

Sin embargo, hay situaciones en las que no se puede encontrar la fuente exacta y Aspose.Words debe sustituirla por una fuente similar. Aspose.Words selecciona la fuente según el siguiente proceso:
1. Aspose.Words intenta encontrar una fuente entre las fuentes disponibles con un nombre de fuente exacto.
1. Aspose.Words intenta encontrar la fuente requerida entre las fuentes incrustadas en el documento original. Algunos formatos de documentos, como DOCX, pueden contener fuentes incrustadas.
1. Si Aspose.Words no puede localizar la fuente requerida con el nombre exacto que coincide y la propiedad [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) definida para esta fuente, entonces Aspose.Words encontrará la fuente definida con [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) de la clase [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/), que especifica la información de la fuente.
1. Si Aspose.Words no puede ubicar la fuente definida y [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) tampoco está definido, entonces las reglas de sustitución de fuentes se aplican una por una, como se describe a continuación (cuando se encuentra el reemplazo adecuado, el proceso de sustitución de fuentes se detiene y el el siguiente paso no se ejecuta):
	1. Primero, Aspose.Words intenta procesar el nombre de la fuente para obtener la sustitución, en particular intenta eliminar los sufijos con separadores "-" y ",".<br>
	Si se aplica esta regla de sustitución, no se ha encontrado una "fuente '&lt;OriginalFont&gt;'. En su lugar se utiliza la fuente '&lt;SubstitutionFont&gt;'. Motivo: sustitución del nombre de la fuente". Aparece una advertencia.<br>
	1. Luego, Aspose.Words intenta aplicar la configuración de fuente del sistema operativo, si está disponible, utilizando la utilidad **FontConfig**. Esta función no Windows debe usarse con un sistema operativo compatible con FontConfig. Casi cualquier sistema operativo basado en Unix ya tiene una biblioteca `FontConfig` diseñada para proporcionar configuración de fuentes, personalización y acceso a aplicaciones en todo el sistema. De lo contrario, el usuario puede instalar fácilmente esta biblioteca.
	Aspose.Words sabe cómo consultar datos e interpretar los resultados de FontConfig para sus propios fines. De forma predeterminada, la utilidad `FontConfig` está deshabilitada. Puedes habilitarlo de la siguiente manera:<br>
{{< highlight python >}}
fontSettings.substitution_settings.font_config_substitution.enabled = True
{{< /highlight >}}
	1. El siguiente paso utiliza un mecanismo simple pero poderoso llamado regla de sustitución **Table**. De forma predeterminada, esta función está activa y disponible para el sistema operativo determinado. Aspose.Words sustituirá la fuente con esta regla si no se sustituye con la regla de sustitución `FontConfig`.<br>
	Aspose.Words utiliza tablas XML, que definen las reglas básicas de sustitución para diferentes sistemas operativos. De acuerdo con la regla de sustitución de tablas, se utilizará la lista de nombres de fuentes sustitutas.<br>
	**XML**<br>
	{{< highlight html >}}
	<TableSubstitutionSettings xmlns="Aspose.Words"> 
		<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
		</SubstitutesTable> 
	</TableSubstitutionSettings>
	{{< /highlight >}}
	La característica principal de esta regla es la capacidad de cargar sus propias tablas de sustitución, como se muestra en el siguiente ejemplo:<br>
	{{< highlight python >}}
	fontSettings.substitution_settings.table_substitution.load("Table.xml")
	{{< /highlight >}}
	A pesar de la flexibilidad de este mecanismo, hay algunos casos en los que es mejor desactivarlo, como se muestra a continuación:<br>
	{{< highlight python >}}
	fontSettings.substitution_settings.table_substitution.enabled = False
	{{< /highlight >}}
	1. Se aplicará la regla de sustitución [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) si la regla de sustitución de la tabla no puede encontrar la fuente. Este mecanismo está habilitado de forma predeterminada. Aspose.Words encuentra la fuente más adecuada según la información de fuente contenida en un documento en particular. Esta información se puede obtener de la clase [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) como se muestra a continuación:<br>
	{{< highlight python >}}
	fontInfos = doc.font_infos
	{{< /highlight >}}
	Los usuarios no pueden interferir en el flujo de trabajo de esta función, a menos que decidan desactivarla en caso de resultados insatisfactorios:<br>
	{{< highlight python >}}
	fontSettings.substitution_settings.font_info_substitution.enabled = False
	{{< /highlight >}}
	Si [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) no está disponible para la fuente que falta, el proceso se detiene.<br>
	1. La regla de sustitución [DefaultFont](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/) se aplicará en el caso de que la sustitución `FontInfo` también haya fallado. Esta regla también está habilitada de forma predeterminada. Según esta regla, Aspose.Words intentará utilizar la fuente predeterminada especificada en la propiedad [default_font_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/default_font_name/). Si el usuario no ha elegido su propia fuente predeterminada, se utilizará "Times New Roman" como fuente predeterminada. Esta regla se puede desactivar como se muestra a continuación:<br>
	{{< highlight python >}}
	fontSettings.substitution_settings.default_font_substitution.enabled = False
	{{< /highlight >}}
	Para verificar la fuente predeterminada actual, use:<br>
	{{< highlight python >}}
	fontSettings.substitution_settings.default_font_substitution.default_font_name
	{{< /highlight >}}
	Para configurar su propia opción de reemplazo, solicite:<br>
	{{< highlight python >}}
	fontSettings.substitution_settings.default_font_substitution.default_font_name = "Arial"
	{{< /highlight >}}
1. Si Aspose.Words no puede realizar la sustitución de fuentes, intenta obtener la primera fuente disponible de las fuentes de fuentes disponibles.
1. Finalmente, si Aspose.Words no puede encontrar ninguna fuente entre las fuentes de fuentes disponibles, procesa el documento utilizando la fuente Fanwood gratuita que está integrada en el paquete Aspose.Words.<br>

Si [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) está disponible, la *regla de sustitución de FontInfo* siempre resolverá la fuente y anulará la regla de fuente predeterminada. Si desea utilizar la regla de fuente predeterminada, debe desactivar la *regla de sustitución de FontInfo*. Tenga en cuenta que la *regla de sustitución de FontConfig* resolverá la fuente en la mayoría de los casos y, por lo tanto, anulará todas las demás reglas.

## Configuración de reserva de fuentes desde XML

Hay dos mecanismos diferentes utilizados en Aspose.Words: sustitución de fuentes y reserva de fuentes. La sustitución de fuentes se utiliza cuando la fuente especificada en el documento no se puede encontrar entre las fuentes de fuentes como se describió en las secciones anteriores. El mecanismo de reserva de fuente se utiliza cuando se resuelve la fuente, pero no contiene un carácter específico. En este caso, Aspose.Words intenta utilizar una de las fuentes alternativas para el carácter.

Existe un método [build_automatic](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/build_automatic/) que crea automáticamente la configuración alternativa escaneando las fuentes disponibles. Dado que este método puede producir una configuración de reserva no óptima, puede controlar el comportamiento de reserva de la fuente utilizando las propiedades de la clase [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/). Esta clase especifica la configuración del mecanismo de reserva de fuentes. Puede obtener una instancia de la clase [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) de la siguiente manera:

{{< highlight python >}}
settings = fontSettings.fallback_settings
{{< /highlight >}}

De manera similar a la *Regla de sustitución de tablas*, este mecanismo utiliza tablas XML para la configuración. Estas tablas XML se pueden cargar y guardar con los siguientes métodos:

{{< highlight python >}}
fontSettings.fallback_settings.load("MyNewFallbackTable.xml")
fontSettings.fallback_settings.save("Current_FallbackTable.xml")
{{< /highlight >}}

La versión Aspose.Words incluye dos tablas: *MsOfficeFallbackSetting.xml* y *NotoFallbackSetting.xml*.

La tabla *MsOfficeFallbackSetting* define una estrategia de reemplazo para una variedad de caracteres, que es similar a la estrategia utilizada por Microsoft Word. Por tanto, la estrategia requiere la instalación de fuentes Microsoft Office. *MsOfficeFallbackSetting* se puede activar mediante el siguiente método:

{{< highlight python >}}
fontSettings.fallback_settings.load_ms_office_fallback_settings()
{{< /highlight >}}

La tabla *NotoFallbackSetting* se crea especialmente para usar con fuentes Google Noto (consulte más sobre la configuración de fuentes Google Noto en la siguiente sección) y se puede habilitar de la siguiente manera:

{{< highlight python >}}
fontSettings.fallback_settings.load_noto_fallback_settings()
{{< /highlight >}}

El siguiente ejemplo de código demuestra cómo cargar la configuración de reserva de fuentes desde un archivo XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontFallbackSettings.py" >}}

En el ejemplo de código anterior, se utiliza el siguiente archivo XML:

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

## Configuración de reserva de fuentes predefinida para fuentes Google Noto

Aspose.Words proporciona configuraciones de reserva de fuentes predefinidas para fuentes Google Noto. Estas son fuentes gratuitas con licencia SIL Open Font License, que se pueden descargar desde Google Noto Fonts. La clase [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) proporciona un método [load_noto_fallback_settings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/load_noto_fallback_settings/). Carga configuraciones de respaldo predefinidas, que usan fuentes Google Noto como se muestra en el ejemplo de código a continuación:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetPredefinedFontFallbackSettings.py" >}}

{{% alert color="primary" %}}

En las configuraciones predefinidas solo se utilizan fuentes Noto estilo Sans con peso regular.

{{% /alert %}}

## Dónde busca Aspose.Words las fuentes

Aspose.Words intenta encontrar fuentes TrueType en el sistema de archivos automáticamente. Por lo general, puede confiar en el comportamiento predeterminado de Aspose.Words para encontrar las fuentes `TrueType`, pero a veces necesita especificar sus propias carpetas que contienen fuentes TrueType. El tema [Especificar la ubicación de las fuentes TrueType](/words/es/python-net/specifying-truetype-fonts-location/) describe cómo y dónde Aspose.Words busca fuentes, así como también cómo especificar sus propias ubicaciones de fuentes.

## Diferencias en el procesamiento de formatos de fuente en Aspose.Words y Microsoft Word

Existen algunas diferencias en el procesamiento de formatos de fuente en Aspose.Words y Microsoft Word, como se muestra en la siguiente tabla:

|  | Palabra Microsoft | Aspose.Words |
|  :-  |  :-  |  :-  |
| Fuentes TrueType y fuentes OpenType con contornos TrueType | Soportado. | Soportado. |
| Fuentes OpenType con contornos PostScript | Compatible con la mayoría de los escenarios. No se admite la incrustación en formatos de página fija como PDF y XPS. El texto se reemplaza con imágenes de mapa de bits. | Compatible con la mayoría de los escenarios, incluida la incrustación en formatos de página fija. |
| Variaciones de fuentes OpenType | Solo se admiten instancias con nombre. No se admiten variaciones continuas. | Compatible solo con la instancia predeterminada. No se admiten instancias con nombre ni variaciones continuas. |
| fuentes tipo 1 | Compatible con versiones Windows anteriores a 2013 y versiones de MacOS. El soporte se elimina en las versiones Windows a partir de 2013. | No soportado. |

## Ver también

- [Fuentes Google Noto](https://fonts.google.com/noto) para descargar fuentes gratuitas
