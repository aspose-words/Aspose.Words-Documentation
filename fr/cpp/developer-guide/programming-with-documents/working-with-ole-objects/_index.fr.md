---
title: Travailler avec des objets OLE en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec des objets OLE
linktitle: Travailler avec des objets OLE
description: "Créez et modifiez l'incorporation OLE dans votre document à l'aide de C++."
type: docs
weight: 360
url: /fr/cpp/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) est une technologie par laquelle les utilisateurs peuvent travailler avec des documents contenant des "objets" créés ou modifiés par des applications tierces. Autrement dit, OLE permet à une application d'édition d'exporter ces "objets" vers une autre application d'édition, puis de les importer avec du contenu supplémentaire.

Dans cet article, nous parlerons de l'insertion d'un objet OLE et de la définition de ses propriétés dans un document.

## Insérer un objet ANCIEN

Si vous voulez un objet OLE, appelez la méthode [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) et transmettez-lui explicitement **ProgId** avec d'autres paramètres.

L'exemple de code suivant montre comment insérer un objet OLE dans un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### Définir le Nom et l'extension du fichier lors de l'insertion d'un objet OLE

Le package OLE est un moyen hérité et "non documenté" de stocker des objets incorporés si un gestionnaire OLE est inconnu.

Les premières versions Windows telles que Windows 3.1, 95 et 98 avaient un Packager.application exe qui pourrait être utilisée pour intégrer tout type de données dans le document. Cette application est désormais exclue de Windows, mais Microsoft Word et d'autres applications l'utilisent toujours pour incorporer des données si le gestionnaire OLE est manquant ou inconnu. La classe `OlePackage` permet aux utilisateurs d'accéder aux propriétés du package OLE.

L'exemple de code suivant montre comment définir le nom de fichier, l'extension et le nom d'affichage du package OLE:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### Accédez aux données brutes des objets OLE

Les utilisateurs peuvent accéder aux données d'objet OLE à l'aide de diverses propriétés et méthodes de la classe `OleFormat`. Par exemple, il est possible d'obtenir les données brutes de l'objet `OLE` ou le chemin et le nom d'un fichier source pour l'objet OLE lié.

L'exemple de code suivant montre comment obtenir des données brutes d'objet OLE à l'aide de la méthode [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### Insérer un objet Ole en tant qu'icône

Les objets OLE peuvent également être insérés dans des documents sous forme d'images.

L'exemple de code suivant montre comment insérer un objet OLE en tant qu'icône. Pour cela, la classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) expose la méthode [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

L'exemple de code suivant montre comment insérer un objet OLE incorporé sous forme d'icône à partir d'un flux dans le document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## Insérer Une Vidéo En Ligne

La vidéo en ligne peut être insérée dans un document Word à partir de l'onglet *"Insert" > "Online Video"*. Vous pouvez insérer une vidéo en ligne dans un document à l'emplacement actuel en appelant la méthode [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/).

La classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) introduit quatre surcharges de cette méthode. Le premier fonctionne avec les ressources vidéo les plus populaires et prend le `URL` de la vidéo comme paramètre. Par exemple, la première surcharge prend en charge l'insertion simple de vidéos en ligne à partir de [YouTube](https://www.youtube.com/) et [Viméo](https://vimeo.com/) ressources.

L'exemple de code suivant montre comment insérer une vidéo en ligne à partir de *Vimeo* dans un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

La deuxième surcharge fonctionne avec toutes les autres ressources vidéo et prend le code HTML incorporé comme paramètre. Le code HTML pour intégrer une vidéo peut varier en fonction du fournisseur, alors contactez le fournisseur respectif pour plus de détails.

{{% alert color="primary" %}}

Veuillez noter que le document sera automatiquement optimisé pour MS Word 2013 pour afficher la vidéo.

{{% /alert %}}

L'exemple de code suivant montre comment insérer une vidéo en ligne dans un document à l'aide de ce code HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}
