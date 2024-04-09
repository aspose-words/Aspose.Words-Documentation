---
title: Práce se seznamy Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce se seznamy
linktitle: Práce se seznamy
description: "Vytvořit, zadat formátování a restartovat seznamy v dokumentu pomocí Python."
type: docs
weight: 200
url: /cs/python-net/working-with-lists/
---

Seznam Microsoft Word dokument je soubor vlastností formátu seznamu. Seznamy lze použít ve vašich dokumentech k formátování, uspořádání a zdůraznění textu. Seznamy jsou skvělým způsobem, jak zorganizovat data v dokumentech a pro čtenáře je snazší porozumět klíčovým bodům

Každý seznam může mít až 9 úrovní a vlastnosti formátování, jako je například styl čísel, počáteční hodnota, odrážka, umístění záložky atd. jsou definovány samostatně pro každou úroveň.

In Aspose.Words, Práce se seznamy představuje [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/) Modul. Nicméně [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) objekt vždy patří k [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/) kolekce.

Toto téma popisuje, jak pracovat programově se seznamy pomocí Aspose.Words

## Tvorba seznamů použitím formátování seznamu

Aspose.Words umožňuje snadné vytváření seznamů pomocí formátování seznamu. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) poskytuje [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) vlastnost, která vrací a [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/) objekt. Tento objekt má několik metod, jak začít a ukončit seznam a zvýšit/snížit odrážku. Existují dva obecné typy seznamů v Microsoft WordZastřelen a sečten.

- Chcete-li začít seznam kulek, zavolejte [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- Chcete-li začít číslovaný seznam, zavolejte [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

Kulka nebo číslo a formátování jsou přidány do stávajícího odstavce a všechny další odstavce vytvořené pomocí [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) až [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) se volá, aby zastavila formátování seznamu.

V dokumentech Word se seznamy mohou skládat až z devíti úrovní. Seznam formátování pro každou úroveň určuje, jaká kulka nebo číslo se používá, levá odrážka, prostor mezi kulkou a textem atd. Následující metody mění úroveň seznamu a uplatňují vlastnosti formátování nové úrovně:

- Pro zvýšení úrovně seznamu aktuálního odstavce o jednu úroveň volejte [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- Pro snížení úrovně seznamu aktuálního odstavce o jednu úroveň volejte [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

Metody mění úroveň seznamu a uplatňují formátovací vlastnosti nové úrovně.

{{% alert color="primary" %}}

Můžete také použít [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) vlastnost získat nebo nastavit úroveň seznamu pro odstavec. Úroveň seznamu je 0 až 8.

{{% /alert %}}

Níže uvedený příklad ukazuje, jak vytvořit víceúrovňový seznam.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Upřesnit formát pro úroveň seznamu

Objekty úrovně seznamu se vytvoří automaticky při vytvoření seznamu. Použijte vlastnosti a metody [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) třída pro kontrolu formátování jednotlivých úrovní seznamu.

## Restartovat seznam pro každou část

Můžete restartovat seznam pro každou sekci pomocí [is_restart_at_each_section vlastnost](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/) majetek. Všimněte si, že tato volba je podporována pouze ve formátech dokumentů RTF, DOC a DOCX. Tato volba bude zapsána do DOCX pouze v případě, že OoxmlCompliance je vyšší pak Ecma376.

Následující příklad kódu ukazuje, jak vytvořit seznam a restartovat jej pro každou sekci:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
