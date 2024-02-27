---
title: Especifique opções de salvamento em C#
second_title: Aspose.Words para .NET
articleTitle: Especifique as opções de salvamento
linktitle: Especifique as opções de salvamento
description: "Controle com mais precisão o processo de salvamento usando C#."
type: docs
weight: 10
url: /pt/net/specify-save-options/
---

Ao salvar um documento, você pode definir algumas propriedades avançadas. Aspose.Words fornece a classe [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), que permite um controle mais preciso do processo de salvamento. Existem sobrecargas do método **Save** que aceita um objeto **SaveOptions** – ele deve ser um objeto de uma classe derivada da classe **SaveOptions**. Cada formato de salvamento possui uma classe correspondente que contém opções de salvamento para esse formato de salvamento, por exemplo, há [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) para salvar no formato PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) para salvar no formato Markdown ou [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) para salvar em uma imagem. Este artigo fornece exemplos de como trabalhar com algumas classes de opções derivadas de **SaveOptions**.

O exemplo de código a seguir mostra como definir as opções de salvamento antes de salvar o documento em HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

O artigo descreve algumas propriedades que você pode controlar ao salvar um documento.

## Criptografar um documento com uma senha

Use a propriedade **Password** para obter ou definir uma senha para um documento criptografado. Use a propriedade **Password** da classe correspondente para trabalhar com o formato de documento selecionado.

Por exemplo, ao salvar um documento no formato DOC ou DOT, use a propriedade [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) da classe [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/).

O exemplo de código a seguir mostra como definir uma senha para criptografar um documento usando o método de criptografia RC4:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

Ao salvar um documento no formato Odt, use a propriedade [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) da classe [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/).

O exemplo de código a seguir mostra como carregar e salvar OpenDocument criptografado com uma senha:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

Nem todos os formatos suportam criptografia e uso de propriedade **Password**.

## Mostrar notificações de progresso de salvamento de documentos

Aspose.Words oferece a capacidade de usar a propriedade [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) para receber notificações sobre o andamento do salvamento do documento.

Agora está disponível ao salvar nos formatos DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack ou TXT.

## Atualizar o horário de criação do documento

Aspose.Words oferece a capacidade de usar a propriedade [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) para obter ou definir a data de criação do documento em UTC. Você também pode atualizar esse valor antes de salvar usando a opção [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/).

O exemplo de código a seguir mostra como atualizar o horário de criação do documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## Atualizar última propriedade salva

Aspose.Words fornece a capacidade de usar a propriedade [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) para obter ou definir um valor que determina se a propriedade [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) é atualizada antes de salvar.

O exemplo de código a seguir mostra como definir essa propriedade e salvar o documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## Controle recursos externos ao salvar um documento em HTML ou SVG

Para converter HTML ou SVG em PDF, basta invocar o método [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) e especificar um nome de arquivo com extensão ".PDF". Se quiser carregar imagens, CSS, etc. de fontes externas, você pode usar [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/).

O exemplo de código a seguir mostra como converter HTML em PDF e carregar imagens de fontes externas:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## Salvar imagem em preto e branco com formato de um bit por pixel

Para controlar as opções de salvamento de imagens, a classe **ImageSaveOptions** é usada. Por exemplo, você pode usar a propriedade [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) para definir o formato de pixel das imagens geradas. Observe que o formato de pixel da imagem de saída pode diferir do valor definido devido ao trabalho do GDI+.

O exemplo de código a seguir mostra como salvar uma imagem em preto e branco com formato de um bit por pixel:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
