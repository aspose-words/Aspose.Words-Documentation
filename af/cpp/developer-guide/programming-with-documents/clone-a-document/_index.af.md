---
title: Kloon'n Dokument in C++
second_title: Aspose.Words vir C++
articleTitle: Kloon'n Dokument
linktitle: Kloon'n Dokument
type: docs
description: "Kloon'n dokument om sy identiese kopie te kry met C++. Wanneer'n kopie geskep word, word nodusse en eienskappe van die oorspronklike dokument gekloon."
weight: 70
url: /af/cpp/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Die kloning van'n dokument is die proses om'n identiese kopie van'n oorspronklike dokument te skep, wat die werkverrigting kan verbeter en u kan red van moontlike geheuelekkasies.

Hierdie artikel sal die belangrikste gebruiksgevalle van die kloning van'n dokument verduidelik en hoe om'n dokumentklon te skep met behulp van Aspose.Words.

## Bedrywighede Met Kloning Dokumente

Met die kloonbewerking kan u die proses om dokumente te skep vinniger maak, aangesien u nie elke keer'n dokument uit'n lêer hoef te laai en te ontleed nie.

Nadat u'n kloon van u dokument geskep het, kan u dit wysig en verskillende bewerkings daarop uitvoer, vergelyk dit byvoorbeeld met die oorspronklike dokument, voeg dit by of plaas dit in'n ander dokument. U kan ook gekloonde elemente of hul inhoud verander voordat u dit in'n ander dokument plaas.

## Skep'n Dokument Kloon

Aspose.Words laat jou toe om'n dokument te kloon met behulp van die [Clone](https://reference.aspose.com/words/cpp/aspose.words/document/clone/) metode wat'n diep kopie van die dokument uitvoer en dit teruggee. Met ander woorde, dit sal'n volledige kopie van die DOM kry. Die `Clone` metode versnel die dokumente generasie, en jy benodig net een reël kode om'n afskrif van jou dokument te kry.

Kloning produseer'n nuwe dokument met dieselfde inhoud as die oorspronklike, maar met'n unieke kopie van elk van die oorspronklike dokument se [nodes](https://reference.aspose.com/words/cpp/class/aspose.words.node). Jy kan ook die kloon operasie van toepassing op'n dokument node deur die gebruik van die node [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/) metode, wat jou toelaat om saamgestelde dokument nodes dupliseer met en sonder hul kind nodes.

{{% alert color="primary" %}}

Let daarop dat wanneer die kloning metode toegepas word alle dokument eienskappe gekloon sal word.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n dokument te kloon en skep'n duplikaat van'n afdeling in daardie dokument:
{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CloningDocument-CloningDocument.cpp" >}}
