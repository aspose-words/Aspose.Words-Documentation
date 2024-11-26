---
title: Converter documento em HTML
second_title: Aspose.Words para Python via .NET
articleTitle: Converta um documento para HTML, MHTML ou EPUB
linktitle: Converta um documento para HTML, MHTML ou EPUB
description: "Converta um documento de praticamente qualquer formato para HTML ou MHTML, bem como para o formato EPUB usando Python. Você também pode especificar opções de salvamento para gerenciar o documento de saída."
type: docs
weight: 20
url: /pt/python-net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-01-27-14-07-04
---

Documentos em formatos de layout de fluxo HTML e MHTML também são muito populares e podem ser usados em qualquer plataforma web. Por esse motivo, a conversão de documentos para HTML e MHTML é um recurso importante do Aspose.Words.

EPUB (abreviação de "Publicação Eletrônica") é um formato baseado em HTML comumente usado para distribuição eletrônica de livros. Este formato é totalmente compatível com Aspose.Words para exportação de livros eletrônicos compatíveis com a maioria dos dispositivos de leitura.

## Converter um documento

Para conversão simples para HTML, MHTML ou EPUB, uma das sobrecargas do método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) é usada. Você pode salvar o documento em um arquivo ou fluxo e definir explicitamente o formato de salvamento do documento de saída ou defini-lo a partir da extensão do nome do arquivo.

O exemplo a seguir mostra como converter DOCX em HTML especificando um formato de salvamento:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

Para converter um documento para MHTML ou EPUB, use [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) ou [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub) respectivamente.

## Converta um documento com informações de ida e volta

O formato HTML não suporta muitos recursos Microsoft Word, e se precisarmos restaurar um modelo de documento o mais próximo possível do original, precisaremos salvar algumas informações extras dentro do arquivo HTML. Essas informações também são chamadas de "informações de ida e volta". Para esse propósito, o Aspose.Words oferece a capacidade de exportar informações de ida e volta ao salvar em HTML, MHTML ou EPUB usando a propriedade **export_roundtrip_information**. Salvar as informações de ida e volta permite restaurar propriedades do documento, como guias, comentários, cabeçalhos e rodapés durante o carregamento de documentos dos formatos listados de volta em um objeto [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

O valor padrão é *True* para HTML e *False* para MHTML e EPUB:

- Quando *True*, as informações de ida e volta são exportadas como - aw - * Propriedades CSS dos elementos HTML correspondentes
- Quando *False*, não há informações de ida e volta a serem geradas nos arquivos produzidos

O exemplo de código a seguir mostra como exportar informações de ida e volta ao converter um documento de DOCX em HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Especifique as opções de salvamento ao converter para HTML

Aspose.Words permite converter um documento do Word em HTML usando opções de salvamento padrão ou personalizadas. Alguns exemplos de opções de salvamento personalizadas são descritos abaixo.

### Especifique uma pasta para salvar recursos

Usando Aspose.Words podemos especificar uma pasta física onde todos os recursos, como imagens, fontes e CSS externo, são salvos quando um documento é convertido para HTML. Por padrão, esta é uma string vazia.

Especificar a propriedade [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) é a maneira mais simples de definir a pasta onde todos os recursos devem ser gravados. Podemos usar propriedades individuais, como [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), que salva as fontes na pasta especificada, e [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), que salva as imagens em uma pasta especificada. Quando um caminho relativo é especificado, [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) e [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) referem-se à pasta onde o conjunto de código está localizado, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) e [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) referem-se à pasta de saída onde o documento HTML está localizado.

Neste exemplo, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) especifica o caminho relativo. Este caminho refere-se à pasta de saída onde o documento HTML é salvo. O valor da propriedade [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) é usado para criar URLs para todos os recursos.

O exemplo de código a seguir mostra como trabalhar com essas propriedades:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

Usando a propriedade [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/), também podemos especificar o nome da pasta usada para construir URIs de todos os recursos escritos em um documento HTML. Esta é a maneira mais simples de especificar como os URIs devem ser gerados para todos os arquivos de recursos. As mesmas informações podem ser especificadas para imagens e fontes separadamente por meio das propriedades [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) e [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), respectivamente.

No entanto, não existe uma propriedade individual para CSS. O comportamento das propriedades [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) e [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) não são alterados. Observe que a propriedade [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) é usada para especificar o nome da pasta e o nome do arquivo.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) tem prioridade mais baixa do que pastas especificadas via [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) e [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/). Caso a pasta especificada no [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) não exista, ela será criada automaticamente.
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) tem prioridade menor que [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) e [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). Se [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) estiver vazio, o valor da propriedade [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) será usado para criar URIs de recursos. Se [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) estiver definido como "." (ponto), os URIs de recursos conterão apenas nomes de arquivos sem especificar um caminho.

### Exportar recursos de fontes de codificação Base64

Aspose.Words fornece a capacidade de especificar se os recursos de fonte devem ser incorporados ao HTML em codificações Base64. Para fazer isso, use a propriedade [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) – esta é uma extensão da propriedade [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/). Por padrão, seu valor é *False* e as fontes são gravadas em arquivos separados. Mas se esta opção estiver definida como *True*, as fontes serão incorporadas ao CSS do documento na codificação Base64. A propriedade [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) afeta apenas o formato HTML e não afeta EPUB e MHTML.

O exemplo de código a seguir mostra como exportar fontes codificadas em Base64 para HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Especifique as opções de salvamento ao converter para EPUB

Aspose.Words permite converter um documento do Word para o formato EPUB usando opções de salvamento padrão ou personalizadas. Você pode especificar diversas opções passando uma instância de [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) para o método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/).

O exemplo de código a seguir mostra como converter um documento do Word em EPUB especificando algumas opções de salvamento personalizadas:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir + "Rendering.docx")

# Create a new instance of HtmlSaveOptions. This object allows us to set options that control
# How the output document is saved.
saveOptions = aw.saving.HtmlSaveOptions()

# Specify the desired encoding.
saveOptions.encoding = "utf-8"

# Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB 
# which allows you to limit the size of each HTML part. This is useful for readers which cannot read 
# HTML files greater than a certain size e.g 300kb.
saveOptions.document_split_criteria = aw.saving.DocumentSplitCriteria.HEADING_PARAGRAPH

# Specify that we want to export document properties.
saveOptions.export_document_properties = True

# Specify that we want to save in EPUB format.
saveOptions.save_format = aw.SaveFormat.EPUB

# Export the document as an EPUB file.
doc.save(docs_base.artifacts_dir + "Document.EpubConversion_out.epub", saveOptions)
{{< /highlight >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

