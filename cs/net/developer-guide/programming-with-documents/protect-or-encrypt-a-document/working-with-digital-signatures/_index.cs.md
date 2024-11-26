---
title: Práce s digitálními podpisy C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s digitálními podpisy
linktitle: Práce s digitálními podpisy
description: "Digitální podpis dokumentů a zjištění, počet, ověření a odstranění stávajících digitálních podpisů pomocí C#."
type: docs
weight: 40
url: /cs/net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Digitální podpis je technologickou implementací elektronických podpisů k podpisu dokumentů a ověření podpisu, aby bylo zaručeno, že dokument nebyl od podpisu změněn. Každý digitální podpis je unikátní pro každý signer, protože podle protokolu PKI generovat veřejné i soukromé klíče. Podepsání dokumentu digitálně znamená vytvoření podpisu pomocí privátního klíče podepisujícího, kde se používá matematický algoritmus k zašifrování generovaného hašiše.

Aspose.Words umožňuje detekovat, počítat nebo ověřovat existující digitální podpisy a také přidat nový podpis do svého dokumentu, aby zjistil jakékoli manipulace v něm. Můžete také odstranit všechny digitální podpisy z dokumentu. Použijte [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) třída pracovat s digitálními podpisy.

Tento článek vysvětluje, jak udělat vše výše uvedené pro ověření pravosti a integrity digitálního dokumentu.

{{% alert color="primary" %}}

Všimněte si, že přístup k digitálním podpisům vašeho dokumentu je možný pouze při spuštění .NET Framework 2.0 verze a výše.

{{% /alert %}}

{{% alert color="primary" %}}

**Zkuste online**

Tuto funkci můžete zkusit s naší [Bezplatný online podpis](https://products.aspose.app/words/signature).

{{% /alert %}}

## Podporované formáty

Aspose.Words umožňuje pracovat s digitálními podpisy na dokumentech DOC, OOXML a ODT a podepsat vygenerovaný dokument v PDF nebo XPS formát.

## Omezení digitálních podpisů

Níže uvedená tabulka popisuje několik omezení, kterým můžete čelit při práci s digitálními podpisy prostřednictvím Aspose.Words, stejně jako některé alternativní možnosti.

|  Omezení |  Alternativní možnost |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Ztráta digitálních podpisů na dokumentu po jeho načtení a uložení. Zpracování dokumentu na server proto může způsobit ztrátu všech digitálních podpisů bez předchozího upozornění |  Zkontrolujte, zda dokument má digitální podpisy, a pokud se nějaký objeví, podnikněte vhodná opatření. Pošlete například upozornění klientům, kteří informují, že dokument, který nahrávají, obsahuje digitální podpisy, které budou ztraceny, pokud bude zpracován |
|  Aspose.Words podporuje práci s makro v dokumentu. Ale... Aspose.Words dosud nepodporuje digitální podpisy na makros |  Exportovat dokument zpět do jakéhokoli formátu Word a používat Microsoft Word přidat digitální podpis do makros |

## Detekovat, počítat a ověřit digitální podpisy

Aspose.Words umožňuje detekovat digitální podpis v dokumentu pomocí [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) metoda a [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/) majetek. Stojí za zmínku, že taková kontrola odhalí pouze skutečnost podpisu, ale nikoli jeho platnost.

Dokument může být podepsán více než jednou, a to může být provedeno různými uživateli. Chcete-li zkontrolovat platnost digitálních podpisů, musíte je načíst z dokumentu pomocí [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) metoda a použití [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/) majetek. Také Aspose.Words umožňuje počítat soubor všech digitálních podpisů v dokumentu pomocí [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/) majetek.

To vše poskytuje účinný a bezpečný způsob, jak před jeho zpracováním ověřit podpisy dokumentu.

Následující příklad kódu ukazuje, jak zjistit přítomnost digitálních podpisů a ověřit je:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## Vytvořit digitální podpis {#create-a-digital-signature}

Chcete-li vytvořit digitální podpis, budete muset načíst podpis certifikát, který potvrzuje identitu. Když zašlete digitálně podepsaný dokument, zašlete také svůj certifikát a veřejný klíč.

Aspose.Words umožňuje vytvořit certifikát X.509, digitální certifikát, který používá mezinárodně uznávaný standard X.509 PKI k ověření, že veřejný klíč patří podepisovači, který je součástí certifikátu. K tomu použijte [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) metoda v rámci [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/) třída.

Další sekce vysvětlují, jak přidat digitální podpis, podpisovou linii a jak podepsat vygenerovaný PDF dokument.

### Podepsat dokument

Aspose.Words umožňuje podepsat DOC, DOCX, XPS, nebo ODT dokument digitálně pomocí [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) metoda a [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/) vlastnosti.

Následující příklad kódu ukazuje, jak se podepisují dokumenty s použitím držitele certifikátu a podepisují možnosti:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### Přidat řádek podpisu

Podpis linka je vizuální znázornění digitálního podpisu v dokumentu. Aspose.Words umožňuje vložit řádek podpisu pomocí [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/) metoda. Můžete také nastavit parametry pro tuto reprezentaci pomocí [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/) třída.

Následující obrázek například ukazuje, jak mohou být zobrazeny platné a neplatné podpisy.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="drawing" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="drawing" style="width:300px"/>

Také v případě, že dokument obsahuje podpisovou řadu a žádný digitální podpis, existuje vlastnost požádat uživatele o přidání podpisu.

Následující příklad kódu ukazuje, jak podepsat dokument s osobním osvědčením a specifickou signature line:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### Podepsat Generovaný dokument PDF {#sign-a-generated-pdf-document}

Aspose.Words umožňuje podepsat a získat všechny podrobnosti PDF dokumentu pomocí [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/) vlastnosti.

Následující příklad kódu ukazuje, jak podepsat generovaný PDF:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## Získat hodnotu digitálního podpisu

Aspose.Words poskytuje také možnost získat hodnotu digitálního podpisu z digitálně podepsaného dokumentu jako pole byte pomocí pole [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) majetek.

Následující příklad kódu ukazuje, jak získat hodnotu digitálního podpisu jako pole byte z dokumentu:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## Odstranit digitální podpisy

Aspose.Words umožňuje odstranit všechny digitální podpisy z podepsaného dokumentu pomocí [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/) metoda.

Následující příklad kódu ukazuje, jak načíst a odstranit digitální podpisy z dokumentu:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

Všimněte si, že v dokumentu nelze odstranit pouze jeden digitální podpis.

{{% /alert %}}
