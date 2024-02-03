---
title: Converta um documento para HTML, MHTML ou EPUB em C#
second_title: Aspose.Words para .NET
articleTitle: Converta um documento para HTML, MHTML ou EPUB
linktitle: Converta um documento para HTML, MHTML ou EPUB
description: "Converta um documento de praticamente qualquer formato para HTML ou MHTML, bem como para o formato EPUB usando C#. Você também pode especificar opções de salvamento para gerenciar o documento de saída."
type: docs
weight: 20
url: /pt/net/convert-a-document-to-html-mhtml-or-epub/
---

Documentos em formatos de layout de fluxo HTML e MHTML também são muito populares e podem ser usados em qualquer plataforma web. Por esse motivo, a conversão de documentos para HTML e MHTML é um recurso importante do Aspose.Words.

EPUB (abreviação de "Publicação Eletrônica") é um formato baseado em HTML comumente usado para distribuição eletrônica de livros. Este formato é totalmente compatível com Aspose.Words para exportação de livros eletrônicos compatíveis com a maioria dos dispositivos de leitura.

## Converter um documento

Para conversão simples para HTML, MHTML ou EPUB, uma das sobrecargas do método [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) é usada. Você pode salvar o documento em um arquivo ou fluxo e definir explicitamente o formato de salvamento do documento de saída ou defini-lo a partir da extensão do nome do arquivo.

O exemplo a seguir mostra como converter DOCX em HTML especificando um formato de salvamento:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

Para converter um documento para MHTML ou EPUB, use `SaveFormat.Mhtml` ou `SaveFormat.Epub` respectivamente.

## Converta um documento com informações de ida e volta

O formato HTML não suporta muitos recursos Microsoft Word, e se precisarmos restaurar um modelo de documento o mais próximo possível do original, precisaremos salvar algumas informações extras dentro do arquivo HTML. Essas informações também são chamadas de "informações de ida e volta". Para esse propósito, o Aspose.Words oferece a capacidade de exportar informações de ida e volta ao salvar em HTML, MHTML ou EPUB usando a propriedade [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/). Salvar as informações de ida e volta permite restaurar propriedades do documento, como guias, comentários, cabeçalhos e rodapés durante o carregamento de documentos dos formatos listados de volta em um objeto **Document**.

O valor padrão é **true** para HTML e **false** para MHTML e EPUB:

- Quando **true**, as informações de ida e volta são exportadas como - aw - * Propriedades CSS dos elementos HTML correspondentes
- Quando **false**, não há informações de ida e volta a serem geradas nos arquivos produzidos

O exemplo de código a seguir mostra como exportar informações de ida e volta ao converter um documento de DOCX em HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Especifique as opções de salvamento ao converter para HTML

Aspose.Words permite converter um documento do Word em HTML usando opções de salvamento padrão ou personalizadas. Alguns exemplos de opções de salvamento personalizadas são descritos abaixo.

### Especifique uma pasta para salvar recursos

Usando Aspose.Words podemos especificar uma pasta física onde todos os recursos, como imagens, fontes e CSS externo, são salvos quando um documento é convertido para HTML. Por padrão, esta é uma string vazia.

Especificar a propriedade [ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) é a maneira mais simples de definir a pasta onde todos os recursos devem ser gravados. Podemos usar propriedades individuais, como [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/), que salva as fontes na pasta especificada, e [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/), que salva as imagens em uma pasta especificada. Quando um caminho relativo é especificado, **FontsFolder** e **ImagesFolder** referem-se à pasta onde o conjunto de código está localizado, **ResourceFolder** e [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) referem-se à pasta de saída onde o documento HTML está localizado.

Neste exemplo, **ResourceFolder** especifica o caminho relativo. Este caminho refere-se à pasta de saída onde o documento HTML é salvo. O valor da propriedade **ResourceFolderAlias** é usado para criar URLs para todos os recursos.

O exemplo de código a seguir mostra como trabalhar com essas propriedades:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

Usando a propriedade [ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/), também podemos especificar o nome da pasta usada para construir URIs de todos os recursos escritos em um documento HTML. Esta é a maneira mais simples de especificar como os URIs devem ser gerados para todos os arquivos de recursos. As mesmas informações podem ser especificadas para imagens e fontes separadamente por meio das propriedades [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) e [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/), respectivamente.

No entanto, não existe uma propriedade individual para CSS. O comportamento das propriedades **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** e **CssStyleSheetFileName** não são alterados. Observe que a propriedade **CssStyleSheetFileName** é usada para especificar o nome da pasta e o nome do arquivo.

- **ResourceFolder** tem prioridade mais baixa do que pastas especificadas via **FontsFolder**, **ImagesFolder** e **CssStyleSheetFileName**. Caso a pasta especificada no **ResourceFolder** não exista, ela será criada automaticamente.
- **ResourceFolderAlias** tem prioridade menor que **FontsFolderAlias** e **ImagesFolderAlias**. Se **ResourceFolderAlias** estiver vazio, o valor da propriedade **ResourceFolder** será usado para criar URIs de recursos. Se **ResourceFolderAlias** estiver definido como "." (ponto), os URIs de recursos conterão apenas nomes de arquivos sem especificar um caminho.

### Exportar recursos de fontes de codificação Base64

Aspose.Words fornece a capacidade de especificar se os recursos de fonte devem ser incorporados ao HTML em codificações Base64. Para fazer isso, use a propriedade [ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) – esta é uma extensão da propriedade [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/). Por padrão, seu valor é **false** e as fontes são gravadas em arquivos separados. Mas se esta opção estiver definida como **true**, as fontes serão incorporadas ao CSS do documento na codificação Base64. A propriedade **ExportarFontsAsBase64** afeta apenas o formato HTML e não afeta EPUB e MHTML.

O exemplo de código a seguir mostra como exportar fontes codificadas em Base64 para HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## Especifique as opções de salvamento ao converter para EPUB

Aspose.Words permite converter um documento do Word para o formato EPUB usando opções de salvamento padrão ou personalizadas. Você pode especificar diversas opções passando uma instância de [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) para o método [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/).

O exemplo de código a seguir mostra como converter um documento do Word em EPUB especificando algumas opções de salvamento personalizadas:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Veja também

- [Como exportar informações de ida e volta ao salvar em HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
