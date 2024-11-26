---
title: Praca z Office Add- ins w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z dodatkiem do pakietu Office
linktitle: Praca z dodatkiem do pakietu Office
description: "Aspose.Words zamiast Java zapewnia różne klasy do pracy z Office Add- ins. Możesz dodać Task Pane przez rozszerzenie strony internetowej i dostosować właściwości tafli i rozszerzenia."
type: docs
weight: 50
url: /pl/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Czasami możesz chcieć dać dostęp do kontroli interfejsu, które uruchamiają kod do modyfikacji dokumentów. Aspose.Words API zapewnia `WebExtensions` space nazw, które przyznaje różne klasy do dostosowania elementów i atrybutów rozszerzających słownictwo XML dla reprezentowania Uffice Add- ins.

WebExtensions przestrzeń nazw można warunkowo podzielić na:

* Obiekty do pracy z taflą zadań
* Obiekty do pracy z rozszerzeniami sieci

## Korzystanie z Task Panes

Tafle zadań są powierzchniami interfejsu, które są wyświetlane po prawej stronie okna w Microsoft Word. Panel zadań umożliwia użytkownikom dostęp do kontroli interfejsu, które mogą uruchamiać kod do modyfikacji dokumentów.

Na przykład, przy użyciu Aspose.Words API, można dodać taflę zadań add- in i dostosować jej wygląd.

## Korzystanie z rozszerzeń internetowych

Rozszerzenia sieci Web to narzędzia, które rozszerzają możliwości aplikacji Office i współdziałają z treścią dokumentu Office. Rozszerzenia sieciowe zapewniają dodatkową funkcjonalność klientom Office w celu poprawy doświadczenia użytkowników.

Aspose.Words zapewnia możliwość dodania rozszerzeń internetowych typu Task Pane za pomocą [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) oraz [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) klasy, a także pozwala na dostosowanie tafli i właściwości rozszerzenia.

Poniższy przykład kodu pokazuje, jak tworzyć panele zadaniowe i dodawać do paneli zadaniowych rozszerzenia WWW o podstawowych właściwościach:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Aby zobaczyć listę tab zadań add- ins, użyj [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) nieruchomości.

Poniższy przykład kodu pokazuje, jak uzyskać taką listę add- ins:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

