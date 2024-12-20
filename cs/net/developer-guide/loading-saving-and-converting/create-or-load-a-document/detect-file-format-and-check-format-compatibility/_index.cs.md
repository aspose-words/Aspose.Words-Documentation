---
title: Detekovat formát souboru při načítání
second_title: Aspose.Words místo .NET
articleTitle: Detekovat formát souboru a kontrolovat kompatibilitu formátu
linktitle: Detekovat formát souboru a kontrolovat kompatibilitu formátu
description: "Určete formát souboru ve C# pokud si nejste jisti, jaký je skutečný obsah souboru, nebo zda chcete zkontrolovat kompatibilitu formátu."
type: docs
weight: 20
url: /cs/net/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Někdy je nutné určit formát dokumentu před otevřením, protože přípona souboru nezaručuje, že obsah souboru je vhodný. Například je známo, že Crystal Reports často vytiskne dokumenty ve formátu RTF, ale dává jim .doc rozšíření.

Aspose.Words poskytuje možnost získat informace o typu souboru, aby se zabránilo výjimku, pokud si nejste jisti, jaký je skutečný obsah souboru.

## Detekovat formát souboru bez výjimky

Pokud se zabýváte více dokumenty v různých formátech souborů, můžete potřebovat oddělit soubory, které mohou být zpracovány Aspose.Words od těch, kteří nemohou. Možná budete také chtít vědět, proč některé dokumenty nelze zpracovat.

Pokud se pokusíte načíst soubor do [Document](https://reference.aspose.com/words/net/aspose.words/document/) objekt a Aspose.Words nelze rozpoznat formát souboru nebo formát není podporován, Aspose.Words bude hodit výjimku. Můžete chytit tyto výjimky a analyzovat je, ale Aspose.Words také poskytuje [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/) metoda, která nám umožňuje rychle určit formát souboru bez načtení dokumentu s možnými výjimkami. Tato metoda vrací a [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/) objekt, který obsahuje zjištěné informace o typu souboru.

{{% alert color="primary" %}}

DetectFile Formát kontroluje pouze formát souboru, ale nepotvrzuje formát souboru. Neexistuje žádná záruka, že soubor bude úspěšně otevřen, i když **DetectFileFormat** vrací, že je jedním z podporovaných formátů. To je kvůli **DetectFileFormat** metoda čte pouze dílčí data formátu souboru, dostatečná pro kontrolu formátu souboru, ale ne dost pro úplnou validaci.

{{% /alert %}}

## Zkontrolovat kompatibilitu formátů souborů

Můžeme zkontrolovat formátovou kompatibilitu všech souborů ve vybrané složce a třídit je podle formátu do odpovídajících podsložek.

Vzhledem k tomu, že se zabýváme obsahem ve složce, první věc, kterou musíme udělat, je získat sbírku všech souborů v této složce pomocí **GetFiles** způsob `Directory` třída (z `System.IO` namespace).

Následující příklad kódu ukazuje, jak získat seznam všech souborů ve složce:

{{< gist "aspose-words-gists" "3b6a8e49d800948f7d6ef7975f233fb3" "get-files-in-folder.cs" >}}

Když jsou všechny soubory shromažďovány, zbytek práce provádí **DetectFileFormat** metoda, která kontroluje formát souboru.

Následující příklad kódu ukazuje, jak iterovat nad sebraným seznamem souborů, zkontrolovat formát každého souboru a přesunout každý soubor do příslušné složky:

{{< gist "aspose-words-gists" "3b6a8e49d800948f7d6ef7975f233fb3" "check-format-compatibility.cs" >}}

Soubory jsou přesunuty do odpovídajících podsložek pomocí `Move` způsob `File` třída, ze stejné třídy `System.IO` jmenný prostor.

Ve výše uvedeném příkladu jsou použity následující soubory. Jméno souboru je vlevo a jeho popis vpravo:

| Group Souborů | Vstupní dokument | Typ |
|  :-  |  :-  |  :-  |
| Podporované formáty souborů | Testovací soubor (Doc).doc | Microsoft Word 95, 0 nebo Microsoft Word 97 Dokument 2003/2003. |
|  | Zkušební soubor (`Dot`). tečka | Microsoft Word 95, 0 nebo Microsoft Word 97; |
|  | Testovací soubor (Docx).docx | Otevřít XML zpracování slov ML dokument bez makros. |
|  | Testovací soubor (Docm).docm | Otevřít XML zpracování slov Dokument ML s makrami. |
|  | Testovat soubor (Dotx).dotx | Otevřít XML zpracování slov ML šablona. |
|  | Testovat soubor (dotm).dotm | Otevřít XML zpracování slov šablona ML s makrami. |
|  | Testovací soubor (XML).xml | Dokument FlatOPC OOXML. |
|  | Testovací soubor (RTF).rtf | Rich Text Format dokument. |
|  | Testovat soubor (WordML).xml | Microsoft Word 2003 Zpracování slov ML dokument. |
|  | Testovací soubor (HTML).html | HTML dokument. |
|  | Testovací soubor (MHTML).mhtml | MHTML (Web archiv) dokument. |
|  | Testovat soubor (Odt).odt | OpenDocument Text (OpenOffice Writer). |
|  | Testovat soubor (Ott).ott | Otevřít šablonu dokumentu. |
|  | Testovací soubor (DocPreWord60).doc | Microsoft Word 2.0 dokument. |
| Zašifrované dokumenty | Testovací soubor (Enc).doc | Zašifrováno Microsoft Word 95, 0 nebo Microsoft Word 97 Dokument 2003/2003. |
|  | Testovat soubor (Enc).docx | Zašifrovaný Office Open XML Word processing ML dokument. |
| Nepodporované formáty souborů | Testovací soubor (JPG). jpg | Obrazový soubor JPEG. |

