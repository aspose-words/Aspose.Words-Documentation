---
title: Práce se seznamy C#
second_title: Aspose.Words místo .NET
articleTitle: Práce se seznamy
linktitle: Práce se seznamy
description: "Úvod do funkce formátování číslování v Aspose.Words místo .NET."
type: docs
weight: 200
url: /cs/net/working-with-lists/
---

Seznam Microsoft Word dokument je soubor vlastností formátu odstavce. Seznamy lze použít v dokumentech ke struktuře, uspořádání a zvýraznění textu. Seznamy jsou skvělým způsobem, jak zorganizovat data v dokumentech způsobem, který usnadňuje čtenářům vstřebávat a chápat klíčové body.

Každý seznam může mít až 9 úrovní, a formátování vlastnosti, jako je číselný styl, počáteční hodnota, odsazení, umístění záložky, a další jsou definovány samostatně pro každou úroveň.

In Aspose.Words, Práce se seznamy představuje [Lists](https://reference.aspose.com/words/net/aspose.words.lists/) jmenný prostor. Nicméně [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) objekt vždy patří k [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/).

Tento článek popisuje programově práci se seznamy pomocí Aspose.Words.

## Vytvořit seznam pomocí aplikace formátování seznamu

Aspose.Words umožňuje snadné vytváření seznamů pomocí formátování seznamu. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) poskytuje [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/) vlastnost, která vrací a **ListFormat** objekt. Tento objekt má několik metod, jak začít a ukončit seznam a zvýšit/snížit odrážku. Existují dva obecné typy seznamů v Microsoft Word: kulky a čísla:

- Chcete-li začít seznam kulek, zavolejte [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)
- Chcete-li začít číslovaný seznam, zavolejte [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)

Kulka nebo číslo a formátování jsou přidány do stávajícího odstavce a všechny další odstavce vytvořené pomocí **DocumentBuilder** až [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) se volá, aby zastavila formátování seznamu.

V dokumentech Word se seznamy mohou skládat až z devíti úrovní. Seznam formátování pro každou úroveň určuje, jaká kulka nebo číslo se používá, levá odrážka, prostor mezi kulkou a textem atd. Následující metody mění úroveň seznamu a uplatňují vlastnosti formátování nové úrovně:

- Pro zvýšení úrovně seznamu aktuálního odstavce o jednu úroveň volejte [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)
- Pro snížení úrovně seznamu aktuálního odstavce o jednu úroveň volejte [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)

Můžete také použít [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) vlastnost získat nebo nastavit úroveň seznamu pro odstavec.

{{% alert color="primary" %}}

Úroveň seznamu je 0 až 8.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vytvořit víceúrovňový seznam:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## Upřesnit formát pro úroveň seznamu

Objekty úrovně seznamu se vytvoří automaticky při vytvoření seznamu. Použijte vlastnosti a metody [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) třída pro kontrolu formátování jednotlivých úrovní seznamu.

## Restartovat seznam pro každou část

Můžete restartovat seznam pro každou sekci pomocí [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/) majetek. Všimněte si, že tato volba je podporována pouze ve formátech dokumentů RTF, DOC a DOCX. Tato volba bude zapsána do DOCX pouze v případě, že OoxmlCompliance je vyšší pak Ecma376.

Následující příklad kódu ukazuje, jak vytvořit seznam a restartovat jej pro každou sekci:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
