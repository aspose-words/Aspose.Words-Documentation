---
title: Praca z listami w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z listami
linktitle: Praca z listami
description: "Twórz, określaj formatowanie i restartuj listy w dokumencie za pomocą Python."
type: docs
weight: 200
url: /pl/python-net/working-with-lists/
---

Lista w dokumencie Microsoft Word to zestaw właściwości formatowania listy. List można używać w dokumentach do formatowania, porządkowania i podkreślania tekstu. Listy to świetny sposób organizowania danych w dokumentach i ułatwiają czytelnikom zrozumienie kluczowych punktów

Każda lista może mieć maksymalnie 9 poziomów, a właściwości formatowania, takie jak styl liczb, wartość początkowa, wcięcie, pozycja tabulacji itp. są definiowane osobno dla każdego poziomu.

W Aspose.Words pracę z listami reprezentuje moduł [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/). Jednak obiekt [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) zawsze należy do kolekcji [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/).

W tym temacie opisano, jak programowo pracować z listami przy użyciu formatu Aspose.Words

## Tworzenie list poprzez zastosowanie formatowania listy

Aspose.Words umożliwia łatwe tworzenie list poprzez zastosowanie formatowania list. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) udostępnia właściwość [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/), która zwraca obiekt [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/). Obiekt ten ma kilka metod rozpoczynania i kończenia listy oraz zwiększania/zmniejszania wcięcia. W Microsoft Word istnieją dwa ogólne typy list: wypunktowane i numerowane.

- Aby rozpocząć listę punktowaną, zadzwoń do [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- Aby rozpocząć listę numerowaną, zadzwoń do [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

Punktor lub numer i formatowanie są dodawane do bieżącego akapitu i wszystkich kolejnych akapitów tworzonych przy użyciu formatu [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), dopóki nie zostanie wywołane [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) w celu zatrzymania formatowania listy punktowanej.

W dokumentach programu Word listy mogą składać się z maksymalnie dziewięciu poziomów. Formatowanie listy dla każdego poziomu określa, jaki punktor lub numer jest używany, wcięcie z lewej strony, odstęp między punktorem a tekstem itp. Następujące metody zmieniają poziom listy i stosują właściwości formatowania nowego poziomu:

- Aby zwiększyć poziom listy bieżącego akapitu o jeden poziom, wywołaj [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- Aby zmniejszyć poziom listy bieżącego akapitu o jeden poziom, wywołaj [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

Metody zmieniają poziom listy i stosują właściwości formatowania nowego poziomu.

{{% alert color="primary" %}}

Możesz także użyć właściwości [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/), aby uzyskać lub ustawić poziom listy dla akapitu. Poziomy listy są ponumerowane od 0 do 8.

{{% /alert %}}

Poniższy przykład pokazuje jak zbudować listę wielopoziomową.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Określ formatowanie dla poziomu listy

Obiekty na poziomie listy są tworzone automatycznie podczas tworzenia listy. Użyj właściwości i metod klasy [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) do kontrolowania formatowania poszczególnych poziomów listy.

## Lista ponownego uruchomienia dla każdej sekcji

Możesz zrestartować listę dla każdej sekcji, używając właściwości [is_restart_at_each_section właściwość](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/). Należy pamiętać, że ta opcja jest obsługiwana tylko w formatach dokumentów RTF, DOC i DOCX. Ta opcja zostanie zapisana w DOCX tylko wtedy, gdy zgodność Ooxml jest wyższa niż Ecma376.

Poniższy przykład kodu pokazuje, jak utworzyć listę i uruchomić ją ponownie dla każdej sekcji:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
