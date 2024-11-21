---
title: Travailler avec des objets OLE et des vidéos en ligne dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec des objets OLE et des vidéos en ligne
linktitle: Travailler avec des objets OLE et des vidéos en ligne
description: "Créez et modifiez l'intégration OLE dans votre document à l'aide de C#."
type: docs
weight: 360
url: /fr/net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) est une technologie grâce à laquelle les utilisateurs peuvent travailler avec des documents contenant des "objets" créés ou modifiés par des applications tierces. Autrement dit, OLE permet à une application d'édition d'exporter ces "objets" vers une autre application d'édition, puis de les importer avec du contenu supplémentaire.

Dans cet article, nous parlerons de l'insertion d'un objet OLE et de la définition de ses propriétés, ainsi que de l'insertion d'une vidéo en ligne dans un document.

## Insérer un objet OLE

Si vous voulez un objet OLE, appelez la méthode [InsertOleObject](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertoleobject/) et transmettez-lui explicitement le **ProgId** avec d'autres paramètres.

L'exemple de code suivant montre comment insérer un objet OLE dans un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### Définir le nom et l'extension du fichier lors de l'insertion d'un objet OLE

Le package OLE est un moyen ancien et "non documenté" de stocker des objets incorporés si un gestionnaire OLE est inconnu.

Les premières versions de Windows telles que Windows 3.1, 95 et 98 disposaient d'une application Packager.exe qui pouvait être utilisée pour intégrer tout type de données dans le document. Cette application est désormais exclue de Windows, mais Microsoft Word et d'autres applications l'utilisent toujours pour intégrer des données si le gestionnaire OLE est manquant ou inconnu. La classe `OlePackage` permet aux utilisateurs d'accéder aux propriétés du package OLE.

L'exemple de code suivant montre comment définir le nom de fichier, l'extension et le nom d'affichage du package OLE:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### Accédez aux données brutes des objets OLE

Les utilisateurs peuvent accéder aux données des objets OLE à l'aide de diverses propriétés et méthodes de la classe `OleFormat`. Par exemple, il est possible d'obtenir les données brutes de l'objet `OLE` ou le chemin et le nom d'un fichier source pour l'objet OLE lié.

L'exemple de code suivant montre comment obtenir des données brutes d'objet OLE à l'aide de la méthode [GetRawData](https://reference.aspose.com/words/fr/net/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### Insérer un objet OLE en tant qu'icône

Les objets OLE peuvent également être insérés dans des documents sous forme d'images.

L'exemple de code suivant montre comment insérer un objet OLE en tant qu'icône. A cet effet, la classe [DocumentBuilder](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/) expose la méthode [InsertOleObjectAsIcon](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

L'exemple de code suivant montre comment insérer un objet OLE incorporé sous forme d'icône à partir d'un flux dans le document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

La taille maximale de l'icône doit être de 32x32 pour un affichage correct.

{{% /alert %}}

## Insérer une vidéo en ligne

La vidéo en ligne peut être insérée dans un document Word à partir de l'onglet *"Insérer" &gt; "Vidéo en ligne"*. Vous pouvez insérer une vidéo en ligne dans un document à l'emplacement actuel en appelant la méthode [InsertOnlineVideo](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertonlinevideo/).

La classe [DocumentBuilder](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/) introduit quatre surcharges de cette méthode. Le premier fonctionne avec les ressources vidéo les plus populaires et prend le `URL` de la vidéo comme paramètre. Par exemple, la première surcharge prend en charge l'insertion simple de vidéos en ligne à partir de ressources [Youtube](https://www.youtube.com/) et [Viméo](https://vimeo.com/).

L'exemple de code suivant montre comment insérer une vidéo en ligne à partir de *Vimeo* dans un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

La deuxième surcharge fonctionne avec toutes les autres ressources vidéo et prend le code HTML intégré comme paramètre. Le code HTML permettant d'intégrer une vidéo peut varier selon le fournisseur, contactez donc le fournisseur concerné pour plus de détails.

{{% alert color="primary" %}}

Veuillez noter que le document sera automatiquement optimisé pour MS Word 2013 pour afficher la vidéo.

{{% /alert %}}

L'exemple de code suivant montre comment insérer une vidéo en ligne dans un document à l'aide d'un tel code HTML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}
