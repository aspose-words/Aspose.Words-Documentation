---
title: Pracuj z dodatkami pakietu Office w formacie C#
second_title: Aspose.Words dla .NET
articleTitle: Pracuj z dodatkami pakietu Office
linktitle: Pracuj z dodatkami pakietu Office
description: "Aspose.Words dla .NET udostępnia różne klasy do pracy z dodatkami pakietu Office przy użyciu formatu C#. Możesz dodać okienko zadań poprzez rozszerzenie internetowe i dostosować właściwości panelu i rozszerzenia."
type: docs
weight: 50
url: /pl/net/work-with-office-add-ins/
---

Czasami możesz chcieć dać dostęp do kontrolek interfejsu, które uruchamiają kod w celu modyfikowania dokumentów. Aspose.Words API udostępnia przestrzeń nazw `WebExtensions`, która udostępnia różne klasy umożliwiające dostosowywanie elementów i atrybutów, poszerzając słownictwo XML służące do reprezentowania dodatków pakietu Office.

Przestrzeń nazw WebExtensions można warunkowo podzielić na:

* Obiekty do pracy z okienkiem zadań
* Obiekty do pracy z rozszerzeniami internetowymi

## Korzystanie z okienek zadań

Panele zadań to powierzchnie interfejsu wyświetlane po prawej stronie okna w Microsoft Word. Okienko zadań umożliwia użytkownikom dostęp do elementów sterujących interfejsu, które mogą uruchamiać kod w celu modyfikowania dokumentów.

Na przykład, używając Aspose.Words API, możesz dodać dodatek do panelu zadań i dostosować jego wygląd.

## Korzystanie z rozszerzeń internetowych

Rozszerzenia internetowe to narzędzia, które rozszerzają możliwości aplikacji pakietu Office i wchodzą w interakcję z zawartością dokumentów pakietu Office. Rozszerzenia internetowe zapewniają dodatkową funkcjonalność klientom pakietu Office w celu poprawy komfortu użytkowania.

Aspose.Words zapewnia możliwość dodawania rozszerzeń internetowych typu Okno zadań przy użyciu klas [WebExtension](https://reference.aspose.com/words/net/aspose.words.webextensions/webextension/) i [TaskPane](https://reference.aspose.com/words/net/aspose.words.webextensions/taskpane/), a także umożliwia dostosowywanie właściwości panelu i rozszerzenia.

Poniższy przykład kodu pokazuje, jak tworzyć okienka zadań i dodawać je do okienek zadań rozszerzenia WWW z podstawowymi właściwościami:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

Aby wyświetlić listę dodatków panelu zadań, użyj właściwości [WebExtensionTaskPanes](https://reference.aspose.com/words/net/aspose.words/document/webextensiontaskpanes/).

Poniższy przykład kodu pokazuje, jak uzyskać taką listę dodatków:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
