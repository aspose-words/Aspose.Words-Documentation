---
title: Asijská typografie Python
second_title: Aspose.Words místo Python
articleTitle: Práce s asijskou typografií
linktitle: Práce s asijskou typografií
description: "Práce s asijskou typografií pomocí Python. Nastavte prostor mezi asijským a latinským textem v Python."
type: docs
weight: 240
url: /cs/python-net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Asijská typografie je soubor možností pro textové odstavce v dokumentech napsaných v asijských jazycích.

Aspose.Words podporuje asijskou typografii pomocí [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) třída a některé její vlastnosti.

## Automaticky upravit prostor mezi asijským a latinským textem nebo čísly

Pokud navrhujete šablonu jak s východoasijským, tak latinským textem a chcete zlepšit vzhled vaší šablony formuláře ovládáním mezer mezi oběma typy textu, můžete nakonfigurovat šablonu formuláře tak, abyste automaticky upravili mezery mezi těmito dvěma typy textu. K dosažení tohoto cíle můžete použít [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_alpha/) a [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_digit/) vlastnosti `ParagraphFormat` třída.

Následující příklad kódu ukazuje, jak používat **AddSpaceBetweenFarEastAndAlpha** a **AddSpaceBetweenFarEastAndDigit** vlastnosti:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-SpaceBetweenAsianAndLatinText.py" >}}

## Nastavit možnosti přerušení řádku

Asijské Typografie záložka odstavce vlastnosti dialogové okno v Microsoft Word má line break skupinu. Možnosti této skupiny lze nastavit pomocí [FarEastLineBreakControl](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/far_east_line_break_control/), [WordWrap](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/word_wrap/), [HangingPunctuation](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/hanging_punctuation/) vlastnosti **ParagraphFormat** třída.

Následující příklad kódu ukazuje, jak tyto vlastnosti používat:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-AsianTypographyLineBreakGroup.py" >}}
