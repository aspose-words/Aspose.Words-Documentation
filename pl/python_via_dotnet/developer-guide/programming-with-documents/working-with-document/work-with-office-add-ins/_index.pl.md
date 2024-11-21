---
title: Pracuj z dodatkami pakietu Office w formacie Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Pracuj z dodatkami pakietu Office
linktitle: Pracuj z dodatkami pakietu Office
description: "Aspose.Words dla Python via .NET udostępnia różne klasy do pracy z dodatkami pakietu Office. Możesz dodać okienko zadań poprzez rozszerzenie internetowe i dostosować właściwości panelu i rozszerzenia."
type: docs
weight: 50
url: /pl/python-net/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Czasami możesz chcieć dać dostęp do kontrolek interfejsu, które uruchamiają kod w celu modyfikowania dokumentów. Aspose.Words API udostępnia moduł [webextensions](https://reference.aspose.com/words/python-net/aspose.words.webextensions/), który udostępnia różne klasy umożliwiające dostosowywanie elementów i atrybutów, rozszerzając słownictwo XML służące do reprezentowania dodatków pakietu Office.

Przestrzeń nazw WebExtensions można warunkowo podzielić na:

* Obiekty do pracy z okienkiem zadań
* Obiekty do pracy z rozszerzeniami internetowymi

## Korzystanie z okienek zadań

Panele zadań to powierzchnie interfejsu wyświetlane po prawej stronie okna w Microsoft Word. Okienko zadań umożliwia użytkownikom dostęp do elementów sterujących interfejsu, które mogą uruchamiać kod w celu modyfikowania dokumentów.

Na przykład, używając Aspose.Words API, możesz dodać dodatek do panelu zadań i dostosować jego wygląd.

## Korzystanie z rozszerzeń internetowych

Rozszerzenia internetowe to narzędzia, które rozszerzają możliwości aplikacji pakietu Office i wchodzą w interakcję z zawartością dokumentów pakietu Office. Rozszerzenia internetowe zapewniają dodatkową funkcjonalność klientom pakietu Office w celu poprawy komfortu użytkowania.

Aspose.Words zapewnia możliwość dodawania rozszerzeń internetowych typu Okno zadań przy użyciu klas [WebExtension](https://reference.aspose.com/words/python-net/aspose.words.webextensions/webextension/) i [TaskPane](https://reference.aspose.com/words/python-net/aspose.words.webextensions/taskpane/), a także umożliwia dostosowywanie właściwości panelu i rozszerzenia.

Poniższy przykład kodu pokazuje, jak tworzyć okienka zadań i dodawać je do okienek zadań rozszerzenia WWW z podstawowymi właściwościami:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-UsingWebExtensionTaskPanes.py" >}}

Aby wyświetlić listę dodatków panelu zadań, użyj właściwości [web_extension_task_panes](https://reference.aspose.com/words/python-net/aspose.words/document/web_extension_task_panes/).

Poniższy przykład kodu pokazuje, jak uzyskać taką listę dodatków:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-GetListOfAddins.py" >}}
