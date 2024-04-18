---
title: Navigace s kurzorem v C#
second_title: Aspose.Words místo .NET
articleTitle: Navigace kurzorem
linktitle: Navigace kurzorem
description: "Navigovat mezi různými uzly v dokumentu, jako je odstavec, záložka, nebo konkrétní znak pomocí C#."
type: docs
weight: 10
url: /cs/net/navigation-with-cursor/
---

Při práci s dokumentem, i když je krátký nebo dlouhý, budete muset navigovat prostřednictvím svého dokumentu. Navigace virtuálním kurzorem představuje schopnost navigovat mezi různými uzly v dokumentu.

V krátkém dokumentu, pohyb v dokumentu je jednoduchý, jak můžete přesunout bod vložení i pomocí klávesnice šipkami nebo kliknutím myši najít místo vložení kdekoliv chcete. Ale jakmile budete mít velký dokument, který má mnoho stránek, tyto základní techniky budou nedostatečné.

Tento článek vysvětluje, jak se pohybovat v dokumentu a navigovat s virtuálním kurzorem do různých částí.

## Detekuji současnou polohu kurzoru

Před zahájením procesu procházení vaším dokumentem, budete muset získat uzel, který je momentálně vybrán. Přesnou pozici kurzoru můžete získat na vybraném uzlu pomocí [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/) majetek. Kromě toho, místo získání aktuálního nódu, můžete získat aktuálně vybraný odstavec nebo aktuálně vybranou sekci pomocí [CurrentParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentparagraph/) a [CurrentSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentsection/) vlastnosti.

Jakékoliv operace vložení provádíte pomocí [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) budou vloženy před [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/). Pokud je současný odstavec prázdný nebo je kurzor umístěn těsně před koncem odstavce, **CurrentNode** vrací nula.

## Navigační metody v dokumentu

Když editujete text, je důležité vědět, jak navigovat váš dokument a kde přesně se v něm pohybovat. Aspose.Words umožňuje pohybovat se v dokumentu a navigovat do jeho různých částí a částí, to je podobné funkčnosti navigačního panelu v Microsoft Word přejít na stránku nebo směr v dokumentu Word bez rolování.

Hlavní metodou je být schopen přesunout kurzorovou pozici na konkrétní uzel ve vašem dokumentu, můžete toho dosáhnout pomocí [MoveTo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/moveto/) metoda.

Následující příklad kódu ukazuje, jak pohybovat **DocumentBuilder** do různých uzlů v dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

Ale kromě základů **MoveTo** metoda, tam jsou konkrétnější.

### Přejít na začátek nebo konec dokumentu

Můžete přejít na začátek nebo konec dokumentu pomocí [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) a [MoveToDocumentEnd](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentend/) metody.

Následující příklad kódu ukazuje, jak přesunout pozici kurzoru na začátek nebo konec dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### Navigovat se záložkami

Můžete označit místo, které chcete najít a přesunout se k němu znovu snadno. Do svého dokumentu můžete vložit tolik záložek, kolik chcete, a pak je procházet pomocí záložek s jedinečnými jmény. Můžete se přesunout do záložky pomocí [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/) metoda.

Následující příklady kódů ukazují, jak přesunout pozici kurzoru do záložky:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### Navigovat ke stolním buňkám

Můžete se přestěhovat do buňky stolu pomocí [MoveToCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetocell/) metoda. Tato metoda vám umožní navigovat kurzor do jakékoliv buňky v konkrétní tabulce. Kromě toho můžete zadat index pro přesun kurzoru do libovolné polohy nebo zadaného znaku v buňce uvnitř **MoveToCell** metoda.

Následující příklad kódu ukazuje, jak přesunout pozici kurzoru do zadané buňky tabulky:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### Přejít na pole

Můžete se přesunout do určitého pole ve vašem dokumentu pomocí [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/) metoda. Kromě toho můžete přejít na konkrétní pole sloučení pomocí [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/) metoda.

Následující příklad kódu ukazuje, jak přesunout kurzor stavitele dokumentů na konkrétní pole:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### Přejít na hlavičku nebo zápatí

Můžete se přesunout na začátek hlavičky nebo zápatí pomocí [MoveToHeaderFooter](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoheaderfooter/) metoda

Následující příklad kódu ukazuje, jak přesunout kurzor stavitele dokumentů na hlavičku nebo zápatí dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### Navigovat do oddílu nebo odstavce

Můžete se přestěhovat do konkrétní sekce nebo odstavce pomocí [MoveToParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoparagraph/) nebo [MoveToSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetosection/) metody. Kromě toho můžete zadat index pro přesun kurzoru do libovolné polohy nebo určeného znaku v odstavci **MoveToParagraph** metoda.

Následující příklad kódu ukazuje, jak přejít na konkrétní oddíl a konkrétní odstavec v dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
