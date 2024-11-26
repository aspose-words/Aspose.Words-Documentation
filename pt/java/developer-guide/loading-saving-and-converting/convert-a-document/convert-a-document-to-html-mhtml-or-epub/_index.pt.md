---
title: Converter um documento em HTML, MHTML ou EPUB
second_title: Aspose.Words para Java
articleTitle: Converter um documento em HTML, MHTML ou EPUB
linktitle: Converter um documento em HTML, MHTML ou EPUB
description: "Utilize Aspose.Words para Java para converter documentos do Word ou de quaisquer outros formatos suportados para HTML, MHTML ou EPUB."
type: docs
weight: 20
url: /pt/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Documentos nos formatos de layout de fluxo HTML e MHTML também são muito populares e podem ser usados em qualquer plataforma da web. Por esse motivo, a conversão de documentos para HTML e MHTML é uma característica importante de Aspose.Words.

EPUB (abreviação de" publicação eletrônica") é um formato baseado em HTML comumente usado para distribuição de livros eletrônicos. Este formato é totalmente suportado em Aspose.Words para a exportação de livros electrónicos compatíveis com a maioria dos dispositivos de leitura.

## Converter um documento

Para uma conversão simples para HTML, MHTML ou EPUB, é utilizada uma das sobrecargas do método [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int). Você pode salvar o documento em um arquivo ou fluxo e definir explicitamente o formato de salvamento do documento de saída ou defini-lo a partir da extensão de nome de arquivo.

O exemplo a seguir mostra como converter DOCX para HTML especificando um formato de salvamento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Para converter um documento em MHTML ou EPUB, use `SaveFormat.MHTML` ou `SaveFormat.EPUB` respectivamente.

## Converter um documento com informações de ida e volta

O formato HTML não suporta muitos recursos Microsoft Word e, se precisarmos restaurar um modelo de documento o mais próximo possível do original, precisamos salvar algumas informações extras no arquivo HTML. Essas informações são também chamadas de"informações de ida e volta". Para esse fim, Aspose.Words fornece a capacidade de exportar informações de ida e volta ao salvar em HTML, MHTML ou EPUB Usando a propriedade [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation). Salvar as informações de ida e volta permite restaurar as propriedades do documento, como guias, comentários, cabeçalhos e rodapés, durante o carregamento de documentos dos formatos listados de volta em um objeto **Document**.

O valor predefinido é **true** para HTML e **false** para MHTML e EPUB:

- Quando **true**, as informações de ida e volta são exportadas como - aw - * CSS propriedades dos elementos HTML correspondentes
- Quando **false**, não há informações de ida e volta a serem enviadas para os arquivos produzidos

O exemplo de código a seguir mostra como exportar informações de ida e volta ao converter um documento de DOCX para HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Especifique as opções de salvamento ao converter para HTML

Aspose.Words permite converter um documento do Word para HTML usando opções de salvamento padrão ou personalizadas. Alguns exemplos de opções de salvamento personalizadas são descritos abaixo.

### Especifique uma pasta para salvar recursos

Usando Aspose.Words podemos especificar uma pasta física onde todos os recursos, como imagens, fontes e externo CSS, são salvos quando um documento é convertido em HTML. Por padrão, esta é uma string vazia.

Especificar a propriedade [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) é a maneira mais simples de definir a pasta onde todos os recursos devem ser gravados. Podemos usar propriedades individuais, como [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) que salva fontes na pasta especificada e [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) que salva imagens em uma pasta especificada. Quando um caminho relativo é especificado, **FontsFolder** e **ImagesFolder** referem-se à pasta onde o conjunto de código está localizado, **ResourceFolder** e [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) referem-se à pasta de saída onde o documento HTML está localizado.

Neste exemplo, **ResourceFolder** especifica o caminho relativo. Este caminho refere-se à pasta de saída onde o documento HTML é guardado. O valor da propriedade **ResourceFolderAlias** é usado para criar URLs para todos os recursos.

O exemplo de código a seguir mostra como trabalhar com essas propriedades:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Usando a propriedade [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias), também podemos especificar o nome da pasta usada para construir URIs de todos os recursos gravados em um documento HTML. Esta é a maneira mais simples de especificar como URIs deve ser gerado para todos os arquivos de recursos. As mesmas informações podem ser especificadas para imagens e fontes separadamente através das propriedades [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) e [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias), respectivamente.

No entanto, não existe propriedade individual para CSS. O comportamento do **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** e **CssStyleSheetFileName** as propriedades não são alteradas. Observe que a propriedade **CssStyleSheetFileName** é usada para especificar o nome da pasta e o nome do arquivo.

- **ResourceFolder** tem prioridade mais baixa do que as pastas especificadas via **FontsFolder**, **ImagesFolder** e **CssStyleSheetFileName**. Se a pasta especificada no **ResourceFolder** não existir, ela será criada automaticamente.
- **ResourceFolderAlias** tem uma prioridade inferior a **FontsFolderAlias** e **ImagesFolderAlias**. Se **ResourceFolderAlias** estiver vazio, o valor da propriedade **ResourceFolder** será usado para criar o recurso URIs. Se **ResourceFolderAlias** estiver definido como "." (ponto), o recurso URIs conterá apenas nomes de arquivo sem especificar um caminho.

### Exportar Fontes De Codificação Base64 Recursos

Aspose.Words fornece uma habilidade para especificar se recursos de fonte devem ser incorporados em HTML em codificações Base64. Para fazer isso, use a propriedade [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) – esta é uma extensão da propriedade [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources). Por padrão, seu valor é **false**, e fontes são escritas em arquivos separados. Mas se esta opção for definida como **true**, fontes serão incorporadas no CSS do documento em codificação Base64. A propriedade **ExportFontsAsBase64** afeta somente o formato HTML e não afeta EPUB e MHTML.

O exemplo de código a seguir mostra como exportar fontes codificadas em Base64 para HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Especifique as opções de salvamento ao converter para EPUB

Aspose.Words permite converter um documento do Word para o formato EPUB usando as opções de salvamento padrão ou personalizadas. Você pode especificar várias opções passando uma instância de [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) para o método [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions).

O exemplo de código a seguir mostra como converter um documento do Word em EPUB com a especificação de algumas opções de salvamento personalizadas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## Ver Também

- [Como exportar informa intestes de ida e volta ao salvar em HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
