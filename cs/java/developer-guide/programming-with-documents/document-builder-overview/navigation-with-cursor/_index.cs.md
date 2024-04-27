---
title: Navigace s kurzorem v Java
second_title: Aspose.Words místo Java
articleTitle: Navigace s kurzorem
linktitle: Navigace s kurzorem
description: "Navigovat mezi různými uzly v dokumentu, jako je odstavec, záložka, nebo konkrétní znak pomocí Java."
type: docs
weight: 5
url: /cs/java/navigation-with-cursor/
---

Při práci s dokumentem, i když je krátký nebo dlouhý, budete muset projít prostřednictvím svého dokumentu. Navigace virtuálním kurzorem představuje schopnost navigovat mezi různými uzly v dokumentu.

V krátkém dokumentu, pohyb v dokumentu je jednoduchý, jak můžete přesunout bod vložení i pomocí klávesnice šipkami nebo kliknutím myši najít místo vložení kdekoliv chcete. Ale jakmile budete mít velký dokument, který má mnoho stránek, tyto základní techniky budou nedostatečné.

Tento článek vysvětluje, jak se pohybovat v dokumentu a navigovat s virtuálním kurzorem do různých částí.

## Detekuji současnou pozici kurzoru

Před zahájením procesu procházení vaším dokumentem budete muset získat uzel, který je momentálně vybrán. Přesnou pozici kurzoru můžete získat na vybraném uzlu pomocí [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) majetek. Kromě toho, místo získání aktuálního uzlu, můžete získat aktuálně vybraný odstavec nebo aktuálně vybranou sekci pomocí [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) a [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) vlastnosti.

Jakékoliv operace vložení provádíte pomocí [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) budou vloženy před [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). Pokud je současný odstavec prázdný nebo je kurzor umístěn těsně před koncem odstavce, **CurrentNode** vrací null.

## Navigační metody v dokumentu

Při editaci textu je důležité vědět, jak navigovat váš dokument a kde přesně se v něm pohybovat. Aspose.Words umožňuje pohybovat se v dokumentu a navigovat do jeho různých sekcí a částí, to je podobné funkčnosti navigačního panelu v Microsoft Word přejít na stránku nebo směr v dokumentu Word bez rolování.

Hlavní metodou je možnost přesunout kurzorovou pozici na konkrétní uzel ve vašem dokumentu, můžete toho dosáhnout pomocí [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) metoda.

Následující příklad kódu ukazuje, jak pohybovat **DocumentBuilder** do různých uzlů v dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Ale kromě základů **MoveTo** metoda, tam jsou konkrétnější.

### Navigace k zahájení nebo ukončení dokumentu

Můžete přejít na začátek nebo konec dokumentu pomocí [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) a [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) metody.

Následující příklad kódu ukazuje, jak přesunout pozici kurzoru na začátek nebo konec dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Navigovat se záložkami

Můžete označit místo, které chcete najít a přesunout se k němu znovu snadno. Do svého dokumentu můžete vložit tolik záložek, kolik budete chtít, a poté je procházet pomocí záložek s jedinečnými jmény. Můžete se přesunout do záložky pomocí [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) metoda.

Následující příklady kódu ukazují, jak přesunout pozici kurzoru do záložky:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Navigovat ke stolním buňkám

Můžete se přesunout do buňky stolu pomocí [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) metoda. Tato metoda vám umožní navigovat kurzor do jakékoliv buňky v konkrétní tabulce. Kromě toho můžete zadat index pro přesun kurzoru do libovolné polohy nebo zadaného znaku v buňce **MoveToCell** metoda.

Následující příklad kódu ukazuje, jak přesunout pozici kurzoru do zadané buňky tabulky:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Přejít na pole

Můžete se přesunout do určitého pole ve vašem dokumentu pomocí [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) metoda. Kromě toho můžete přejít na konkrétní pole sloučení pomocí [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) metoda.

Následující příklad kódu ukazuje, jak přesunout kurzor stavitele dokumentů do určitého pole:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Přejít na hlavičku nebo zápatí

Můžete se přesunout na začátek hlavičky nebo zápatí pomocí [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) metoda

Následující příklad kódu ukazuje, jak přesunout kurzor stavitele dokumentů na hlavičku nebo zápatí dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Přejít k oddílu nebo odstavci

Můžete se přestěhovat do určité sekce nebo odstavce pomocí [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) nebo [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) metody. Kromě toho můžete zadat index pro přesun kurzoru do jakékoli polohy nebo určeného znaku v odstavci **MoveToParagraph** metoda.

Následující příklad kódu ukazuje, jak se přesunout na konkrétní oddíl a konkrétní odstavec v dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
