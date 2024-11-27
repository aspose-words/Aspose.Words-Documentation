---
title: Práce s digitálními podpisy v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s digitálními podpisy
linktitle: Práce s digitálními podpisy
description: "Digitálně podepisujte dokumenty a Detekujte, počítejte, ověřujte a odstraňujte existující digitální podpisy."
type: docs
weight: 160
url: /cs/cpp/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Digitální podpis je technologická implementace elektronických podpisů k podepisování dokumentů a ověřování podepisujícího, aby bylo zaručeno, že dokument nebyl od podpisu změněn. Každý digitální podpis je jedinečný pro každého podepisujícího, protože následuje PKI protokol pro generování veřejných i soukromých klíčů. Digitální podepsání dokumentu znamená vytvoření podpisu pomocí soukromého klíče podepisujícího, kde se k šifrování generovaného hash používá matematický algoritmus.

Aspose.Words umožňuje detekovat, počítat nebo ověřovat existující digitální podpisy a také přidat nový podpis do dokumentu, abyste zjistili jakoukoli manipulaci v něm. Z dokumentu můžete také odebrat všechny digitální podpisy. Pro práci s digitálními podpisy použijte třídu [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/).

Tento článek vysvětluje, jak provést všechny výše uvedené kroky k ověření pravosti a integrity digitálního dokumentu.

{{% alert color="primary" %}}

**Vyzkoušejte online**

Tuto funkci můžete vyzkoušet pomocí našeho [Zdarma online podpis](https://products.aspose.app/words/signature).

{{% /alert %}}

## Podporované Formáty

Aspose.Words umožňuje pracovat s digitálními podpisy na dokumentech DOC, OOXML a ODT a podepisovat vygenerovaný dokument ve formátu PDF nebo XPS.

## Omezení digitálních podpisů

Níže uvedená tabulka popisuje několik omezení, kterým můžete čelit při práci s digitálními podpisy pomocí Aspose.Words, a také některé alternativní možnosti.

| Omezení | Alternativa |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Ztráta digitálních podpisů na dokumentu po jeho načtení a uložení. Zpracování dokumentu na server proto může způsobit ztrátu všech digitálních podpisů bez předchozího upozornění. | Zkontrolujte, zda má dokument digitální podpisy, a pokud jsou nějaké nalezeny, proveďte příslušná opatření. Například pošlete klientům upozornění, že dokument, který nahrávají, obsahuje digitální podpisy, které budou při zpracování ztraceny. |
| Aspose.Words podporuje práci s makry v dokumentu. Ale Aspose.Words zatím nepodporuje digitální podpisy na makrech. | Exportujte dokument zpět do libovolného formátu Word a pomocí Microsoft Word přidejte digitální podpis do Maker. |

## Zjišťování, počítání a ověřování digitálních podpisů

Aspose.Words umožňuje detekovat digitální podpis v dokumentu pomocí metody [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) a vlastnosti [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/). Stojí za zmínku, že taková kontrola zjistí pouze skutečnost podpisu, ale ne jeho platnost.

Dokument může být podepsán více než jednou, a to mohou provést různí uživatelé. Chcete-li zkontrolovat platnost digitálních podpisů, musíte je načíst z dokumentu pomocí metody [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) a použít vlastnost [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/). Také Aspose.Words umožňuje počítat sadu všech digitálních podpisů v dokumentu pomocí Vlastnosti [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/).

To vše poskytuje efektivní a bezpečný způsob kontroly podpisů dokumentu před jeho zpracováním.

Následující příklad kódu ukazuje, jak zjistit přítomnost digitálních podpisů a ověřit je:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## Vytvoření digitálního podpisu {#create-a-digital-signature}

Chcete-li vytvořit digitální podpis, budete muset načíst podpisový certifikát, který potvrzuje identitu. Když odešlete digitálně podepsaný dokument, odešlete také certifikát a veřejný klíč.

Aspose.Words umožňuje vytvořit certifikát x.509, digitální certifikát, který používá mezinárodně uznávaný standard x. 509 PKI k ověření, že veřejný klíč patří podepisujícímu příjemci obsaženému v certifikátu. Chcete-li to provést, použijte metodu [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) v rámci třídy [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder).

Další části vysvětlují, jak přidat digitální podpis, řádek podpisu a jak podepsat vygenerovaný dokument PDF.

### Podepište dokument

Aspose.Words umožňuje digitálně podepsat dokument DOC, DOCX nebo ODT pomocí metody [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/) a vlastností [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/).

Následující příklad kódu ukazuje, jak podepisovat dokumenty pomocí držitele certifikátu a možností podepisování:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### Přidání řádku podpisu

Podpisový řádek je vizuální reprezentace digitálního podpisu v dokumentu. Aspose.Words umožňuje vložit řádek podpisu pomocí metody [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/). Parametry pro tuto reprezentaci můžete také nastavit pomocí třídy [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/).

Například obrázek níže ukazuje, jak lze zobrazit platné a neplatné podpisy.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

Pokud dokument obsahuje řádek podpisu a žádný digitální podpis, existuje funkce, která uživatele požádá o přidání podpisu.

Následující příklad kódu ukazuje, jak podepsat dokument osobním certifikátem a konkrétním podpisovým řádkem:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### Podepsat vygenerovaný PDF dokument {#sign-a-generated-pdf-document}

Aspose.Words umožňuje podepsat a získat všechny podrobnosti o PDF dokumentu pomocí vlastností [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/).

Následující příklad kódu ukazuje, jak podepsat vygenerovaný PDF:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## Načtení hodnoty digitálního podpisu

Aspose.Words také poskytuje možnost načíst hodnotu digitálního podpisu z digitálně podepsaného dokumentu jako bajtové pole pomocí vlastnosti [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/).

Následující příklad kódu ukazuje, jak získat hodnotu digitálního podpisu jako bajtové pole z dokumentu:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## Odstranění Digitálních Podpisů

Aspose.Words umožňuje odstranit všechny digitální podpisy ze podepsaného dokumentu pomocí metody [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/).

Následující příklad kódu ukazuje, jak načíst a odebrat digitální podpisy z dokumentu:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

Upozorňujeme, že v dokumentu nelze odebrat pouze jeden digitální podpis.

{{% /alert %}}
