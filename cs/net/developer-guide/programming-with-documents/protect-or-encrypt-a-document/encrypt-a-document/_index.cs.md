---
title: Zašifrovat dokument C#
second_title: Aspose.Words místo .NET
articleTitle: Zašifrovat dokument
linktitle: Zašifrovat dokument
description: "Zašifrujte svůj dokument pomocí vhodných šifrovacích algoritmů pro konkrétní formáty dokumentů v C#."
type: docs
weight: 20
url: /cs/net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Šifrování je proces, který překládá čitelný text do nesmyslných sekvencí bytů, takže jej může číst pouze osoba, která má dešifrovací klíč nebo tajný kód. Tento proces hraje důležitou roli při zajišťování vašeho obsahu. Pomáhá zakódovat obsah, ověřit původ dokumentu, prokázat, že obsah nebyl po odeslání změněn a zajistit, aby údaje z dokumentu byly bezpečné.

Tento článek vysvětluje, jak Aspose.Words umožňuje zašifrovat dokument a jak zkontrolovat, zda dokument má šifrování nebo ne.

## Šifrovat pomocí hesla

Pro zašifrování dokumentu použijte **Password** vlastnost poskytnout heslo, které funguje jako kódovací klíč. Tím se změní obsah vašeho dokumentu a učiní jej nečitelným. Zašifrovaný dokument bude vyžadovat, aby toto heslo bylo zapsáno před jeho otevřením.

{{% alert color="primary" %}}

Můžete najít vhodné **Password** vlastnost pro požadovaný formát. Každý dokument uloží formát ve formátu [Ukládání jmenného prostoru](https://reference.aspose.com/words/net/aspose.words.saving/) má odpovídající třídu obsahující možnosti uložení pro tento formát. Například: [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) majetek v [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) třída DOC nebo [Password](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/password/) majetek v [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/) třída pro DOCX, DOCM, DOTX, DOTM, a FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Všimněte si, že šifrování podporuje pouze určité formáty dokumentů. Například RTF nepodporuje šifrování.

{{% /alert %}}

Níže uvedená tabulka uvádí formáty a šifrovací algoritmy podporované Aspose.Words:

| Formát |  Podporované šifrování při načítání |  Podporované šifrování při ukládání |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  XOR šifrování40-bit RC4 šifrováníCryptoAPI RC4 Šifrování |  RC4 Šifrování (40-bit) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  ECMA-376 Standardní šifrováníECMA-376 Agile Šifrování |  ECMA-376 Standardní šifrování (AES128 + SHA1) |
|  ODT, OTT |  ODF šifrování (Blowfish/AES) |  ODF šifrování (AES256 + SHA256) |
|  PDF |  -                                                            |  RC4 Šifrování (40/128 bitů) |

Následující příklad kódu ukazuje, jak zašifrovat dokument heslem:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## Zkontrolujte, zda je dokument zašifrován

V některých případech můžete mít nečitelný dokument a chcete si být jisti, že dokument je zašifrován a není poškozen nebo komprimován.

Chcete-li zjistit, zda je dokument zašifrován a pokud je vyžadováno heslo, můžete použít [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) majetek [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/) třída. Tato vlastnost vám také umožní provést nějakou akci před načtením dokumentu, například informovat uživatele, aby poskytl heslo.

Následující příklad kódu ukazuje, jak zjistit šifrování dokumentů:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## Otevřít dokument s heslem nebo bez něj

Když jsme se ujistili, že dokument je zašifrovaný, můžeme se pokusit otevřít tento dokument bez hesla, což by mělo vést k výjimku.

Následující příklad kódu ukazuje, jak zkusit otevřít zašifrovaný dokument bez hesla:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

Poté, co jsme viděli, že šifrovaný dokument nelze otevřít bez hesla, můžeme se pokusit jej otevřít zadáním hesla.

Následující příklad kódu ukazuje, jak zkusit otevřít zašifrovaný dokument heslem:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
