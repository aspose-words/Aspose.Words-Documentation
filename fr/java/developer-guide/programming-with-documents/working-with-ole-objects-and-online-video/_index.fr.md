---
title: Travailler avec des objets Ole
second_title: Aspose.Words pour Java
articleTitle: Travailler avec des objets Ole
linktitle: Travailler avec des objets Ole
description: "Créer et modifier l'intégration OLE dans votre document en utilisant Java."
type: docs
weight: 360
url: /fr/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE signifie "Object Linking and Embedding". C'est la technologie par laquelle les utilisateurs peuvent travailler avec des documents contenant des "objets" créés ou édités par des applications tierces. En d'autres termes, OLE permet à une application d'exporter ces "objets" vers une autre application pour l'édition, puis de les importer avec un contenu supplémentaire.

Dans cet article, nous parlerons d'insérer un objet OLE et de définir ses propriétés dans un document.

## Insérer l'objet Ole

Si vous voulez un objet OLE, appelez le [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) méthode et de lui passer le **ProgId** explicitement avec d'autres paramètres.

L'exemple de code suivant montre comment insérer OLE Objet dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Définir le nom et l'extension du fichier lors de l'insertion de l'objet OLE

Le paquet OLE est une manière léguée et "non documentée" de stocker des objets intégrés si un gestionnaire OLE est inconnu.

Début Windows des versions telles que Windows 3.1, 95 et 98 avaient un emballeur. exe application qui pourrait être utilisée pour intégrer n'importe quel type de données dans le document. Cette demande est maintenant exclue de WindowsMais Microsoft Word et d'autres applications l'utilisent encore pour intégrer des données si le gestionnaire OLE est manquant ou inconnu. Les `OlePackage` classe permet aux utilisateurs d'accéder aux propriétés du paquet OLE.

L'exemple de code suivant montre comment définir le nom de fichier, l'extension et le nom d'affichage du paquet OLE:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Accès aux données brutes des objets OLE

Les utilisateurs peuvent accéder aux données objet OLE en utilisant différentes propriétés et méthodes de la `OleFormat` En cours. Par exemple, il est possible d'obtenir `OLE` objet données brutes ou le chemin et le nom d'un fichier source pour l'objet OLE lié.

L'exemple de code suivant montre comment obtenir OLE Données brutes de l'objet [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) méthode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Insérer OLE Objet en tant qu'icône

Les objets OLE peuvent également être insérés dans des documents en tant qu'images.

L'exemple de code suivant montre comment insérer OLE Object comme icône. À cette fin, **DocumentBuilder** la classe expose la [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) méthode.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

L'exemple de code suivant montre comment insérer un objet OLE intégré comme icône d'un flux dans le document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Insérer une vidéo en ligne

La vidéo en ligne peut être insérée dans le document Word à partir de l'onglet *"Insérer" > "Vidéo en ligne"*. Vous pouvez insérer une vidéo en ligne dans un document à l'emplacement actuel en appelant le [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) méthode:

Les [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) classe introduit quatre surcharges de cette méthode. Le premier fonctionne avec les ressources vidéo les plus populaires et prend le `URL` de la vidéo comme paramètre. Par exemple, la première surcharge prend en charge l'insertion simple de vidéos en ligne de [YouTube](https://www.youtube.com/) et [Vimeo](https://vimeo.com/) des ressources.

L'exemple de code suivant montre comment insérer une vidéo en ligne de *Vimeo* dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

La deuxième surcharge fonctionne avec toutes les autres ressources vidéo et prend le code HTML intégré comme paramètre. Le code HTML pour intégrer une vidéo peut varier selon le fournisseur, alors contactez le fournisseur respectif pour plus de détails.

{{% alert color="primary" %}}

Veuillez noter que le document sera automatiquement optimisé pour MS Word 2013 pour montrer la vidéo.

{{% /alert %}}

L'exemple de code suivant montre comment insérer une vidéo en ligne dans un document utilisant ce code HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
