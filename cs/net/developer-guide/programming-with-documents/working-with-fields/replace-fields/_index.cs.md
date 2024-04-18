---
title: Nahradit pole C#
second_title: Aspose.Words místo .NET
articleTitle: Nahradit pole statickým textem
linktitle: Nahradit pole statickým textem
description: "Naučte se, jak nahradit pole textem C#. Nahradit pole statickými údaji pomocí .NET API."
type: docs
weight: 37
url: /cs/net/replace-fields/
---

Výměna polí je často nutná, pokud chcete uložit svůj dokument jako statická kopie. Například při odesílání jako příloha v e-mailu. Převodní pole jako např. `DATE` nebo `TIME` ke statickému textu umožní dokument zobrazit stejné datum, jako když byl odeslán. Také v některých situacích, můžete potřebovat odstranit podmíněné `IF` pole z vašeho dokumentu a místo toho je nahradíte nejnovějším textovým výsledkem. Například, převést výsledek `IF` pole statického textu, takže již nebude dynamicky měnit svou hodnotu při aktualizaci polí v dokumentu.

Následující schéma ukazuje, jak `IF` pole je skladováno v dokumentu:

* text je obklopen speciálními polními uzly [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) a [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend)
* [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) Uzel odděluje text uvnitř pole do kódu pole a výsledku pole
* pole kód definuje obecné chování pole, zatímco výsledek pole si zachovává nejnovější výsledek, když je toto pole aktualizováno pomocí Microsoft Word nebo Aspose.Words
* výsledek pole je uložen v poli a zobrazen v dokumentu při pohledu

![update-remove-a-field-aspose-words](/words/net/replace-fields/updating-and-removing-a-field-1.png)

Struktura lze také vidět níže v hierarchické podobě pomocí [demo projekt *DocumentExplorer*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](/words/net/replace-fields/updating-and-removing-a-field-2.png)

## Pole, která nelze nahradit textem

Výměna pole statickým textem nefunguje správně pro některá pole v hlavičce nebo zápatí.

Například, snaží převést `PAGE` pole v hlavičce nebo zápatí statického textu povede ke stejné hodnotě zobrazené na všech stránkách. To je proto, že hlavičky a zápatí se opakují přes více stran, a když zůstávají jako pole, jsou manipulovány zejména tak, aby zobrazovaly správný výsledek pro každou stránku.

Nicméně, v záhlaví, `PAGE` pole překládá dobře na statický průběh textu. Tento průběh textu bude vyhodnocen jako poslední stránka v sekci, která způsobí `PAGE` pole v záhlaví zobrazí poslední stránku na všech stránkách.

Následující příklad kódu ukazuje, jak nahradit pole jeho nejnovějším výsledkem:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UnlinkFields.cs" >}}

## Převést některé typy polí do konkrétních částí dokumentu

Od **ConvertFieldsToStaticText** metoda přijímá dva parametry [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) vlastnosti a [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) vyjmenování, je možné předat jakýkoli kompozitní uzel této metodě. To umožňuje převést pole na statický text pouze v určitých částech dokumentu.

Například, můžete projít [Document](https://reference.aspose.com/words/net/aspose.words/document/) objekt a převést pole daného typu z celého dokumentu do statického textu, nebo můžete projít [Body](https://reference.aspose.com/words/net/aspose.words/body/) objekt sekce a pouze převést pole nalezená v tomto těle.

{{% alert color="primary" %}}

Při průchodu uzel na úrovni bloku, jako je [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), Uvědomte si, že v některých případech mohou pole přesahovat více odstavců. Pokud se tak stane, doporučuje se namísto toho předat rodiče kompozitu.

{{% /alert %}}

• [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) počet předán **ConvertFieldsToStaticText** metoda určuje, jaký typ polí by měl být převeden na statický text. Jakýkoli jiný druh pole nalezený v dokumentu zůstane nezměněn.

Následující příklad kódu ukazuje, jak vybrat pole určitého typu *targetFieldType* ve specifickém uzlu; *compositeNode* a pak je převést na statický text:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

Následující příklad kódu ukazuje, jak převést všechny `IF` pole v dokumentu ke statickému textu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Linked%20fields.docx).

{{% /alert %}}

Následující příklad kódu ukazuje, jak převést všechny `PAGE` pole v těle dokumentu ke statickému textu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInBody-ConvertFieldsInBody.cs" >}}

Následující příklad kódu ukazuje, jak převést všechny `IF` pole v posledním odstavci pro statický text:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.cs" >}}
