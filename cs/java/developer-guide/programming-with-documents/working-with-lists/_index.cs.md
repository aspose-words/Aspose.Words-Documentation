---
title: Práce se seznamy Java
second_title: Aspose.Words místo Java
articleTitle: Práce se seznamy
linktitle: Práce se seznamy
description: "Úvod do funkce formátování číslování v Aspose.Words místo Java."
type: docs
weight: 200
url: /cs/java/working-with-lists/
---

Seznam Microsoft Word dokument je soubor vlastností formátování seznamu. Seznamy lze použít ve vašich dokumentech pro formátování, uspořádání a zdůraznění textu. Seznamy jsou skvělým způsobem, jak zorganizovat data v dokumentech, a umožňují čtenářům pochopit klíčové body.

Každý seznam může mít až 9 úrovní a vlastnosti formátování, jako je například styl čísel, počáteční hodnota, odrážka, umístění záložky a další jsou definovány zvlášť pro každou úroveň.

Tento článek popisuje programově práci se seznamy pomocí Aspose.Words.

## Tvorba seznamů pomocí formátování seznamu

Aspose.Words umožňuje snadné vytváření seznamů pomocí formátování seznamu. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) poskytuje [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) vlastnost, která vrací a **ListFormat** objekt. Tento objekt má několik metod ke spuštění a ukončení seznamu a ke zvýšení nebo snížení odrážky. Existují dva obecné typy seznamů v Microsoft Word: kulky a čísla:

- Chcete-li začít seznam kulky, zavolejte [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Chcete-li začít číslovaný seznam, zavolejte [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

Kulka nebo číslo a formátování jsou přidány do současného odstavce a všechny další odstavce vytvořené pomocí **DocumentBuilder** až [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) se volá, aby zastavil formátování seznamu.

V dokumentech Word se seznamy mohou skládat až z devíti úrovní. Seznam formátování pro každou úroveň určuje, jaká kulka nebo číslo se používá, levá odrážka, prostor mezi kulkou a textem atd. Následující metody mění úroveň seznamu a uplatňují vlastnosti formátování nové úrovně:

- Pro zvýšení úrovně seznamu aktuálního odstavce o jednu úroveň volejte [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- Pro snížení úrovně seznamu aktuálního odstavce o jednu úroveň volejte [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

Metody mění úroveň seznamu a uplatňují formátovací vlastnosti nové úrovně.

{{% alert color="primary" %}}

Můžete také použít [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) vlastnost získat nebo nastavit úroveň seznamu pro odstavec. Úroveň seznamu je 0 až 8.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vytvořit víceúrovňový seznam:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Upřesnit formát pro úroveň seznamu

Objekty úrovně seznamu se vytvoří automaticky při vytvoření seznamu. Použijte vlastnosti a metody [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) třída pro kontrolu formátování jednotlivých úrovní seznamu.

## Restartovat seznam pro každou část

Můžete restartovat seznam pro každou sekci pomocí [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) majetek. Všimněte si, že tato volba je podporována pouze ve formátech dokumentů RTF, DOC a DOCX. Tato volba bude zapsána do DOCX pouze v případě, že OoxmlCompliance je vyšší pak Ecma376.

Následující příklad kódu ukazuje, jak vytvořit seznam a restartovat pro každou sekci:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

