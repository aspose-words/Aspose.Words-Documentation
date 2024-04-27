---
title: Zašifrovat dokument Java
second_title: Aspose.Words místo Java
articleTitle: Zašifrovat dokument
linktitle: Zašifrovat dokument
description: "Zašifrujte svůj dokument pomocí vhodných šifrovacích algoritmů pro konkrétní formáty dokumentů v Java."
type: docs
weight: 20
url: /cs/java/encrypt-a-document/
---

Šifrování je proces, který překládá čitelný text do nesmyslných sekvencí bajtů, takže jej může číst pouze osoba, která má dešifrovací klíč nebo tajný kód. Tento proces hraje důležitou roli při zajišťování vašeho obsahu. Pomáhá zakódovat obsah, ověřit původ dokumentu, prokázat, že obsah nebyl po jeho odeslání upraven a zajistit, aby údaje z dokumentu byly bezpečné.

Tento článek vysvětluje, jak Aspose.Words umožňuje zašifrovat dokument a jak zkontrolovat, zda má dokument šifrování nebo ne.

## Šifrování pomocí hesla

Pro zašifrování dokumentu použijte **Password** vlastnost poskytnout heslo, které funguje jako kódovací klíč. To změní obsah vašeho dokumentu a znečišťuje jej. Zašifrovaný dokument bude vyžadovat, aby bylo toto heslo zapsáno před jeho otevřením.

{{% alert color="primary" %}}

Můžete najít vhodné **Password** vlastnost pro požadovaný formát. Každý formát uložení dokumentu má odpovídající třídu obsahující možnosti uložení pro tento formát. Například: [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) majetek v [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) třída pro DOC nebo [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) majetek v [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) třída pro DOCX, DOCM, DOTX, DOTM, a FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Všimněte si, že šifrování podporuje pouze určité formáty dokumentů. Například RTF nepodporuje šifrování.

{{% /alert %}}

Níže uvedená tabulka uvádí formáty a šifrovací algoritmy podporované Aspose.Words:

| Formát |  Podporované šifrování při načítání |  Podporované šifrování při ukládání |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  XOR šifrování40-bit RC4 šifrováníCryptoAPI RC4 Šifrování |  RC4 Šifrování (40-bit) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  ECMA-376 Standardní šifrováníECMA-376 Agile Šifrování |  ECMA-376 Standardní šifrování (AES128 + SHA1) |
|  ODT, OTT |  Šifrování ODF (Blowfish/AES) |  Šifrování ODF (AES256 + SHA256) |
|  PDF |  -                                                            |  RC4 Šifrování (40/128 bitů) |

Následující příklad kódu ukazuje, jak zašifrovat dokument heslem:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## Zkontrolujte, zda je dokument zašifrován

V některých případech můžete mít nečitelný dokument a chcete si být jisti, že dokument je zašifrovaný a není poškozen ani komprimován.

Chcete-li zjistit, zda je dokument zašifrován a pokud je vyžadováno heslo, můžete použít [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) majetek [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) třída. Tato vlastnost vám také umožní provést nějakou akci před načtením dokumentu, například informování uživatele o poskytnutí hesla.

Následující příklad kódu ukazuje, jak zjistit kódování dokumentu:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## Otevřít dokument s heslem nebo bez něj

Když jsme se ujistili, že dokument je zašifrovaný, můžeme se pokusit tento dokument otevřít bez hesla, což by mělo vést k výjimku.

Následující příklad kódu ukazuje, jak zkusit otevřít zašifrovaný dokument bez hesla:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

Poté, co jsme viděli, že šifrovaný dokument nelze otevřít bez hesla, můžeme se pokusit jej otevřít zadáním hesla.

Následující příklad kódu ukazuje, jak zkusit otevřít zašifrovaný dokument heslem:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
