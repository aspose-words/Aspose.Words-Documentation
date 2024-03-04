---
title: Imprimer un document dans C#
second_title: Aspose.Words pour .NET
articleTitle: Impression d'un document par programme ou à l'aide de boîtes de dialogue
linktitle: Impression d'un document par programme ou à l'aide de boîtes de dialogue
description: "Imprimez un document sur un Server à l'aide du XpsPrint API non géré ou via une imprimante sélectionnée avec les boîtes de dialogue Paramètres et Aperçu avant impression en C#."
type: docs
weight: 55
url: /fr/net/print-a-document-programmatically-or-using-dialogs/
---

Cet article décrit comment imprimer un document de traitement de texte à partir d'une application de service ASP.NET ou Windows à l'aide de Aspose.Words et `XpsPrint` API. Il montre également les méthodes d'impression d'un document avec les boîtes de dialogue Paramètres, Aperçu avant impression et Progression de l'impression, et explique comment réduire le temps du premier appel pour imprimer un document.

## Impression d'un document sur un Server via le `XpsPrint` API

Cette section est destinée aux utilisateurs qui souhaitent soumettre un document XPS au XpsPrint API non géré à partir d'une application .NET utilisant Aspose.Words.

### Limitations de l'impression d'un document dans les applications du service ASP.NET ou Windows

Lors du développement d'une application .NET qui produit une sortie imprimée, vous pouvez généralement utiliser les classes fournies dans l'espace de noms *System.Drawing.Printing* ou les classes Windows Presentation Foundation (WPF). Toutefois, si l'application est une application de service ASP.NET ou Windows, les options d'impression sont limitées, car Microsoft décourage l'utilisation de cette approche. Les classes d'impression .NET Framework ne sont pas prises en charge par l'application de services. Cela inclut les pages ASP, qui s'exécutent généralement dans le contexte du service serveur.

Les classes de l'espace de noms *System.Drawing.Printing* ne sont pas prises en charge pour une utilisation dans un service Windows ou une application ou un service ASP.NET, et tenter de les utiliser peut entraîner une diminution des performances du service, des exceptions d'exécution et d'autres problèmes. L'utilisation de WPF pour créer des services Windows n'est pas non plus prise en charge. Puisque WPF est une technologie de présentation, le service Windows nécessite les autorisations appropriées pour effectuer des opérations visuelles impliquant une interaction utilisateur. Si le service Windows ne dispose pas de telles autorisations, des résultats inattendus peuvent survenir.

L'objet Aspose.Words [Document](https://reference.aspose.com/words/fr/net/aspose.words/document/) fournit une famille de méthodes [Print](https://reference.aspose.com/words/fr/net/aspose.words/document/methods/print/index) pour imprimer des documents. Ces méthodes utilisent les classes d'impression .NET définies dans l'espace de noms *System.Drawing.Printing*. De nombreux clients Aspose.Words les utilisent avec succès pour imprimer dans leurs applications côté serveur. Néanmoins, cet article présente une méthode alternative d'impression conforme aux recommandations de Microsoft.

### Méthodes pour imprimer un document sur un Server

La bonne façon d'imprimer des documents selon Microsoft consiste à utiliser XpsPrint API non géré. Ce API est disponible sur Windows 7, Windows Server 2008 R2 et sur Windows Vista à condition que la mise à jour de la plateforme pour Windows Vista soit installée.

Étant donné que Aspose.Words peut facilement convertir n'importe quel document en XPS, il vous suffit d'écrire le code qui transmet un document XPS au `XpsPrint` API. Le seul problème est que le `XpsPrint` API n'est pas géré et nécessite une certaine connaissance de la technologie Platform Invoke.

