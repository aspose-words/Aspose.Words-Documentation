---
title: Ontdek Lêer Formaat
second_title: Aspose.Words vir Java
articleTitle: Ontdek Lêerformaat en Kontroleer Formaatversoenbaarheid
linktitle: Ontdek Lêerformaat en Kontroleer Formaatversoenbaarheid
description: "Verkry inligting oor die dokumentformaat voordat u dit oopmaak om'n uitsondering te vermy as u nie seker is wat die werklike inhoud van die lêer Java gebruik nie."
type: docs
weight: 20
url: /af/java/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Soms is dit nodig om die formaat van'n dokument te bepaal voordat dit oopgemaak word omdat die lêer uitbreiding nie waarborg dat die inhoud van die lêer toepaslik is nie. Byvoorbeeld, dit is bekend dat Kristal Verslae dikwels uitsette dokumente in RTF formaat, maar gee hulle die .doc uitbreiding.

Aspose.Words bied die vermoë om inligting oor die lêertipe te bekom om'n uitsondering te vermy as u nie seker is wat die werklike inhoud van die lêer is nie.

## Bespeur Lêer Formaat sonder'n Uitsondering

As u met verskeie dokumente in verskillende lêerformate te doen het, moet u moontlik die lêers wat deur Aspose.Words verwerk kan word, skei van die lêers wat nie kan nie. Jy sal dalk ook wil weet hoekom sommige van die dokumente nie verwerk kan word nie.

As jy probeer om'n lêer in'n [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) voorwerp te laai en Aspose.Words kan nie die lêer formaat herken of die formaat word nie ondersteun nie, sal Aspose.Words 'n uitsondering gooi. U kan die uitsonderings vang en ontleed, maar Aspose.Words bied ook die [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) - metode waarmee ons vinnig die lêerformaat kan bepaal sonder om'n dokument met moontlike uitsonderings te laai. Hierdie metode gee'n [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) voorwerp wat die bespeurde inligting oor die lêer tipe bevat.

{{% alert color="primary" %}}

DetectFileFormat kontroleer slegs die lêerformaat, maar bekragtig nie die lêerformaat nie. Daar is geen waarborg dat die lêer suksesvol geopen sal word nie, selfs al gee **DetectFileFormat** terug dat dit een van die ondersteunde formate is. Dit is as gevolg van **DetectFileFormat** metode lees slegs gedeeltelike lêer formaat data, voldoende vir die kontrole van die lêer formaat, maar nie genoeg vir volledige validering.

{{% /alert %}}

## Toets Lêers Formaat Verenigbaarheid

Ons kan die formaatversoenbaarheid van alle lêers in die geselekteerde vouer nagaan en dit volgens formaat in ooreenstemmende subgidse sorteer.

Aangesien ons met inhoud in'n gids te doen het, is die eerste ding wat ons moet doen om'n versameling van al die lêers in hierdie gids te kry met behulp van die **GetFiles** metode van die `Directory` klas (van die `System.IO` naamruimte).

Die volgende kode voorbeeld toon hoe om'n lys van al die lêers in die gids te kry:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

Wanneer al die lêers versamel is, word die res van die werk gedoen deur die **DetectFileFormat** metode, wat die lêer formaat nagaan.

Die volgende kode voorbeeld toon hoe om te iterate oor die versamelde lys van lêers, kyk na die formaat van elke lêer, en beweeg elke lêer na die toepaslike gids:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

Die lêers word in toepaslike submappe verskuif met behulp van die `Move` metode van die `File` klas, van dieselfde `System.IO` naamruimte.

Die volgende lêers word in die voorbeeld hierbo gebruik. Die lêernaam is aan die linkerkant en die beskrywing daarvan is aan die regterkant:

| Groep Lêers | Invoer Dokument | Tipe |
| :- | :- | :- |
| Ondersteunde lêerformate | Test File (Doc).doc | Microsoft Word 95/6.0 of Microsoft Word 97 – 2003 dokument. |
|  | Test File (Dot).dot | Microsoft Word 95/6.0 of Microsoft Word 97 – 2003 sjabloon. |
|  | Test File (Docx).docx | Office Open XML WordprocessingML dokument sonder makros. |
|  | Test File (Docm).docm | Office Open XML WordprocessingML dokument met makros. |
|  | Test File (Dotx).dotx | Kantoor Oop XML WordprocessingML sjabloon. |
|  | Test File (Dotm).dotm | Office Open XML WordprocessingML sjabloon met makros. |
|  | Test File (XML).xml | FlatOPC OOXML Dokument. |
|  | Test File (RTF).rtf | Ryk Teks Formaat dokument. |
|  | Test File (WordML).xml | Microsoft Word 2003 WordprocessingML dokument. |
|  | Test File (HTML).html | HTML dokument. |
|  | Test File (MHTML).mhtml | MHTML (Web argief) dokument. |
|  | Test File (Odt).odt | OpenDocument Teks (OpenOffice Skrywer). |
|  | Test File (Ott).ott | OpenDocument Dokument Sjabloon. |
|  | Test File (DocPreWord60).doc | Microsoft Word 2.0 dokument. |
| Geënkripteerde dokumente | Test File (Enc).doc | Geënkripteer Microsoft Word 95/6.0 of Microsoft Word 97 – 2003 dokument. |
|  | Test File (Enc).docx | Geënkripteerde Office Open XML WordprocessingML dokument. |
| Nie-ondersteunde lêerformate | Test File (JPG).jpg | JPEG beeld lêer. |

