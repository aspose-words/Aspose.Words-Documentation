---
title: Especificar opções de Gravação Em C++
second_title: Aspose.Words para C++
articleTitle: Especificar Opções De Gravação
linktitle: Especificar Opções De Gravação
description: "Controle com mais precisão o processo de salvamento."
type: docs
weight: 10
url: /pt/cpp/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Ao salvar um documento, você pode definir algumas propriedades avançadas. Aspose.Words fornece a classe [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), que permite um controle mais preciso do processo de salvamento. Existem sobrecargas do método **Save** que aceitam um objeto **SaveOptions** - deve ser um objeto de uma classe derivada da classe **SaveOptions**. Cada formato de salvamento tem uma classe correspondente que contém opções de salvamento para este formato de salvamento, por exemplo, há [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) para salvar no formato PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) para salvar no formato Markdown ou [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) para salvar em uma imagem. Este artigo fornece exemplos de trabalho com algumas classes de opções derivadas de **SaveOptions**.

O exemplo de código a seguir mostra como definir as opções de salvamento antes de salvar o documento em HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

O artigo descreve algumas propriedades que você pode controlar ao salvar um documento.

## Criptografar um documento com uma senha

Use a propriedade **Password** para obter ou definir uma senha para um documento criptografado. Use a propriedade **Password** da classe correspondente para trabalhar com o formato de documento selecionado.

Por exemplo, ao salvar um documento no formato DOC ou DOT, use a propriedade [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) da classe [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options).

O exemplo de código a seguir mostra como definir uma senha para criptografar um documento usando o método de criptografia RC4:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

Ao salvar um documento no formato ODT, use a propriedade [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) da classe [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options).

O exemplo de código a seguir mostra como carregar e salvar OpenDocument criptografado com uma senha:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

Nem todos os formatos suportam encriptação e a utilização da propriedade **Password**.

## Mostrar Notificações De Progresso Da Gravação De Documentos

Aspose.Words fornece a capacidade de usar a propriedade [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) para receber notificações sobre o andamento do salvamento de documentos.

Agora está disponível ao salvar em DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, ou TXT formatos.

## Actualizar a hora de criação do documento

Aspose.Words permite utilizar a propriedade [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/) para obter ou definir a data de criação do documento em UTC. Você também pode atualizar esse valor antes de salvar usando a opção [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/).

O exemplo de código a seguir mostra como atualizar o tempo de criação do documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## Actualizar A Última Propriedade Guardada

Aspose.Words fornece a capacidade de usar a propriedade [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/) para obter ou definir um valor que determine se a propriedade [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) é atualizada antes de salvar.

O exemplo de código a seguir mostra como definir essa propriedade e salvar o documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## Salvar imagem em preto e branco com um formato de Bit por Pixel

Para controlar as opções de gravação de imagens, é utilizada a classe **ImageSaveOptions**. Por exemplo, você pode usar a propriedade [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/) para definir o formato de pixel para as imagens geradas. Observe que o formato de pixel da imagem de saída pode diferir do valor definido devido ao trabalho de GDI+.

O exemplo de código a seguir mostra como salvar uma imagem em preto e branco com o formato de um bit por pixel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
