---
title: Objetos OLE e vídeo online
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com objetos OLE e vídeo online
linktitle: Trabalhando com objetos OLE e vídeo online
description: "Insira objetos OLE ou vídeo on-line em um documento usando Python."
type: docs
weight: 360
url: /pt/python-net/working-with-ole-objects/
---

OLE (Object Linking and Embedding) é uma tecnologia pela qual os usuários podem trabalhar com documentos contendo "objetos" criados ou editados por aplicativos de terceiros. Ou seja, OLE permite que um aplicativo de edição exporte esses "objetos" para outro aplicativo de edição e depois importe-os com conteúdo adicional.

Neste artigo falaremos sobre como inserir um objeto OLE e definir suas propriedades, bem como inserir um vídeo online em um documento.

## Inserir objeto OLE

Se você deseja um objeto OLE, chame o método [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) e passe o **ProgId** explicitamente com outros parâmetros.

O exemplo de código a seguir mostra como inserir objeto OLE em um documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### Definir nome e extensão do arquivo ao inserir objeto OLE

O pacote OLE é uma forma herdada e "não documentada" de armazenar objetos incorporados se um manipulador OLE for desconhecido.

As primeiras versões do Windows, como Windows 3.1, 95 e 98, tinham um aplicativo Packager.exe que podia ser usado para incorporar qualquer tipo de dados ao documento. Este aplicativo agora está excluído do Windows, mas o Microsoft Word e outros aplicativos ainda o utilizam para incorporar dados se o manipulador OLE estiver ausente ou for desconhecido. A classe `OlePackage` permite que os usuários acessem as propriedades do pacote OLE.

O exemplo de código a seguir mostra como definir o nome do arquivo, a extensão e o nome de exibição do pacote OLE:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### Obtenha acesso aos dados brutos do objeto OLE

Os usuários podem acessar dados de objetos OLE usando várias propriedades e métodos da classe `OleFormat`. Por exemplo, é possível obter os dados brutos do objeto `OLE` ou o caminho e o nome de um arquivo de origem para o objeto OLE vinculado.

O exemplo de código a seguir mostra como obter dados brutos do objeto OLE usando o método [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### Insira objeto OLE como um ícone

Objetos OLE também podem ser inseridos em documentos como imagens.

O exemplo de código a seguir mostra como inserir objeto OLE como um ícone. Para isso, a classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) expõe o método [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

O exemplo de código a seguir mostra como inserir um objeto OLE incorporado como um ícone de um fluxo no documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## Inserir vídeo on-line

O vídeo online pode ser inserido em um documento Word na guia *"Inserir" &gt; "Vídeo Online"*. Você pode inserir um vídeo online em um documento no local atual chamando o método [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/).

A classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) introduz quatro sobrecargas deste método. O primeiro trabalha com os recursos de vídeo mais populares e toma como parâmetro o `URL` do vídeo. Por exemplo, a primeira sobrecarga suporta a inserção simples de vídeos online a partir de recursos [YouTube](https://www.youtube.com/) e [Vimeo](https://vimeo.com/).

O exemplo de código a seguir mostra como inserir um vídeo online do *Vimeo* em um documento:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Pass direct url from youtu.be.
url = "https://www.youtube.com/watch?v=t_1LYZ102RA"

width = 360
height = 270

shape = builder.insert_online_video(url, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video.docx")
{{< /highlight >}}

A segunda sobrecarga funciona com todos os outros recursos de vídeo e usa o código HTML incorporado como parâmetro. O código HTML para incorporar um vídeo pode variar dependendo do fornecedor, portanto entre em contato com o respectivo fornecedor para obter detalhes.

{{% alert color="primary" %}}

Observe que o documento será otimizado automaticamente para o MS Word 2013 para mostrar o vídeo.

{{% /alert %}}

O exemplo de código a seguir mostra como inserir um vídeo online em um documento usando esse código HTML:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Shape width/height.
width = 360
height = 270

# Poster frame image.
f = open(docs_base.images_dir + "Logo.jpg", "rb")
imageBytes = f.read()
f.close()

# Visible url
vimeoVideoUrl = "https://vimeo.com/52477838"

# Embed Html code.
vimeoEmbedCode = ""

builder.insert_online_video(vimeoVideoUrl, vimeoEmbedCode, imageBytes, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video_with_embed_html.docx")
{{< /highlight >}}