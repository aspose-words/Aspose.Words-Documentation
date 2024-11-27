---
title: Praca z dodatkami pakietu Office w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z dodatkami pakietu Office
linktitle: Praca z dodatkami pakietu Office
description: "Aspose.Words for C++ udostępnia różne klasy do pracy z dodatkami pakietu Office. Możesz dodać Okienko zadań za pomocą rozszerzenia internetowego i dostosować właściwości okienka i rozszerzenia."
type: docs
weight: 50
url: /pl/cpp/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Czasami możesz chcieć dać dostęp do kontrolek interfejsu, które uruchamiają kod w celu modyfikacji dokumentów. Aspose.Words API zapewnia `WebExtensions` przestrzeń nazw, która przyznaje różne klasy do dostosowywania elementów i atrybutów rozszerzających Słownictwo XML do reprezentowania dodatków pakietu Office.

WebExtensions przestrzeń nazw można warunkowo podzielić na:

* Obiekty do pracy z okienkiem zadań
* Obiekty do pracy z rozszerzeniami sieciowymi

## Korzystanie Z Okienek Zadań

Panele zadań są powierzchniami interfejsu, które są wyświetlane po prawej stronie okna w Microsoft Word. Okienko zadań umożliwia użytkownikom dostęp do elementów sterujących interfejsu, które mogą uruchamiać kod w celu modyfikowania dokumentów.

Na przykład, używając Aspose.Words API, możesz dodać dodatek do okienka zadań i dostosować jego wygląd.

## Korzystanie Z Rozszerzeń Internetowych

Rozszerzenia internetowe to narzędzia, które rozszerzają możliwości aplikacji biurowych i współdziałają z zawartością dokumentów pakietu Office. Rozszerzenia internetowe zapewniają dodatkowe funkcje klientom pakietu Office w celu poprawy komfortu użytkowania.

Aspose.Words zapewnia możliwość dodawania rozszerzeń internetowych typu panelu zadań przy użyciu klas [WebExtension](https://reference.aspose.com/words/cpp/aspose.words.webextensions/webextension/) i [TaskPane](https://reference.aspose.com/words/cpp/aspose.words.webextensions/taskpane/), a także umożliwia dostosowanie właściwości panelu i rozszerzenia.

Poniższy przykład kodu pokazuje, jak tworzyć panele zadań i dodawać do okienek zadań rozszerzeń internetowych z podstawowymi właściwościami:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cpp" >}}

Aby wyświetlić listę dodatków do okienka zadań, użyj właściwości [WebExtensionTaskPanes](https://reference.aspose.com/words/cpp/aspose.words/document/get_webextensiontaskpanes/).

Poniższy przykład kodu pokazuje, jak uzyskać taką listę dodatków:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-GetListOfAddins.cpp" >}}
