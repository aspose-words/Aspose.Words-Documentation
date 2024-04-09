---
title: Práce s digitálními podpisy
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s digitálními podpisy
linktitle: Práce s digitálními podpisy
description: "Digitální podpis dokumentů a zjištění, počet, ověření a odstranění stávajících digitálních podpisů pomocí Python."
type: docs
weight: 40
url: /cs/python-net/working-with-digital-signatures/
---

K ověření dokladu se používá digitální podpis, který prokazuje, že odesílatelem dokladu je, kdo tvrdí, že je a s obsahem dokumentu nebylo manipulováno.

Aspose.Words podporuje dokumenty s digitálními podpisy a poskytuje k nim přístup, který vám umožní detekovat a validovat digitální podpisy na dokumentu a podepsat vygenerovaný dokument PDF s dodaným certifikátem. V současné době jsou digitální podpisy podporovány na dokumentech DOC, OOXML a ODT. Podepisování generovaných dokumentů je podporováno ve formátu PDF.

{{% alert color="primary" %}}

**Zkuste online**

Tuto funkci můžete zkusit s naší [Bezplatný online podpis](https://products.aspose.app/words/signature).

{{% /alert %}}

## Digitální podpisy nejsou uloženy na otevřeném a uložit

Důležité je poznamenat, že dokument načten a pak uložen pomocí Aspose.Words ztratí jakékoli digitální podpisy podepsané na dokumentu. Je to návrh digitálního podpisu, který zajišťuje, že obsah nebyl upraven, a dále ověřuje, kdo dokument podepsal. Tyto zásady by byly neplatné, pokud by původní podpisy byly přeneseny do výsledného dokumentu.

Vzhledem k tomu, pokud zpracováváte dokumenty nahrané na server, mohlo by to potenciálně znamenat, že můžete zkazit dokument nahraný na váš server tímto způsobem bez vědomí. Proto je nejlepší zkontrolovat digitální podpisy na dokumentu a přijmout vhodná opatření, pokud jsou nalezeny, např. záznam může být zaslán klientovi, který je informuje o tom, že dokument, který míjí, obsahuje digitální podpisy, které budou ztraceny, pokud bude zpracován. Můžete si stáhnout šablonu souboru tohoto příkladu z [Tady](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

Výše uvedený kód používá [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) způsob, jak zjistit, zda dokument obsahuje digitální podpisy, aniž by nejprve zadal dokument. To poskytuje účinný a bezpečný způsob, jak před jejich zpracováním ověřit podpisy dokumentu. Po provedení metoda vrací a [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) objekt, který poskytuje vlastnost [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/). Tato vlastnost vrací true pokud dokument obsahuje jeden nebo více digitálních podpisů. Je důležité poznamenat, že tato metoda nepotvrzuje podpisy, určuje pouze, zda existují podpisy. Ověření digitálních podpisů je zahrnuto v další části.

{{% alert color="primary" %}}

Můžete také zkontrolovat, zda dokument má digitální podpisy po načtení ověřením `Count` majetek [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) kolekce.

{{% /alert %}}

## Digitální podpisy na Macros (VBA Projekty)

Digitální podpisy na makros nelze získat ani podepsat. To je proto, že Aspose.Words se přímo nezabývá makro v dokumentu. Nicméně digitální podpisy na makros jsou zachovány při exportu dokumentu zpět do libovolného formátu slov. Tyto podpisy lze zachovat na VBA kódu, protože binární obsah makros se nemění ani v případě, že se dokument sám upraví.

### Přístup a ověření digitálních podpisů

Dokument může mít více digitálních podpisů. Všechny tyto podpisy lze získat prostřednictvím [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) kolekce. Každý vrácený objekt je [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) který představuje jediný digitální podpis patřící k dokumentu. To poskytuje členům, kteří vám umožní zkontrolovat platnost podpisu.

Nejdůležitější vlastnost pro kontrolu s digitálními podpisy je platnost každého podpisu v dokumentu. Všechny podpisy v dokumentu lze potvrdit najednou voláním [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/) majetek. Tohle se vrátí. true pokud jsou všechny podpisy v dokladu platné nebo pokud dokument nemá žádné podpisy a false pokud alespoň jeden digitální podpis není platný.

Každý podpis může být také individuálně potvrzen voláním [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/). Podpis může vrátit neplatný z několika důvodů, například dokument byl změněn od podpisu nebo platnost osvědčení skončila. Dále lze získat další podrobnosti o podpisu. Vzorek kódu níže ukazuje, jak validovat každý podpis v dokumentu a zobrazí základní informace o podpisu. Můžete si stáhnout šablonu souboru tohoto příkladu z [Tady](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Podepisování dokumentů slov

[DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) třída poskytuje metody pro podpis dokumentu. [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) metoda označuje zdrojový dokument pomocí dané [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) s digitálním podpisem a zápisem podepsaného dokumentu do cílového proudu

Níže uvedený příklad ukazuje, jak podepsat jednoduchý dokument

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

Níže uvedený příklad ukazuje, jak podepsat zašifrovaný dokument

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Podepisování Word dokumentu s podpisem Line

Můžete podepsat zdrojový dokument pomocí zadaného [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) a [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) digitálním podpisem a zápisem podepsaného dokumentu do cílového souboru. Použití [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) třída můžete určit možnosti pro podepisování dokumentů. Níže uvedený příklad ukazuje, jak vytvořit nový podpisový řádek a podepsat dokument

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

Níže uvedený příklad ukazuje, jak upravit existující podpisovou linii a podepsat dokument

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Podpis Word Document pomocí identifikátoru poskytovatele podpisu

Níže uvedený příklad ukazuje, jak podepsat dokument Word pomocí identifikátoru poskytovatele podpisu. Poskytovatel šifrovacích služeb (CSP) je nezávislý softwarový modul, který ve skutečnosti provádí kryptografické algoritmy pro autentizaci, kódování a šifrování. MS Office si vyhrazuje hodnotu {00000000-0000-0000-0000-000000000000} pro svého poskytovatele podpisu v selhání.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Vytvořit nový podpis Line Sign Word Dokument pomocí identifikátoru poskytovatele

Níže uvedený příklad ukazuje, jak vytvořit podpisovou čáru a znak Slovní dokument pomocí identifikátoru poskytovatele podpisu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## Získat hodnotu digitálního podpisu

Aspose.Words poskytuje také možnost získat hodnotu digitálního podpisu z digitálně podepsaného dokumentu jako pole byte pomocí pole [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) majetek.

Následující příklad kódu ukazuje, jak získat hodnotu digitálního podpisu jako pole byte z dokumentu:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}