Pour imprimer un document, Aspose.Words fournit une classe **XpsPrintHelper** contenant une méthode Print simple, où il suffit de spécifier les paramètres suivants (voir plus de détails dans l'article [Imprimer un document via XPS API](/words/net/missing-features-in-openxml/)):

- Document que vous souhaitez imprimer.
- Nom de l'imprimante.
- Nom du travail (facultatif).
- Valeur booléenne, spécifiant si le programme doit attendre la fin du travail d'impression. Par conséquent, le système vérifiera si le document a été imprimé avec succès ou reviendra immédiatement après l'envoi du travail d'impression. Dans ce dernier cas, il est impossible de savoir si le travail d'impression a réussi.

En cas de problème lors de la soumission ou de l'impression du document, la méthode lèvera une exception.

L'exemple de code ci-dessous montre comment imprimer un document à l'aide de la classe **XpsPrintHelper**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

Lorsque vous exécutez le projet, il imprime un exemple de document sur l'imprimante spécifiée et ouvre une fenêtre de console pour afficher les résultats de l'impression. Lorsque le travail d'impression est terminé ou que des erreurs sont générées, le système affiche un message de réussite ou le texte de l'exception levée.

Vous pouvez également définir certains paramètres d'impression à l'aide de la classe [PageSetup](https://reference.aspose.com/words/fr/net/aspose.words/pagesetup/). Par exemple, dans Microsoft Word, les bacs d'imprimante sont définis pour chaque section et sont spécifiques à l'imprimante. Par conséquent, vous pouvez modifier ces valeurs par programme pour chaque section via les propriétés [FirstPageTray](https://reference.aspose.com/words/fr/net/aspose.words/pagesetup/firstpagetray/) et [OtherPagesTray](https://reference.aspose.com/words/fr/net/aspose.words/pagesetup/otherpagestray/).

{{% alert color="primary" %}}

Dans certains cas, vous devrez peut-être utiliser cet exemple sans Aspose.Words. Par exemple, lorsque vous possédez déjà un document XPS et que vous souhaitez simplement l'imprimer à partir d'une application de service ASP.NET ou Windows. Ensuite, vous pouvez simplement supprimer la méthode `Print`.

{{% /alert %}}

Il existe deux surcharges de la méthode **XpsPrintHelper**.**Print**. La première surcharge prend un objet [Document](https://reference.aspose.com/words/fr/net/aspose.words/document/) et l'enregistre au format `MemoryStream` au format XPS. La deuxième surcharge accepte un objet `Stream`. Le flux doit contenir un document au format XPS.

Vous pouvez télécharger les exemples de surcharge de méthodes depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip).

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Impression d'un document avec les boîtes de dialogue Paramètres et Aperçu avant impression

Lorsque vous travaillez avec des documents, il est souvent nécessaire de les imprimer sur une imprimante sélectionnée. Il est utile d'utiliser une boîte de dialogue d'aperçu avant impression pour inspecter visuellement l'apparence du document imprimé et choisir les options d'impression pertinentes.

Le Aspose.Words n'a pas de boîtes de dialogue ni de formulaires intégrés mais implémente la classe [AsposeWordsPrintDocument](https://reference.aspose.com/words/fr/net/aspose.words.rendering/asposewordsprintdocument/), basée sur la classe .NET **PrintDocument**. Une instance de cette classe peut être transmise au formulaire **PrintPreviewDialog** pour prévisualiser et imprimer le document. De plus, la classe [Boîte de dialogue AperçuImpression](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) définit la sortie à transmettre à une imprimante.

L'exemple suivant montre comment utiliser ces classes pour imprimer un document à partir de Aspose.Words via les boîtes de dialogue Aperçu avant impression et Paramètres:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

La propriété **AllowSomePages** vous permet de sélectionner une plage de pages à imprimer si la valeur de cette propriété est True. Par défaut, toutes les pages de la plage sont sélectionnées pour l'impression.

{{% /alert %}}

Pour optimiser l'apparence des paramètres de la boîte de dialogue Aperçu avant impression, spécifiez les propriétés de la classe **PrintPreviewDialog**.

## Impression de plusieurs pages sur une seule feuille

Il est toujours avantageux d’avoir plus de flexibilité lors de l’impression de documents. En utilisant .NET et Aspose.Words, vous pouvez facilement affiner l'opération d'impression pour mettre en œuvre votre logique personnalisée en définissant la manière dont le document apparaîtra sur la page imprimée.

Comme dans la section précédente, Aspose.Words implémente la classe **MultipagePrintDocument**, basée sur la classe .NET **PrintDocument**. Cela signifie que l'infrastructure d'impression .NET existante peut être utilisée de telle manière que les boîtes de dialogue d'impression et d'aperçu avant impression permettent de visualiser le document avant l'impression. La classe **MultipagePrintDocument** offre la possibilité d'imprimer plusieurs pages sur une seule feuille de papier.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

Le résultat de cet exemple de code est présenté ci-dessous:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## Masquage de la boîte de dialogue de progression de l'impression lors de l'impression d'un document

La boîte de dialogue de progression de l'impression n'apparaît pas lors de l'impression d'un document via la méthode [Print](https://reference.aspose.com/words/fr/net/aspose.words/document/print/). Cependant, cette boîte de dialogue apparaît lors de l'impression avec une autre méthode [Print](https://reference.aspose.com/words/fr/net/aspose.words.rendering/asposewordsprintdocument/). Dans ce cas, pour empêcher la boîte de dialogue Impression d'apparaître, vous devez spécifier des paramètres d'imprimante valides et un contrôleur d'impression standard dans cette méthode, comme indiqué dans l'exemple ci-dessous:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Comment réduire le temps du premier appel pour imprimer un document

Aspose.Words lit et met en cache certains champs de **PrinterSettings** pour réduire le temps d'impression. Vous pouvez y parvenir en appelant la méthode [CachePrinterSettings](https://reference.aspose.com/words/fr/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/). Cette méthode est appelée avant le début de l'impression si elle n'a pas été exécutée précédemment. Notez que le temps total d'impression avec et sans appel de cette méthode est presque le même. Le but de l'utilisation de cette méthode est de réduire le temps du premier appel de la méthode [Print](https://reference.aspose.com/words/fr/net/aspose.words/document/print/). L'exemple de code suivant montre comment utiliser cette méthode:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## Voir également

- [Mise à jour de la plateforme pour Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
