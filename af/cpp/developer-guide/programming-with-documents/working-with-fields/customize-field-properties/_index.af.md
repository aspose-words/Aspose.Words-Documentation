---
title: Pas Veld Eienskappe in C++
second_title: Aspose.Words vir C++
articleTitle: Pas Veldeienskappe Aan
linktitle: Pas Veldeienskappe Aan
description: "Leer hoe om veld eienskappe in C++ aan te pas. Hernoem saamvoegvelde of kry resultate vir velde sonder skeidingsknooppunt in C++."
type: docs
weight: 27
url: /af/cpp/customize-field-properties/
---

Aspose.Words bied die vermoë om programmaties met verskillende veld eienskappe te kommunikeer. In hierdie artikel sal ons na'n paar voorbeelde kyk sodat jy die basiese beginsel van werk met veldeienskappe verstaan. U kan die volledige lys van eienskappe vir elke veldtipe in die ooreenstemmende klas in die [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields) sien.

## Veld Eienskap Update

Soms gebruikers moet die waarde van'n veld eiendom verander. Werk byvoorbeeld die [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) eienskap van die `AUTHOR` veld op of verander die [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) eienskap van die `MERGEFIELD` veld.

Die volgende kode voorbeeld toon hoe om te hernoem saamvoeging velde in'n Word dokument:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## Veldvertoonresultaat

Aspose.Words bied'n eienskap om die veld se resultaat te kry vir velde wat nie'n veld skeidingsknooppunt het nie. Ons noem dit" valse resultaat " of vertoon resultaat; Microsoft Word vertoon dit in die dokument deur die veld se waarde op die vlieg te bereken, maar daar is nie so'n waarde in die dokumentmodel nie.

Die volgende kode voorbeeld toon die gebruik van [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/) eienskap:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}