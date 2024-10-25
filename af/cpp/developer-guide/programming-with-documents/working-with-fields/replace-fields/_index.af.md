---
title: Vervang Velde C++
second_title: Aspose.Words vir C++
articleTitle: Vervang Velde Met Statiese Teks
linktitle: Vervang Velde Met Statiese Teks
description: "Leer hoe om velde te vervang met teks in C++. Vervang velde met statiese data met die C++ API."
type: docs
weight: 37
url: /af/cpp/replace-fields/
---

Vervanging van velde word dikwels vereis wanneer jy jou dokument as'n statiese kopie wil stoor. Byvoorbeeld, wanneer jy as'n aanhangsel in'n e-pos stuur. Deur velde soos `DATE` of `TIME` na statiese teks om te skakel, kan die dokument dieselfde datum vertoon as toe dit gestuur is. In sommige situasies moet u moontlik ook die voorwaardelike `IF` - velde uit u dokument verwyder en dit vervang met die mees onlangse teksresultaat. Byvoorbeeld, die omskakeling van die resultaat van die `IF` veld na statiese teks sodat dit nie meer dinamies sy waarde sal verander wanneer velde in die dokument opgedateer word nie.

Die onderstaande diagram toon hoe die `IF` veld in'n dokument gestoor word:

* die teks word omring deur die spesiale veldknope - [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldstart/) en [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldend/)
* die [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_separator/) node skei die teks binne die veld in die veld kode en veld resultaat
* die veld kode definieer die algemene gedrag van die veld, terwyl die veld resultaat behou die mees onlangse resultaat wanneer hierdie veld is opgedateer met behulp van Microsoft Word of Aspose.Words
* die veld resultaat is wat gestoor word in die veld en vertoon in die dokument wanneer besigtig

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

Die struktuur kan ook hieronder in hiërargiese vorm gesien word met behulp van die demo projek *"DocumentExplorer"*.

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## Velde Wat Nie Deur Teks Vervang Kan Word Nie

Die vervanging van'n veld met statiese teks werk nie behoorlik vir sommige velde in'n kop of voetskrif nie.

Byvoorbeeld, probeer om die `PAGE` veld in'n kop of voetskrif te omskep in statiese teks sal lei tot dieselfde waarde wat op alle bladsye vertoon word. Dit is omdat kop-en voetskrifte oor verskeie bladsye herhaal word, en wanneer hulle as velde bly, word hulle spesiaal hanteer sodat hulle die korrekte resultaat vir elke bladsy vertoon.

In die koptekst vertaal die `PAGE` veld egter goed na statiese teks. Hierdie reeks teks sal geëvalueer word asof dit die laaste bladsy in die afdeling is, wat sal veroorsaak dat enige `PAGE` veld in die kop die laaste bladsy oor alle bladsye vertoon.

Die volgende kode voorbeeld toon hoe om die veld te vervang met sy mees onlangse resultaat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UnlinkFields.cpp" >}}

## Omskep Sekere Veldtipes in Spesifieke Dokumentonderdele

Aangesien die **ConvertFieldsToStaticText** metode twee parameters aanvaar – die [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) eienskappe en die [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) opsomming, is dit moontlik om enige saamgestelde knoop aan hierdie metode oor te dra. Dit laat toe dat velde slegs in spesifieke dele van die dokument na statiese teks omgeskakel kan word.

Byvoorbeeld, jy kan'n [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) voorwerp slaag en velde van die gespesifiseerde tipe van die hele dokument omskakel na statiese teks, of jy kan'n [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) voorwerp van'n afdeling slaag en slegs die velde wat in daardie liggaam gevind word, omskakel.

{{% alert color="primary" %}}

Wanneer jy'n blokvlak-knooppunt soos a [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) verbygaan, moet jy bewus wees dat velde in sommige gevalle oor verskeie paragrawe kan strek. As dit gebeur, word dit aanbeveel om die ouer van die saamgestelde te slaag om dit te vermy.

{{% /alert %}}

Die [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) opsomming wat aan die **ConvertFieldsToStaticText** metode oorgedra word, spesifiseer watter tipe velde na statiese teks omgeskakel moet word. Enige ander veldtipe wat in die dokument gevind word, sal onveranderd bly.

Die volgende kode voorbeeld toon hoe om velde van'n spesifieke tipe – *targetFieldType* in'n spesifieke node – *compositeNode* te kies en dan omskep hulle na statiese teks:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cpp" >}}

Die volgende kode voorbeeld toon hoe om al die `IF` velde in'n dokument te omskep in statiese teks:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Die volgende kode voorbeeld toon hoe om al die `PAGE` velde in'n Liggaam van'n dokument te omskep in statiese teks:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Die volgende kode voorbeeld toon hoe om al die `IF` velde in die laaste paragraaf te omskep in statiese teks:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}