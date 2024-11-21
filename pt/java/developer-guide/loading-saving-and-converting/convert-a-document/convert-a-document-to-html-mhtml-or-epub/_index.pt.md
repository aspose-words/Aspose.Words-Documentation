---
title: Converter um documento para HTML, MHTML ou EPUB
second_title: Aspose.Words para Java
articleTitle: Converter um documento para HTML, MHTML ou EPUB
linktitle: Converter um documento para HTML, MHTML ou EPUB
description: "Uso Aspose.Words para Java converter documentos do Word ou quaisquer outros formatos suportados para HTML, MHTML ou EPUB."
type: docs
weight: 20
url: /pt/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Os documentos em formatos HTML e MHTML flow-layout também são muito populares e podem ser usados em qualquer plataforma web. Por essa razão, converter documentos para HTML e MHTML é uma característica importante de Aspose.Words.

EPUB (curto para "Electronic Publication") é um formato baseado em HTML comumente usado para distribuição de livros eletrônicos. Este formato é totalmente suportado Aspose.Words para exportar livros eletrônicos compatíveis com a maioria dos dispositivos de leitura.

## Converter um documento

Para conversão simples para HTML, MHTML ou EPUB, um dos [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) sobrecargas de método é usado. Você pode salvar o documento em um arquivo ou fluxo e definir explicitamente o documento de saída salvar o formato ou defini-lo da extensão do nome do arquivo.

O exemplo a seguir mostra como converter DOCX para HTML com especificar um formato de salvamento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Para converter um documento em MHTML ou EPUB, use `SaveFormat.MHTML` ou `SaveFormat.EPUB` respectivamente.

## Converta um documento com informações de ida e volta

O formato HTML não suporta muitos Microsoft Word recursos, e se precisamos restaurar um modelo de documento o mais próximo possível do original, precisamos salvar algumas informações extras dentro do arquivo HTML. Essas informações também são chamadas de "informações de ida e volta". Com esta finalidade, Aspose.Words fornece uma capacidade de exportar informações de ida e volta ao salvar para HTML, MHTML ou EPUB usando o [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) propriedade. Salvar as informações de ida e volta permite restaurar propriedades de documentos como guias, comentários, cabeçalhos e rodapés durante os documentos de carregamento dos formatos listados de volta em um **Document** objeto.

O valor padrão é **true** para HTML e **false** para MHTML e EPUB:

- Quando? **true**, a informação de ida e volta é exportada como - aw - * Propriedades CSS dos elementos HTML correspondentes
- Quando? **false**, não há nenhuma informação de ida e volta para ser saída em arquivos produzidos

O exemplo a seguir mostra como exportar informações de ida e volta ao converter um documento do DOCX em HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Especifique Salvar opções quando conversão para HTML

Aspose.Words permite converter um documento do Word em HTML usando opções de salvamento padrão ou personalizadas. Poucos exemplos de opções de salvamento personalizadas são descritos abaixo.

### Especifique uma pasta para salvar recursos

Usando Aspose.Words podemos especificar uma pasta física onde todos os recursos, como imagens, fontes e CSS externos, são salvos quando um documento é convertido em HTML. Por padrão, esta é uma string vazia.

Especificando o [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) propriedade é a maneira mais simples de definir a pasta onde todos os recursos devem ser escritos. Podemos usar propriedades individuais, como [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) que salva fontes para a pasta especificada e [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) que salva imagens para uma pasta especificada. Quando um caminho relativo é especificado, **FontsFolder** e **ImagesFolder** consulte a pasta onde o conjunto de código está localizado, **ResourceFolder** e [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) Consulte a pasta de saída onde o documento HTML está localizado.

Neste exemplo, **ResourceFolder** especifica o caminho relativo. Este caminho refere-se à pasta de saída onde o documento HTML é salvo. O valor do **ResourceFolderAlias** propriedade é usado para criar URLs para todos os recursos.

O exemplo de código a seguir mostra como trabalhar com essas propriedades:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Usando o [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) propriedade, também podemos especificar o nome da pasta usada para construir URIs de todos os recursos escritos em um documento HTML. Esta é a maneira mais simples de especificar como URIs devem ser gerados para todos os arquivos de recursos. As mesmas informações podem ser especificadas para imagens e fontes separadamente via [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) e [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) propriedades, respectivamente.

No entanto, não há propriedade individual para CSS. O comportamento do **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** e **CssStyleSheetFileName** propriedades não são alteradas. Note que o **CssStyleSheetFileName** propriedade é usada tanto para especificar o nome da pasta e o nome do arquivo.

- Não. **ResourceFolder** tem prioridade menor do que as pastas especificadas via **FontsFolder**, **ImagesFolder**, e **CssStyleSheetFileName**. Se a pasta especificada na **ResourceFolder** não existe, ele será criado automaticamente.
- Não. **ResourceFolderAlias** tem uma prioridade mais baixa do que **FontsFolderAlias** e **ImagesFolderAlias**. Se **ResourceFolderAlias** está vazio, o valor do **ResourceFolder** propriedade será usado para criar URIs recursos. Se **ResourceFolderAlias** é definido como ". (ponto), URIs de recursos só conterá nomes de arquivos sem especificar um caminho.

### Export Base64 Codificação Fontes Recursos

Aspose.Words fornece uma capacidade de especificar se os recursos de fonte devem ser incorporados em HTML em codificação Base64. Para executar isso, use o [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) propriedade – esta é uma extensão da [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) propriedade. Por padrão, seu valor é **false**, e fontes são escritas em arquivos separados. Mas se esta opção estiver definida **true**, fontes serão incorporadas na codificação CSS do documento em Base64. O **Exportação de produtos como base64** propriedade afeta apenas o formato HTML e não afeta EPUB e MHTML.

O exemplo a seguir mostra como exportar fontes codificadas Base64 para HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Especifique Salvar opções quando conversão para EPUB

Aspose.Words permite converter um documento do Word em formato EPUB usando opções padrão ou personalizadas de salvamento. Você pode especificar um número de opções passando por uma instância de [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) ao [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) método.

O exemplo de código a seguir mostra como converter um documento do Word para EPUB com a especificação de algumas opções de salvamento personalizadas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## Ver também

- [Como exportar informações de ida e volta ao salvar em HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
