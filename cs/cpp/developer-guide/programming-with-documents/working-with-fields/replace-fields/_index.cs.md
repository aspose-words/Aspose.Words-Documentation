---
title: Nahradit Pole C++
second_title: Aspose.Words pro C++
articleTitle: Nahraďte pole statickým textem
linktitle: Nahraďte pole statickým textem
description: "Naučte se, jak nahradit pole textem v C++. Nahraďte pole statickými daty pomocí C++ API."
type: docs
weight: 37
url: /cs/cpp/replace-fields/
timestamp: 2024-01-27-14-07-04
---

Nahrazení polí je často vyžadováno, pokud chcete dokument uložit jako statickou kopii. Například při odesílání jako příloha v e-mailu. Převod polí jako `DATE` nebo `TIME` na statický text umožní dokumentu zobrazit stejné datum, jako když byl odeslán. V některých situacích také možná budete muset z dokumentu odebrat podmíněná pole `IF` a místo toho je nahradit nejnovějším výsledkem textu. Například převod výsledku pole `IF` na statický text, takže již nebude dynamicky měnit jeho hodnotu při aktualizaci polí v dokumentu.

Níže uvedený diagram ukazuje, jak je pole `IF` uloženo v dokumentu:

* text je obklopen speciálními uzly pole - [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldstart/) a [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldend/)
* uzel [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_separator/) odděluje text v poli na kód pole a výsledek pole
* kód pole definuje obecné chování pole, zatímco výsledek pole zachovává nejnovější výsledek, když je toto pole aktualizováno pomocí Microsoft Word nebo Aspose.Words
* výsledkem pole je to, co je uloženo v poli a zobrazeno v dokumentu při prohlížení

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

Strukturu lze také vidět níže v hierarchické podobě pomocí demo projektu *"DocumentExplorer"*.

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## Pole, která nelze nahradit textem

Nahrazení pole statickým textem nefunguje správně pro některá pole v záhlaví nebo zápatí.

Například pokus o převod pole `PAGE` v záhlaví nebo zápatí na statický text bude mít za následek zobrazení stejné hodnoty na všech stránkách. Je to proto, že záhlaví a zápatí se opakují na více stránkách, a když zůstanou jako pole, jsou zpracovány zejména proto, aby zobrazovaly správný výsledek pro každou stránku.

V záhlaví se však pole `PAGE` dobře překládá na statický běh textu. Tento běh textu bude vyhodnocen, jako by to byla poslední stránka v sekci, což způsobí, že jakékoli pole `PAGE` v záhlaví zobrazí poslední stránku na všech stránkách.

Následující příklad kódu ukazuje, jak nahradit pole jeho nejnovějším výsledkem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UnlinkFields.cpp" >}}

## Převést určité typy polí v konkrétních částech dokumentu

Protože metoda **ConvertFieldsToStaticText** přijímá dva parametry – vlastnosti [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) a výčet [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/), je možné této metodě předat jakýkoli složený uzel. To umožňuje převést pole na statický text pouze v určitých částech dokumentu.

Můžete například předat objekt [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) a převést pole zadaného typu z celého dokumentu na statický text, nebo můžete předat objekt [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) sekce a převést pouze pole nalezená v tomto těle.

{{% alert color="primary" %}}

Při předávání uzlu na úrovni bloku, jako je [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), mějte na paměti, že v některých případech mohou pole přesahovat více odstavců. Pokud k tomu dojde, doporučuje se místo toho předat rodiče kompozitu, aby se tomu zabránilo.

{{% /alert %}}

Výčet [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) předaný metodě **ConvertFieldsToStaticText** určuje, jaký typ polí má být převeden na statický text. Jakýkoli jiný typ pole nalezený v dokumentu zůstane nezměněn.

Následující příklad kódu ukazuje, jak vybrat pole konkrétního typu - *targetFieldType* v konkrétním uzlu - *compositeNode* a poté je převést na statický text:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cpp" >}}

Následující příklad kódu ukazuje, jak převést všechna pole `IF` v dokumentu na statický text:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Následující příklad kódu ukazuje, jak převést všechna pole `PAGE` v těle dokumentu na statický text:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Následující příklad kódu ukazuje, jak převést všechna pole `IF` v posledním odstavci na statický text:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}
