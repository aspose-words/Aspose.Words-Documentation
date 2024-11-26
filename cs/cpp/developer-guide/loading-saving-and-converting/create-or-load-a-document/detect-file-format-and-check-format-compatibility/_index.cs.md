---
title: Zjistěte Formát souboru a zkontrolujte kompatibilitu formátu
second_title: Aspose.Words pro C++
articleTitle: Zjistěte Formát souboru a zkontrolujte kompatibilitu formátu
linktitle: Zjistěte Formát souboru a zkontrolujte kompatibilitu formátu
description: "Určete formát souboru v C++, pokud si nejste jisti, jaký je skutečný obsah souboru, nebo zkontrolujte kompatibilitu formátu."
type: docs
weight: 20
url: /cs/cpp/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Někdy je nutné před otevřením určit formát dokumentu, protože přípona souboru nezaručuje, že obsah souboru je vhodný. Například je známo, že Crystal Reports často vydává dokumenty ve formátu RTF, ale dává jim .rozšíření doc.

Aspose.Words poskytuje možnost získat informace o typu souboru, aby se zabránilo výjimce, pokud si nejste jisti, jaký je skutečný obsah souboru.

## Detekce formátu souboru bez výjimky

Pokud máte co do činění s více dokumenty v různých formátech souborů, možná budete muset oddělit ty soubory, které lze zpracovat Aspose.Words, od těch, které nemohou. Možná budete chtít vědět, proč některé dokumenty nelze zpracovat.

Pokud se pokusíte načíst soubor do objektu [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) a Aspose.Words nemůže rozpoznat formát souboru nebo formát není podporován, Aspose.Words vyvolá výjimku. Tyto výjimky můžete zachytit a analyzovat, ale Aspose.Words také poskytuje metodu [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/), která nám umožňuje rychle určit formát souboru bez načtení dokumentu s možnými výjimkami. Tato metoda vrací objekt [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/), který obsahuje zjištěné informace o typu souboru.

{{% alert color="primary" %}}

DetectFileFormat kontroluje pouze formát souboru, ale neověřuje Formát souboru. Neexistuje žádná záruka, že soubor bude úspěšně otevřen, i když **DetectFileFormat** vrátí, že se jedná o jeden z podporovaných formátů. Je to proto, že metoda **DetectFileFormat** čte pouze částečná data formátu souboru, dostatečná pro kontrolu formátu souboru, ale nestačí pro úplné ověření.

{{% /alert %}}

## Zkontrolujte Kompatibilitu Formátu Souborů

Můžeme zkontrolovat kompatibilitu formátu všech souborů ve vybrané složce a třídit je podle formátu do odpovídajících podsložek.

Protože máme co do činění s obsahem ve složce, první věcí, kterou musíme udělat, je získat sbírku všech souborů v této složce pomocí metody **GetFiles** třídy `Directory` (z oboru názvů `System.IO`).

Následující příklad kódu ukazuje, jak získat seznam všech souborů ve složce:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

Když jsou všechny soubory shromážděny, zbytek práce se provádí metodou **DetectFileFormat**, která kontroluje Formát souboru.

Následující příklad kódu ukazuje, jak iterovat shromážděný seznam souborů, zkontrolovat formát každého souboru a přesunout každý soubor do příslušné složky:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

Soubory jsou přesunuty do příslušných podsložek pomocí metody `Move` třídy `File` ze stejného jmenného prostoru `System.IO`.

Ve výše uvedeném příkladu jsou použity následující soubory. Název souboru je vlevo a jeho popis je vpravo:

| Skupina souborů | Vstupní Dokument | Typus |
| :- | :- | :- |
| Podporované formáty souborů | Test File (DOC).doc | Microsoft Word 95/6.0 nebo Microsoft Word 97 – dokument z roku 2003. |
|  | Test File (DOT).dot | Microsoft Word 95/6.0 nebo Microsoft Word 97 – 2003 šablona. |
|  | Test File (DOCX).docx | Office otevřít XML WordprocessingML dokument bez Maker. |
|  | Test File (DOCM).docm | Office otevřít XML WordprocessingML dokument s makry. |
|  | Test File (DOTX).dotx | Office Open XML WordprocessingML šablona. |
|  | Test File (DOTM).dotm | Office otevřete šablonu XML WordprocessingML s makry. |
|  | Test File (XML).xml | FlatOPC OOXML dokument. |
|  | Test File (RTF).rtf | Formát RTF dokumentu. |
|  | Test File (WordML).xml | Microsoft Word 2003 WordprocessingML dokument. |
|  | Test File (HTML).html | HTML dokument. |
|  | Test File (MHTML).mhtml | MHTML (webový archiv) dokument. |
|  | Test File (ODT).odt | OpenDocument Text (OpenOffice Writer). |
|  | Test File (OTT).ott | OpenDocument Šablona Dokumentu. |
|  | Test File (DocPreWord60).doc | Microsoft Word 2.0 dokument. |
| Šifrované dokumenty | Test File (Enc).doc | Šifrovaný dokument Microsoft Word 95/6.0 nebo Microsoft Word 97 – 2003. |
|  | Test File (Enc).docx | Zašifrovaná kancelář otevřít XML WordprocessingML dokument. |
| Nepodporované formáty souborů | Test File (JPG).jpg | JPEG soubor obrázku. |

