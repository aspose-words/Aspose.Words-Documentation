---
title: Tabel Oorsig
second_title: Aspose.Words vir Python
articleTitle: Tabel Oorsig
linktitle: Tabel Oorsig
description: "Werk met tabelle en hul komponente soos selle, rye, kolomme in Aspose.Words vir Python. Hoe om te werk met tabelle in Python."
type: docs
weight: 10
url: /af/python-net/table-overview/
---

Aspose.Words is'n klas biblioteek ontwerp vir bediener-kant verwerking van dokumente in verskillende formate PDF, HTML, verskillende Microsoft Word formate en ander en ondersteun tabelle in die volgende maniere:

* tabelle in'n dokument word bewaar tydens open / save en omskakelings
* dit is moontlik om tabel, inhoud en die opmaak daarvan te wysig, en dan die veranderinge na'n lêer uit te voer in'n formaat wat tabelle ondersteun

In hierdie artikel sal ons meer leer oor tabelstruktuur, selle, rye en kolomme ondersteun deur Aspose.Words, en die besonderhede van die werk met sulke tabelle.

## Tabelstruktuur

Soos reeds genoem, bestaan die tabel uit elemente soos **Cell**, **Row** en **Column**. Dit is konsepte wat algemeen is vir alle tabelle in die algemeen, ongeag die dokumentformaat.

Dit is'n algemene voorbeeld van'n tabel wat in'n Microsoft Word dokument gevind word:

![tables-overview-aspose-words-python-1](tables-overview-1.png)

### Tabelknope

'n tabel van enige dokument gelaai in Aspose.Words word ingevoer as'n **Table node**. Die tabel kan gevind word as'n kind van:

- hoof teks
- 'n inline storie soos'n kommentaar of'n voetnoot
- selle wanneer'n tabel is geneste binne'n ander tabel

{{% alert color="primary" %}}

Let daarop dat tabelle binne ander tabelle tot enige diepte ingebed kan word.

{{% /alert %}}

### Tabelinhoud

Die tabel node bevat nie enige werklike inhoud in plaas daarvan, dit is'n houer vir ander sulke nodes wat die inhoud maak:

- **Table** bevat baie **Row** nodusse. Die tabel bied al die gewone node-elemente, sodat u die tabel in die dokument vrylik kan beweeg, verander en verwyder.
- **Row** verteenwoordig'n enkele tabel ry en bevat baie **Cell** nodes. Daarbenewens bied die **Row** elemente wat definieer hoe die ry vertoon word, soos hoogte en uitleg.
- **Cell** is wat die ware inhoud bevat wat in die tabel sigbaar is en bestaan uit a **Paragraph** en ander blokvlakknope. Daarbenewens kan selle geneste tabelle bevat.

![tables-overview-aspose-words-python-2](tables-overview-2.png)

{{% alert color="primary" %}}

U kan die struktuur van tabelknope in'n dokument nagaan met die **DocumentExplorer**.

{{% /alert %}}

### Leë Paragraaf Na Tabel

Die prentjie hierbo toon dat die dokument'n tabel van verskeie rye bevat, wat op sy beurt uit twee selle bestaan. Elkeen van die twee selle bevat'n paragraaf, wat die houer is vir die sel se geformateerde teks.

Dit is ook opmerklik dat die skeiding van twee opeenvolgende tabelle in'n dokument ten minste een leë paragraaf na die tabel vereis. Sonder so'n paragraaf sou opeenvolgende tabelle in een saamgevoeg word. Hierdie gedrag is identies in beide Microsoft Word en Aspose.Words.

In Aspose.Words, is alle klasse en eienskappe wat verband hou met tabelle vervat in die [Aspose.Words.Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/) module.

## Sien Ook

* [Aspose.Words Dokument Voorwerp Model (DOM)](/words/python-net/aspose-words-document-object-model/)
* [Logiese Vlakke Van Nodusse in'n Dokument](/words/python-net/logical-levels-of-nodes-in-a-document/)