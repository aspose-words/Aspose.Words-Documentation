---
title: Práce s digitálními podpisy Java
second_title: Aspose.Words místo Java
articleTitle: Práce s digitálními podpisy
linktitle: Práce s digitálními podpisy
description: "Digitální podpis dokumentů a zjištění, počet, ověření a odstranění stávajících digitálních podpisů pomocí Java."
type: docs
weight: 30
url: /cs/java/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Digitální podpis je technologickou implementací elektronických podpisů k podpisu dokumentů a ověření podpisu, aby bylo zaručeno, že dokument nebyl od podpisu změněn. Každý digitální podpis je unikátní pro každého signera, protože následuje protokol PKI pro generování veřejných i soukromých klíčů. Podepsání dokumentu digitálně znamená vytvoření podpisu pomocí podpisového soukromého klíče, kde se používá matematický algoritmus k zašifrování generovaného hašiše.

Aspose.Words umožňuje detekovat, počítat nebo ověřovat existující digitální podpisy a také přidat nový podpis do svého dokumentu, aby zjistil jakékoli manipulace v něm. Můžete také odstranit všechny digitální podpisy z dokumentu. Použijte [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) třída pracovat s digitálními podpisy.

Tento článek vysvětluje, jak udělat vše výše uvedené pro ověření pravosti a integrity digitálního dokumentu.

{{% alert color="primary" %}}

Všimněte si, že přístup k digitálním podpisům vašeho dokumentu je možný pouze při spuštění Java 6 verze a výše.

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
|  Ztráta digitálních podpisů na dokumentu po jeho načtení a uložení. Proto může zpracování dokumentu na server způsobit ztrátu všech digitálních podpisů bez předchozího upozornění |  Zkontrolujte, zda dokument má digitální podpisy, a přijmout vhodná opatření, pokud jsou nalezeny. Pošlete například upozornění klientům, kteří informují o tom, že dokument, který nahrávají, obsahuje digitální podpisy, které budou ztraceny, pokud bude zpracován |
|  Aspose.Words podporuje práci s makro v dokumentu. Ale... Aspose.Words dosud nepodporuje digitální podpisy na makros |  Exportovat dokument zpět do jakéhokoli formátu Word a používat Microsoft Word přidat digitální podpis do makros |

## Detekovat, počítat a ověřit digitální podpisy

Aspose.Words umožňuje detekovat digitální podpis v dokumentu pomocí [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) metoda a [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) majetek. Stojí za zmínku, že taková kontrola odhalí pouze skutečnost podpisu, ale nikoli jeho platnost.

Dokument může být podepsán více než jednou, a to může být provedeno různými uživateli. Chcete-li zkontrolovat platnost digitálních podpisů, musíte je načíst z dokumentu pomocí [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) metoda a použití [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) majetek. Také Aspose.Words umožňuje spočítat soubor všech digitálních podpisů v dokumentu pomocí [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) majetek.

To vše poskytuje účinný a bezpečný způsob, jak před jeho zpracováním ověřit podpisy dokumentu.

Následující příklad kódu ukazuje, jak zjistit přítomnost digitálních podpisů a ověřit je:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## Vytvořit digitální podpis {#create-a-digital-signature}

Chcete-li vytvořit digitální podpis, budete muset načíst podpis certifikát, který potvrzuje identitu. Když zašlete digitálně podepsaný dokument, zašlete také svůj certifikát a veřejný klíč.

Aspose.Words umožňuje vytvořit certifikát X.509, digitální certifikát, který používá mezinárodně uznávaný standard X.509 PKI k ověření, že veřejný klíč patří podepisovači, který je součástí certifikátu. K tomu použijte [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) metoda v rámci [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) třída.

Další sekce vysvětlují, jak přidat digitální podpis, podpisovou linii a jak podepsat vygenerovaný PDF dokument.

### Podepsat dokument

Aspose.Words umožňuje podepsat dokument DOC, DOCX nebo ODT digitálně pomocí [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) metoda a [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) vlastnosti.

Následující příklad kódu ukazuje, jak se podepisují dokumenty pomocí držitele certifikátu a podepisují možnosti:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### Přidat řádek podpisu

Podpis je vizuální reprezentace digitálního podpisu v dokumentu. Aspose.Words umožňuje vložit řádek podpisu pomocí [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) metoda. Můžete také nastavit parametry pro tuto reprezentaci pomocí [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) třída.

Následující obrázek například ukazuje, jak mohou být zobrazeny platné a neplatné podpisy.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

Také, pokud dokument obsahuje podpisovou řadu a žádný digitální podpis, je funkce požádat uživatele o přidání podpisu.

Následující příklad kódu ukazuje, jak podepsat dokument s osobním certifikátem a zvláštním podpisem:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### Podepsat Generovaný dokument PDF {#sign-a-generated-pdf-document}

Aspose.Words umožňuje podepsat a získat všechny podrobnosti PDF dokumentu pomocí [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) vlastnosti.

Následující příklad kódu ukazuje, jak podepsat generovaný PDF:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

Následující obrázek ukazuje, že generovaný dokument PDF je otevřen v Adobe Acrobat a digitální podpis je ověřen jako současný a platný.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## Získat hodnotu digitálního podpisu

Aspose.Words poskytuje také schopnost získat hodnotu digitálního podpisu z digitálně podepsaného dokumentu jako pole byte pomocí pole [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) majetek.

Následující příklad kódu ukazuje, jak získat hodnotu digitálního podpisu jako pole byte z dokumentu:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## Odstranit digitální podpisy

Aspose.Words umožňuje odstranit všechny digitální podpisy z podepsaného dokumentu pomocí [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) metoda.

Následující příklad kódu ukazuje, jak načíst a odstranit digitální podpisy z dokumentu:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

Všimněte si, že nelze odstranit pouze jeden digitální podpis ve vašem dokumentu.

{{% /alert %}}
