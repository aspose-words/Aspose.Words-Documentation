---
title: Especifique as opções de gravação em Java
second_title: Aspose.Words para Java
articleTitle: Especificar Opções De Gravação
linktitle: Especificar Opções De Gravação
description: "Defina propriedades avançadas ao salvar um documento usando Java para fornecer um controle mais preciso sobre o processo."
type: docs
weight: 20
url: /pt/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Ao salvar um documento, você pode definir algumas propriedades avançadas. Aspose.Words fornece a classe [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), que permite um controle mais preciso do processo de salvamento. Existem sobrecargas do método **Save** que aceitam um objeto **SaveOptions** - deve ser um objeto de uma classe derivada da classe **SaveOptions**. Cada formato de salvamento tem uma classe correspondente que contém opções de salvamento para este formato de salvamento, por exemplo, há [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) para salvar no formato PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) para salvar no formato Markdown ou [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) para salvar em uma imagem. Este artigo fornece exemplos de trabalho com algumas classes de opções derivadas de **SaveOptions**.

O exemplo de código a seguir mostra como definir as opções de salvamento antes de salvar o documento em HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

O artigo descreve algumas propriedades que você pode controlar ao salvar um documento.

## Criptografar um documento com uma senha

Use a propriedade **Password** para obter ou definir uma senha para um documento criptografado. Use a propriedade **Password** da classe correspondente para trabalhar com o formato de documento selecionado.

Por exemplo, ao salvar um documento no formato DOC ou DOT, use a propriedade [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) da classe [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/).

O exemplo de código a seguir mostra como definir uma senha para criptografar um documento usando o método de criptografia RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Ao salvar um documento no formato ODT, use a propriedade [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) da classe [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/).

O exemplo de código a seguir mostra como carregar e salvar OpenDocument criptografado com uma senha:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Nem todos os formatos suportam encriptação e a utilização da propriedade **Password**.

## Mostrar Notificações De Progresso Da Gravação De Documentos

Aspose.Words fornece a capacidade de usar a propriedade [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) para receber notificações sobre o andamento do salvamento de documentos.

Agora está disponível ao salvar em DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, ou TXT formatos.

## Actualizar a hora de criação do documento

Aspose.Words permite utilizar a propriedade [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) para obter ou definir a data de criação do documento em UTC. Você também pode atualizar esse valor antes de salvar usando a opção [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty).

O exemplo de código a seguir mostra como atualizar o tempo de criação do documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Actualizar A Última Propriedade Guardada

Aspose.Words fornece a capacidade de usar a propriedade [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) para obter ou definir um valor que determina se a propriedade [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) é atualizada antes de salvar.

O exemplo de código a seguir mostra como definir essa propriedade e salvar o documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Salvar imagem em preto e branco com um formato de Bit por Pixel

Para controlar as opções de gravação de imagens, é utilizada a classe **ImageSaveOptions**. Por exemplo, você pode usar a propriedade [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) para definir o formato de pixel para as imagens geradas. Observe que o formato de pixel da imagem de saída pode diferir do valor definido devido ao trabalho de GDI+.

O exemplo de código a seguir mostra como salvar uma imagem em preto e branco com o formato de um bit por pixel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
