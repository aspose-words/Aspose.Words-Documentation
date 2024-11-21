---
title: Navigace s kurzorem v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Navigace kurzorem
linktitle: Navigace kurzorem
description: "Navigovat mezi různými uzly v rámci dokumentu, jako je odstavec, záložka, nebo konkrétní znak pomocí Python."
type: docs
weight: 10
url: /cs/python-net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Při práci s dokumentem, i když je krátký nebo dlouhý, budete muset navigovat prostřednictvím svého dokumentu. Navigace virtuálním kurzorem představuje schopnost navigovat mezi různými uzly v dokumentu.

V krátkém dokumentu, pohyb v dokumentu je jednoduchý, jak můžete přesunout bod vložení i pomocí klávesnice šipkami nebo kliknutím myši najít místo vložení kdekoliv chcete. Ale jakmile budete mít velký dokument, který má mnoho stránek, tyto základní techniky budou nedostatečné.

Tento článek vysvětluje, jak se pohybovat v dokumentu a navigovat s virtuálním kurzorem do různých částí.

## Detekuji současnou polohu kurzoru

Před zahájením procesu procházení vaším dokumentem, budete muset získat uzel, který je momentálně vybrán. Přesnou pozici kurzoru můžete získat na vybraném uzlu pomocí [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) majetek. Kromě toho, místo získání aktuálního nódu, můžete získat aktuálně vybraný odstavec nebo aktuálně vybranou sekci pomocí [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) a [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/) vlastnosti.

Jakékoliv operace vložení provádíte pomocí [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) budou vloženy před [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Pokud je současný odstavec prázdný nebo je kurzor umístěn těsně před koncem odstavce, [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) vrací None.

## Navigační metody v dokumentu

Když editujete text, je důležité vědět, jak navigovat váš dokument a kde přesně se v něm pohybovat. Aspose.Words umožňuje pohybovat se v dokumentu a navigovat do jeho různých částí a částí, to je podobné funkčnosti navigačního panelu v Microsoft Word přejít na stránku nebo směr v dokumentu Word bez rolování.

Hlavní metodou je být schopen přesunout kurzorovou pozici na konkrétní uzel ve vašem dokumentu, můžete toho dosáhnout pomocí [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) metoda.

Následující příklad kódu ukazuje, jak pohybovat [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) do různých uzlů v dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Ale kromě základů [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) metoda, tam jsou konkrétnější.

### Přejít na začátek nebo konec dokumentu

Můžete přejít na začátek nebo konec dokumentu pomocí [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) a [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/) metody.

Následující příklad kódu ukazuje, jak přesunout pozici kurzoru na začátek nebo konec dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Navigovat se záložkami

Můžete označit místo, které chcete najít a přesunout se k němu znovu snadno. Do svého dokumentu můžete vložit tolik záložek, kolik chcete, a pak je procházet pomocí záložek s jedinečnými jmény. Můžete se přesunout do záložky pomocí [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) metoda.

Následující příklady kódů ukazují, jak přesunout pozici kurzoru do záložky:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Navigovat ke stolním buňkám

Můžete se přestěhovat do buňky stolu pomocí [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) metoda. Tato metoda vám umožní navigovat kurzor do jakékoliv buňky v konkrétní tabulce. Kromě toho můžete zadat index pro přesun kurzoru do libovolné polohy nebo zadaného znaku v buňce uvnitř [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) metoda.

Následující příklad kódu ukazuje, jak přesunout pozici kurzoru do zadané buňky tabulky:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Přejít na pole

Můžete se přesunout do určitého pole ve vašem dokumentu pomocí [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/) metoda. Kromě toho můžete přejít na konkrétní pole sloučení pomocí [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) metoda.

Následující příklad kódu ukazuje, jak přesunout kurzor stavitele dokumentů na konkrétní pole:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Přejít na hlavičku nebo zápatí

Můžete se přesunout na začátek hlavičky nebo zápatí pomocí [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) metoda

Následující příklad kódu ukazuje, jak přesunout kurzor stavitele dokumentů na hlavičku nebo zápatí dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Navigovat do oddílu nebo odstavce

Můžete se přestěhovat do konkrétní sekce nebo odstavce pomocí [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) nebo [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/) metody. Kromě toho můžete zadat index pro přesun kurzoru do libovolné polohy nebo určeného znaku v odstavci [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) metoda.

Následující příklad kódu ukazuje, jak přejít na konkrétní oddíl a konkrétní odstavec v dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}
