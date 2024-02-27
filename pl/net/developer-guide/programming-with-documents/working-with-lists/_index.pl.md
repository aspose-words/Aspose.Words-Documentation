---
title: Praca z listami w C#
second_title: Aspose.Words dla .NET
articleTitle: Praca z listami
linktitle: Praca z listami
description: "Wprowadzenie do funkcji formatowania numeracji w Aspose.Words dla .NET."
type: docs
weight: 200
url: /pl/net/working-with-lists/
---

Lista w dokumencie Microsoft Word to zestaw właściwości formatowania akapitu. List można używać w dokumentach do strukturyzowania, porządkowania i wyróżniania tekstu. Listy to świetny sposób organizowania danych w dokumentach w sposób ułatwiający czytelnikom przyswojenie i zrozumienie kluczowych punktów.

Każda lista może mieć maksymalnie 9 poziomów, a właściwości formatowania, takie jak styl liczb, wartość początkowa, wcięcie, położenie tabulacji i inne, są definiowane osobno dla każdego poziomu.

W Aspose.Words praca z listami jest reprezentowana przez przestrzeń nazw [Lists](https://reference.aspose.com/words/net/aspose.words.lists/). Jednak obiekt [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) zawsze należy do formatu [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/).

W tym artykule opisano programową pracę z listami przy użyciu formatu Aspose.Words.

## Twórz listy, stosując formatowanie listy

Aspose.Words umożliwia łatwe tworzenie list poprzez zastosowanie formatowania list. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) udostępnia właściwość [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/), która zwraca obiekt **ListFormat**. Obiekt ten ma kilka metod rozpoczynania i kończenia listy oraz zwiększania/zmniejszania wcięcia. W Microsoft Word istnieją dwa ogólne typy list: wypunktowane i numerowane:

- Aby rozpocząć listę punktowaną, zadzwoń do [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)
- Aby rozpocząć listę numerowaną, zadzwoń do [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)

Punktor lub numer i formatowanie są dodawane do bieżącego akapitu i wszystkich kolejnych akapitów tworzonych przy użyciu formatu **DocumentBuilder**, dopóki nie zostanie wywołane [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) w celu zatrzymania formatowania listy punktowanej.

W dokumentach programu Word listy mogą składać się z maksymalnie dziewięciu poziomów. Formatowanie listy dla każdego poziomu określa, jaki punktor lub numer jest używany, wcięcie z lewej strony, odstęp między punktorem a tekstem itp. Następujące metody zmieniają poziom listy i stosują właściwości formatowania nowego poziomu:

- Aby zwiększyć poziom listy bieżącego akapitu o jeden poziom, wywołaj [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)
- Aby zmniejszyć poziom listy bieżącego akapitu o jeden poziom, wywołaj [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)

Możesz także użyć właściwości [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/), aby uzyskać lub ustawić poziom listy dla akapitu.

{{% alert color="primary" %}}

Poziomy listy są ponumerowane od 0 do 8.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zbudować listę wielopoziomową:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## Określ formatowanie dla poziomu listy

Obiekty na poziomie listy są tworzone automatycznie podczas tworzenia listy. Użyj właściwości i metod klasy [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) do kontrolowania formatowania poszczególnych poziomów listy.

## Lista ponownego uruchomienia dla każdej sekcji

Możesz zrestartować listę dla każdej sekcji, używając właściwości [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/). Należy pamiętać, że ta opcja jest obsługiwana tylko w formatach dokumentów RTF, DOC i DOCX. Ta opcja zostanie zapisana w DOCX tylko wtedy, gdy zgodność Ooxml jest wyższa niż Ecma376.

Poniższy przykład kodu pokazuje, jak utworzyć listę i uruchomić ją ponownie dla każdej sekcji:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
