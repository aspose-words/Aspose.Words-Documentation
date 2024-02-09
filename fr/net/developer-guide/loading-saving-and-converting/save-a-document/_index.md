---
title: Enregistrer un document dans C#
second_title: Aspose.Words pour .NET
articleTitle: Enregistrer un document
linktitle: Enregistrer un document
type: docs
description: "Enregistrez un document dans n'importe quel format pris en charge à l'aide de C#."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /fr/net/save-a-document/
---

La plupart des tâches que vous devez effectuer avec Aspose.Words impliquent l'enregistrement d'un document. Pour enregistrer un document, Aspose.Words fournit la méthode [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) de la classe [Document](https://reference.aspose.com/words/net/aspose.words/document/). Il existe des surcharges qui permettent d'enregistrer un document dans un fichier, un flux ou un objet ASP.NET HttpResponse pour l'envoyer à un navigateur client. Le document peut être enregistré dans n'importe quel format de sauvegarde pris en charge par Aspose.Words. Pour la liste de tous les formats de sauvegarde pris en charge, consultez l'énumération [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/).

## Enregistrer dans un fichier {#save-a-document-to-a-file}

Utilisez simplement la méthode [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) avec un nom de fichier. Aspose.Words déterminera le format de sauvegarde à partir de l'extension de fichier que vous spécifiez.

L'exemple de code suivant montre comment charger et enregistrer un document dans un fichier:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Enregistrer dans un flux {#save-a-document-to-a-stream}

Transmettez un objet stream à la méthode [Save](https://reference.aspose.com/words/net/aspose.words/document/save/). Il est nécessaire de spécifier explicitement le format de sauvegarde lors de la sauvegarde dans un flux.

L'exemple de code suivant montre comment charger et enregistrer un document dans un flux:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Envoyer un document à un navigateur client {#sending-a-document-to-a-client-browser}

Afin d'envoyer un document à un navigateur client, utilisez une surcharge spéciale qui prend quatre paramètres: le nom du fichier, le format de sauvegarde, le type de sauvegarde et un objet ASP.NET HttpResponse. La manière dont le document sera présenté à l'utilisateur est représentée par l'énumération [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/), qui détermine si le document envoyé au navigateur offrira une option pour s'ouvrir directement dans le navigateur ou dans l'application associée à l'extension de fichier.

L'exemple de code suivant montre comment envoyer un document au navigateur client à partir d'un code ASP.NET:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

Cette surcharge de la méthode `Save` n'est pas disponible lors de l'utilisation de la DLL .NET Client Profile. Cette DLL se trouve dans le dossier **net3.5_ClientProfile**. Le profil client .NET exclut les assemblys tels que **System.Web**. Par conséquent, **HttpResponse** n'est pas disponible. C'est entièrement intentionnel.

Cela peut se manifester par une erreur:

**"Aucune surcharge pour la méthode 'Save' ne prend les paramètres '4'."**

Si vous devez utiliser Aspose.Words dans une application ASP.NET, il est recommandé d'utiliser la DLL .NET 2.0 où la surcharge correcte est disponible, comme décrit dans cet article.

## Enregistrer au format PCL {#save-a-document-to-pcl}

Aspose.Words prend en charge l'enregistrement d'un document en PCL (Printer Command Language). Aspose.Words peut enregistrer des documents au format PCL 6 (PCL 6 Enhanced ou PCL XL). La classe `PclSaveOptions` peut être utilisée pour spécifier des options supplémentaires lors de l'enregistrement d'un document au format PCL.

L'exemple de code suivant montre comment enregistrer un document au format PCL à l'aide des options d'enregistrement:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## Voir également

- Informations sur l'objet ASP.NET [Réponse HTTP](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8)
