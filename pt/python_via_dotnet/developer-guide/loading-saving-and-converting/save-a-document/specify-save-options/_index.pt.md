---
title: Especifique as opções de salvamento em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Especifique as opções de salvamento
linktitle: Especifique as opções de salvamento
description: "Controle com mais precisão o processo de salvamento usando Python."
type: docs
weight: 10
url: /pt/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Ao salvar um documento, você pode definir algumas propriedades avançadas. Aspose.Words fornece a classe [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), que permite um controle mais preciso do processo de salvamento. Existem sobrecargas do método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) que aceita um objeto [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) – deve ser um objeto de uma classe derivada da classe [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/). Cada formato de salvamento possui uma classe correspondente que contém opções de salvamento para esse formato de salvamento, por exemplo, existe [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) para salvar no formato PDF ou [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) para salvar em uma imagem. Este artigo fornece exemplos de como trabalhar com algumas classes de opções derivadas de [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/).

O exemplo de código a seguir mostra como definir as opções de salvamento antes de salvar o documento em HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

O artigo descreve algumas propriedades que você pode controlar ao salvar um documento.

## Criptografar um documento com uma senha

Use a propriedade **senha** para obter ou definir uma senha para um documento criptografado. Use a propriedade **senha** da classe correspondente para trabalhar com o formato de documento selecionado.

Por exemplo, ao salvar um documento no formato DOC ou DOT, use a propriedade [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) da classe [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/).

O exemplo de código a seguir mostra como definir uma senha para criptografar um documento usando o método de criptografia RC4:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

Ao salvar um documento no formato [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/), use a propriedade [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) da classe [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/).

O exemplo de código a seguir mostra como carregar e salvar Docx criptografado com uma senha:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Nem todos os formatos suportam criptografia e uso de propriedade **senha**.

## Atualizar o horário de criação do documento

Aspose.Words oferece a capacidade de usar a propriedade [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) para obter ou definir a data de criação do documento em UTC. Você também pode atualizar esse valor antes de salvar usando a opção [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/).

O exemplo de código a seguir mostra como atualizar o horário de criação do documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Atualizar última propriedade salva

Aspose.Words fornece a capacidade de usar a propriedade [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) para obter ou definir um valor que determina se a propriedade [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) é atualizada antes de salvar.

O exemplo de código a seguir mostra como definir essa propriedade e salvar o documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Salvar imagem em preto e branco com formato de um bit por pixel

Para controlar as opções de salvamento de imagens, a classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) é usada. Por exemplo, você pode usar a propriedade [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) para definir o formato de pixel das imagens geradas. Observe que o formato de pixel da imagem de saída pode diferir do valor definido devido ao trabalho do skia.

O exemplo de código a seguir mostra como salvar uma imagem em preto e branco com formato de um bit por pixel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
