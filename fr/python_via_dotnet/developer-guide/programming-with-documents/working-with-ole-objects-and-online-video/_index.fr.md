---
title: Objets OLE et vidéo en ligne
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec des objets OLE et des vidéos en ligne
linktitle: Travailler avec des objets OLE et des vidéos en ligne
description: "Insérez des objets ole ou du vodeo en ligne dans un document à l'aide de Python."
type: docs
weight: 360
url: /fr/python-net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) est une technologie grâce à laquelle les utilisateurs peuvent travailler avec des documents contenant des "objets" créés ou modifiés par des applications tierces. Autrement dit, OLE permet à une application d'édition d'exporter ces "objets" vers une autre application d'édition, puis de les importer avec du contenu supplémentaire.

Dans cet article, nous parlerons de l'insertion d'un objet OLE et de la définition de ses propriétés, ainsi que de l'insertion d'une vidéo en ligne dans un document.

## Insérer un objet OLE

Si vous voulez un objet OLE, appelez la méthode [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) et transmettez-lui explicitement le **ProgId** avec d'autres paramètres.

L'exemple de code suivant montre comment insérer un objet OLE dans un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### Définir le nom et l'extension du fichier lors de l'insertion d'un objet OLE

Le package OLE est un moyen ancien et "non documenté" de stocker des objets incorporés si un gestionnaire OLE est inconnu.

Les premières versions de Windows telles que Windows 3.1, 95 et 98 disposaient d'une application Packager.exe qui pouvait être utilisée pour intégrer tout type de données dans le document. Cette application est désormais exclue de Windows, mais Microsoft Word et d'autres applications l'utilisent toujours pour intégrer des données si le gestionnaire OLE est manquant ou inconnu. La classe `OlePackage` permet aux utilisateurs d'accéder aux propriétés du package OLE.

L'exemple de code suivant montre comment définir le nom de fichier, l'extension et le nom d'affichage du package OLE:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### Accédez aux données brutes des objets OLE

Les utilisateurs peuvent accéder aux données des objets OLE à l'aide de diverses propriétés et méthodes de la classe `OleFormat`. Par exemple, il est possible d'obtenir les données brutes de l'objet `OLE` ou le chemin et le nom d'un fichier source pour l'objet OLE lié.

L'exemple de code suivant montre comment obtenir des données brutes d'objet OLE à l'aide de la méthode [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### Insérer un objet OLE en tant qu'icône

Les objets OLE peuvent également être insérés dans des documents sous forme d'images.

L'exemple de code suivant montre comment insérer un objet OLE en tant qu'icône. A cet effet, la classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) expose la méthode [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

L'exemple de code suivant montre comment insérer un objet OLE incorporé sous forme d'icône à partir d'un flux dans le document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## Insérer une vidéo en ligne

La vidéo en ligne peut être insérée dans un document Word à partir de l'onglet *"Insérer" &gt; "Vidéo en ligne"*. Vous pouvez insérer une vidéo en ligne dans un document à l'emplacement actuel en appelant la méthode [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/).

La classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) introduit quatre surcharges de cette méthode. Le premier fonctionne avec les ressources vidéo les plus populaires et prend le `URL` de la vidéo comme paramètre. Par exemple, la première surcharge prend en charge l'insertion simple de vidéos en ligne à partir de ressources [Youtube](https://www.youtube.com/) et [Viméo](https://vimeo.com/).

L'exemple de code suivant montre comment insérer une vidéo en ligne à partir de *Vimeo* dans un document:

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

La deuxième surcharge fonctionne avec toutes les autres ressources vidéo et prend le code HTML intégré comme paramètre. Le code HTML permettant d'intégrer une vidéo peut varier selon le fournisseur, contactez donc le fournisseur concerné pour plus de détails.

{{% alert color="primary" %}}

Veuillez noter que le document sera automatiquement optimisé pour MS Word 2013 pour afficher la vidéo.

{{% /alert %}}

L'exemple de code suivant montre comment insérer une vidéo en ligne dans un document à l'aide d'un tel code HTML:

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
