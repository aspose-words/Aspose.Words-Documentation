---
title: Nahradit pole textem Java
second_title: Aspose.Words místo Java
articleTitle: Nahradit pole statickým textem
linktitle: Nahradit pole statickým textem
description: "Naučte se, jak nahradit pole textem Java. Nahradit pole statickými údaji pomocí Java API."
type: docs
weight: 37
url: /cs/java/replace-fields/
---

Výměna polí je často nutná, pokud chcete uložit svůj dokument jako statickou kopii. Například při zasílání jako příloha v e-mailu. Převodní pole jako například `DATE` nebo `TIME` ke statickému textu umožní dokument zobrazit stejné datum, jako když byl odeslán. Také, v některých situacích, můžete potřebovat odstranit podmíněné `IF` pole z vašeho dokumentu a místo toho je nahradit nejnovějším textovým výsledkem. Například, převést výsledek `IF` pole statického textu, takže již nebude dynamicky měnit svou hodnotu při aktualizaci polí v dokumentu.

Následující schéma ukazuje, jak `IF` pole je skladováno v dokumentu:

* text je obklopen speciálními polními uzly [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) a [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) Uzel odděluje text uvnitř pole do kódu pole a výsledku pole
* kód pole definuje obecné chování pole, zatímco výsledek pole si zachovává nejnovější výsledek, když je toto pole aktualizováno pomocí Microsoft Word nebo Aspose.Words
* výsledek pole je uložen v poli a zobrazen v dokumentu při pohledu

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

Struktura je také vidět níže v hierarchické podobě pomocí demo projektu **“DocumentExplorer”**, které lodě s **Aspose.Words** Instalátor.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## Pole, která nelze nahradit textem

Výměna pole statickým textem nefunguje správně pro některá pole v hlavičce nebo zápatí.

Například, snaží převést `PAGE` pole v hlavičce nebo zápatí statického textu povede ke stejné hodnotě zobrazené na všech stránkách. To je proto, že hlavičky a zápatí jsou opakovány přes více stran, a když zůstávají jako pole, jsou manipulovány zejména tak, aby zobrazovaly správný výsledek pro každou stránku.

Nicméně, v záhlaví, `PAGE` pole překládá dobře na statický průběh textu. Tento průběh textu bude vyhodnocen jako poslední stránka v sekci, která způsobí jakýkoliv `PAGE` pole v záhlaví zobrazí poslední stránku na všech stránkách.

Následující příklad kódu ukazuje, jak nahradit pole jeho nejnovějším výsledkem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## Převést některé typy polí do konkrétních částí dokumentu

Od **ConvertFieldsToStaticText** metoda akceptuje dva parametry [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) vlastnosti a [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) enumitation, je možné předat jakýkoli kompozitní uzel této metody. To umožňuje převést pole na statický text pouze ve specifických částech dokumentu.

Například, můžete projít [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) objekt a převést pole daného typu z celého dokumentu do statického textu, nebo můžete projít [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) objekt sekce a pouze převést pole nalezená v tomto těle.

{{% alert color="primary" %}}

Při průchodu uzel na úrovni bloku, jako je [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), Uvědomte si, že v některých případech mohou pole přesahovat více odstavců. Pokud k tomu dojde, doporučuje se namísto toho předat rodiče kompozitu.

{{% /alert %}}

The [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) počet předán na **ConvertFieldsToStaticText** metoda určuje, jaký typ polí by měl být převeden na statický text. Jakýkoli jiný druh pole nalezený v dokumentu zůstane nezměněn.

Následující příklad kódu ukazuje, jak vybrat pole určitého typu *targetFieldType* ve specifickém uzlu; *compositeNode* a pak je převést na statický text:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

Následující příklad kódu ukazuje, jak převést všechny `IF` pole v dokumentu ke statickému textu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

Následující příklad kódu ukazuje, jak převést všechny `PAGE` pole v těle dokumentu ke statickému textu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

Následující příklad kódu ukazuje, jak převést všechny `IF` pole v posledním odstavci statického textu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
