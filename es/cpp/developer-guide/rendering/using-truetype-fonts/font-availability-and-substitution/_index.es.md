---
title: MFont Disponibilidad y sustitución en C++
second_title: Aspose.Words para C++
articleTitle: Disponibilidad y Sustitución de Fuentes
linktitle: Disponibilidad y Sustitución de Fuentes
description: "Cuando no se puede encontrar la fuente de sustitución exacta, Aspose.Words debe sustituirla por una fuente similar. Este artículo describe el proceso para encontrar la fuente más adecuada."
type: docs
weight: 12
url: /es/cpp/font-availability-and-substitution/
---

Un texto en un documento se puede formatear con varias fuentes, como Arial, Times New Roman, Verdana y otras. Cuando Aspose.Words representa un documento, intenta seleccionar las fuentes especificadas en el documento.

Sin embargo, hay situaciones en las que no se puede encontrar la fuente exacta y Aspose.Words debe sustituirla por una fuente similar. Aspose.Words selecciona la fuente de acuerdo con el siguiente proceso:

1. Aspose.Words intenta encontrar una fuente entre las fuentes disponibles con un nombre de fuente exacto.
1. Aspose.Words intenta encontrar la fuente requerida entre las fuentes incrustadas en el documento original. Algunos formatos de documento, como DOCX, pueden contener fuentes incrustadas.
1. Si Aspose.Words no puede localizar la fuente requerida con la coincidencia exacta del nombre y la propiedad [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) definida para esta fuente, Aspose.Words encontrará la fuente definida con **AltName** de la clase [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info), que especifica la información de la fuente.
1. Si Aspose.Words no puede localizar la fuente definida y **AltName** no está definida también, entonces las reglas de sustitución de fuentes se aplican una a una, como se describe a continuación (cuando se encuentra el reemplazo apropiado, el Proceso de Sustitución de fuentes se detiene y el siguiente paso no se ejecuta):
   1. Aspose.Words intentará aplicar la configuración de fuentes del sistema operativo, si está disponible, mediante la utilidad `FontConfig`. Esta característica que no esWindows debe usarse con un sistema operativo compatible con FontConfig. Casi todos los sistemas operativos basados en Unix ya tienen una biblioteca `FontConfig` diseñada para proporcionar configuración de fuentes en todo el sistema, personalización y acceso a las aplicaciones. De lo contrario, el usuario puede instalar fácilmente esta biblioteca.<br>
      Aspose.Words sabe cómo consultar datos e interpretar FontConfig resultados para sus propios fines. De forma predeterminada, la utilidad `FontConfig` está deshabilitada. Puede habilitarlo de la siguiente manera:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. El siguiente paso es un mecanismo simple pero increíblemente poderoso llamado [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). De forma predeterminada, esta función está activa y disponible para cualquier sistema operativo. Aspose.Words utiliza tablas XML que definen reglas básicas de sustitución para diferentes sistemas operativos. De acuerdo con la regla de sustitución de tablas, se utilizará la lista de nombres de fuentes sustitutas.<br>
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
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      Puede tomar como base la tabla existente del jar o guardarla mediante programación de la siguiente manera:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      A pesar de la flexibilidad de este mecanismo, hay algunos casos en los que es mejor desactivarlo, como se muestra a continuación:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. La regla de sustitución **FontInfo** se aplicará si la regla de sustitución de tabla no puede encontrar la fuente. Este mecanismo está habilitado por defecto. Aspose.Words encuentra la fuente más adecuada de acuerdo con la información de fuente contenida en un documento en particular. Esta información se puede obtener de la clase **FontInfo** como se muestra a continuación:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      Los usuarios no pueden interferir en el flujo de trabajo de esta función a menos que decidan deshabilitarla en caso de resultados insatisfactorios:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Si **FontInfo** no está disponible para la fuente faltante, entonces el proceso se detiene.
   1. la regla de sustitución **DefaultFont** se aplicará en el caso de que la sustitución `FontInfo` también haya fallado. Esta regla también está habilitada de forma predeterminada. De acuerdo con esta regla, Aspose.Words intentará utilizar la fuente predeterminada especificada en la propiedad [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/). Si el usuario no ha elegido su propia fuente predeterminada, se utilizará "Times New Roman" como fuente predeterminada. Esta regla se puede deshabilitar como se muestra a continuación:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Para verificar la fuente predeterminada actual, use:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      Para configurar su propia opción de reemplazo, solicite:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. Si Aspose.Words no puede realizar la sustitución de fuentes, intenta obtener la primera fuente disponible de las fuentes disponibles.
1. Finalmente, si Aspose.Words no puede encontrar ninguna fuente entre las fuentes de fuentes disponibles, procesa el documento utilizando la fuente Fanwood gratuita que está incrustada en el ensamblaje Aspose.Words.

{{% alert color="primary" %}}

Si **FontInfo** está disponible, *FontInfo substitution rule* siempre resolverá la fuente y anulará la regla de fuente predeterminada. Si desea utilizar la regla de fuente predeterminada, debe deshabilitar *FontInfo substitution rule*. Tenga en cuenta que *FontConfig substitution rule* resolverá la fuente en la mayoría de los casos y, por lo tanto, anulará todas las demás reglas.

{{% /alert %}}


