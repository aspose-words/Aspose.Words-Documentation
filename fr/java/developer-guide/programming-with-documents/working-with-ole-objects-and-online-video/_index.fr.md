---
title: Travailler avec Ole objets
second_title: Aspose.Words pour Java
articleTitle: Travailler avec Ole objets
linktitle: Travailler avec Ole objets
description: "Créez et modifiez l'incorporation OLE dans votre document à l'aide de Java."
type: docs
weight: 360
url: /fr/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE signifie "Liaison et incorporation d'objets". C'est la technologie par laquelle les utilisateurs peuvent travailler avec des documents contenant des "objets" créés ou modifiés par des applications tierces. C'est-à-dire que OLE permet à une application d'exporter ces "objets" vers une autre application pour les modifier, puis de les réimporter avec du contenu supplémentaire.

Dans cet article, nous parlerons de l'insertion d'un objet OLE et de la définition de ses propriétés dans un document.

## Insérer un objet Ole

Si vous voulez un objet OLE, appelez la méthode [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) et transmettez-lui explicitement le **ProgId** avec d'autres paramètres.

L'exemple de code suivant montre comment insérer un objet OLE dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Définir le Nom et l'extension du fichier lors de l'insertion d'un objet OLE

OLE package est un moyen hérité et "non documenté" de stocker des objets incorporés si un gestionnaire OLE est inconnu.

Les premières versions Windows telles que Windows 3.1, 95 et 98 avaient une application Packager.exe qui pouvait être utilisée pour intégrer n'importe quel type de données dans le document. Cette application est maintenant exclue de Windows, mais Microsoft Word et d'autres applications l'utilisent toujours pour incorporer des données si le gestionnaire OLE est manquant ou inconnu. La classe `OlePackage` permet aux utilisateurs d'accéder aux propriétés OLE Package.

L'exemple de code suivant montre comment définir le nom de fichier, l'extension et le nom d'affichage pour OLE Package:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Accéder aux données brutes de OLE Objets

Les utilisateurs peuvent accéder aux données d'objet OLE en utilisant diverses propriétés et méthodes de la classe `OleFormat`. Par exemple, il est possible d'obtenir les données brutes de l'objet `OLE` ou le chemin et le nom d'un fichier source pour l'objet OLE lié.

L'exemple de code suivant montre comment obtenir des données brutes d'objet OLE à l'aide de la méthode [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Insérer un objet OLE en tant qu'icône

Les objets OLE peuvent également être insérés dans des documents en tant qu'images.

L'exemple de code suivant montre comment insérer un objet OLE en tant qu'icône. Pour cela, la classe **DocumentBuilder** expose la méthode [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

L'exemple de code suivant montre comment insérer un objet OLE incorporé en tant qu'icône à partir d'un flux dans le document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Insérer Une Vidéo En Ligne

La vidéo en ligne peut être insérée dans un document Word à partir de l'onglet *"Insert" > "Online Video"*. Vous pouvez insérer une vidéo en ligne dans un document à l'emplacement actuel en appelant la méthode [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double):

La classe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) introduit quatre surcharges de cette méthode. Le premier fonctionne avec les ressources vidéo les plus populaires et prend le `URL` de la vidéo comme paramètre. Par exemple, la première surcharge prend en charge l'insertion simple de vidéos en ligne à partir de [YouTube](https://www.youtube.com/) et [Viméo](https://vimeo.com/) ressources.

L'exemple de code suivant montre comment insérer une vidéo en ligne à partir de *Vimeo* dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

La deuxième surcharge fonctionne avec toutes les autres ressources vidéo et prend le code HTML incorporé comme paramètre. Le code HTML pour l'intégration d'une vidéo peut varier en fonction du fournisseur, contactez donc le fournisseur respectif pour plus de détails.

{{% alert color="primary" %}}

Veuillez noter que le document sera automatiquement optimisé pour MS Word 2013 pour afficher la vidéo.

{{% /alert %}}

L'exemple de code suivant montre comment insérer une vidéo en ligne dans un document en utilisant un tel code HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
