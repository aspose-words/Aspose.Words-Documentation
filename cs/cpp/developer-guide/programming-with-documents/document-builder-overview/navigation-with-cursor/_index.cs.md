---
title: Navigace s kurzorem v C++
second_title: Aspose.Words pro C++
articleTitle: Navigace s kurzorem
linktitle: Navigace s kurzorem
description: "Procházejte mezi různými uzly v dokumentu, například odstavcem, záložkou nebo konkrétním znakem pomocí C++."
type: docs
weight: 10
url: /cs/cpp/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Při práci s dokumentem, i když je krátký nebo dlouhý, budete muset dokument procházet. Navigace pomocí virtuálního kurzoru představuje schopnost procházet mezi různými uzly v dokumentu.

V krátkém dokumentu je pohyb v dokumentu jednoduchý, protože kurzor můžete přesunout i pomocí kláves se šipkami na klávesnici nebo kliknutím myši a vyhledejte kurzor kdekoli chcete. Ale jakmile budete mít velký dokument, který má mnoho stránek, budou tyto základní techniky nedostatečné.

Tento článek vysvětluje, jak se pohybovat v dokumentu a navigovat pomocí virtuálního kurzoru do různých jeho částí.

## Detekce Aktuální Polohy Kurzoru

Před zahájením procesu navigace v dokumentu budete muset získat uzel, který je aktuálně vybrán. Přesnou polohu kurzoru ve vybraném uzlu můžete získat pomocí Vlastnosti [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Kromě toho můžete místo získání aktuálního uzlu získat aktuálně vybraný odstavec nebo aktuálně vybranou sekci pomocí vlastností [CurrentParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentparagraph/) a [CurrentSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentsection/).

Všechny operace vložení, které provedete pomocí [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), budou vloženy před [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Když je aktuální odstavec prázdný nebo je kurzor umístěn těsně před koncem odstavce, **CurrentNode** vrátí nullptr.

## Navigace v dokumentu

Při úpravách textu je důležité vědět, jak se v dokumentu pohybovat a kam přesně se v něm pohybovat. Aspose.Words umožňuje pohybovat se v dokumentu a přecházet do jeho různých částí a částí – to je podobné funkci navigačního podokna v Microsoft Word pro přechod na stránku nebo Nadpis v Word dokumentu bez posouvání.

Hlavní metodou je možnost přesunout pozici kurzoru na konkrétní uzel v dokumentu, čehož lze dosáhnout pomocí metody [MoveTo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/moveto/).

Následující příklad kódu ukazuje, jak přesunout **DocumentBuilder** do různých uzlů v dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

Ale kromě základní metody **MoveTo** existují i konkrétnější.

### Přejděte na začátek nebo konec dokumentu

Můžete přejít na začátek nebo konec dokumentu pomocí metod [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) a [MoveToDocumentEnd](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentend/).

Následující příklad kódu ukazuje, jak přesunout pozici kurzoru na začátek nebo konec dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Navigace Se Záložkami

Můžete označit místo, které chcete najít, a snadno se k němu znovu přesunout. Do dokumentu můžete vložit tolik záložek, kolik chcete, a poté je procházet identifikací záložek s jedinečnými názvy. Na záložku se můžete přesunout pomocí metody [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/).

Následující příklady kódu ukazují, jak přesunout pozici kurzoru na záložku:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### Přejděte na buňky tabulky

Do buňky tabulky se můžete přesunout pomocí metody [MoveToCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetocell/). Tato metoda vám umožní navigovat kurzor do libovolné buňky v konkrétní tabulce. Kromě toho můžete určit index pro přesun kurzoru na libovolnou pozici nebo zadaný znak v buňce v rámci metody **MoveToCell**.

Následující příklad kódu ukazuje, jak přesunout pozici kurzoru do určené buňky tabulky:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Přejděte do pole

Pomocí metody [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/) se můžete přesunout do konkrétního pole v dokumentu. Kromě toho můžete přesunout do konkrétního pole sloučení pomocí metody [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/).

Následující příklad kódu ukazuje, jak přesunout kurzor tvůrce dokumentů do konkrétního pole:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### Přejděte na záhlaví nebo zápatí

Pomocí metody [MoveToHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoheaderfooter/) se můžete přesunout na začátek záhlaví nebo zápatí.

Následující příklad kódu ukazuje, jak přesunout kurzor tvůrce dokumentů do záhlaví nebo zápatí dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Přejděte na sekci nebo odstavec

Do určité sekce nebo odstavce se můžete přesunout pomocí metod [MoveToParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoparagraph/) nebo [MoveToSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetosection/). Kromě toho můžete zadat index pro přesun kurzoru na libovolnou pozici nebo zadaný znak v odstavci v rámci metody **MoveToParagraph**.

Následující příklad kódu ukazuje, jak přejít na konkrétní oddíl a konkrétní odstavec v dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}
