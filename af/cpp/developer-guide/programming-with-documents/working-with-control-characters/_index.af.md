---
title: Werk Met Beheer Karakters
second_title: Aspose.Words vir C++
articleTitle: Werk Met Beheer Karakters
linktitle: Werk Met Beheer Karakters
description: "Inleiding tot die werk met beheer karakters in Aspose.Words vir C++."
type: docs
weight: 400
url: /af/cpp/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word dokumente kan verskeie karakters bevat wat'n spesiale betekenis het. Gewoonlik word hulle gebruik vir formatering doeleindes en word nie in die normale modus geteken nie. Jy kan hulle sigbaar maak as jy op die Wys/Versteek Formateringsmerke-knoppie op die Standaard nutsbalk klik.

Soms moet jy dalk karakters by/uit die teks voeg of verwyder. Byvoorbeeld, wanneer teks programmaties van die dokument verkry word, bewaar Aspose.Words die meeste van die beheerkarakters, so as jy met hierdie teks moet werk, moet jy waarskynlik die karakters verwyder of vervang.

Die [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) klas is'n bewaarplek vir die konstantes wat beheer karakters verteenwoordig wat dikwels in dokumente voorkom. Dit bied beide char en string weergawes van dieselfde konstantes. Byvoorbeeld, string [LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/) en char **ControlChar.LineBreakChar** het dieselfde waarde.

Die volgende kode voorbeeld toon hoe om beheer karakters te gebruik:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}