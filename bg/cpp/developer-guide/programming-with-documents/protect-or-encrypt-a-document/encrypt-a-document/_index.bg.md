﻿---
title: Шифроване на документ в C++
second_title: Aspose.Words за C++
articleTitle: Шифроване на документ
linktitle: Шифроване на документ
description: "Шифровайте документа си, като използвате подходящи алгоритми за криптиране за конкретни формати на документи."
type: docs
weight: 20
url: /bg/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Криптирането е процес, който превежда четлив текст в безсмислени последователности от байтове, така че да може да бъде прочетен само от лицето, което има ключ за декриптиране или секретен код. Този процес играе важна роля в осигуряването на вашето съдържание. Той помага да се кодира съдържанието, да се провери произхода на документ, да се докаже, че съдържанието не е променено, след като е изпратено, и да се гарантира, че данните от документа са безопасни.

Тази статия обяснява как Aspose.Words ви позволява да шифровате документ и как да проверите дали документът има криптиране или не.

## Шифроване с парола

За да шифровате документ, използвайте свойството **Password**, за да предоставите парола, която функционира като ключ за шифроване. Това ще промени съдържанието на документа ви и ще го направи нечетлив. Криптираният документ ще изисква да въведете тази парола, преди да може да бъде отворен.

{{% alert color="primary" %}}

Можете да намерите подходящия **Password** имот за необходимия формат. Всеки формат за записване на документ в [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving) има съответен клас, съдържащ опции за записване за този формат. Например свойство [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) в класа [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) за DOC или свойство [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/) в класа [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/) за DOCX, DOCM, DOTX, DOTM, и FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Имайте предвид, че само определени формати на документи поддържат криптиране. Например RTF не поддържа криптиране.

{{% /alert %}}

В таблицата по-долу са изброени форматите и алгоритмите за криптиране, поддържани от Aspose.Words:

| Формат | Поддържано криптиране при зареждане | Поддържано криптиране при спестяване |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR шифроване40-битов RC4 EncryptionCryptoAPI RC4 криптиране | RC4 криптиране (40-битов) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 Стандарт EncryptionECMA-376 Гъвкаво Криптиране | ECMA-376 Стандартно Криптиране (AES128 + SHA1) |
| ODT, OTT | ODF Шифроване (Блоуфиш/AES) | ODF шифроване (AES256 + SHA256) |
| PDF | RC4 криптиране (40/128 бит) |

Следващият пример за код показва как да шифровате документ с парола:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## Проверка дали даден документ е криптиран

В някои случаи може да имате нечетлив документ и искате да сте сигурни, че документът е криптиран и не е повреден или компресиран.

За да откриете дали даден документ е криптиран и дали е необходима парола, можете да използвате свойството [IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/) на класа [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo). Това свойство също така ще ви позволи да извършите някои действия преди зареждането на документ, например да информирате потребителя да предостави парола.

Следващият пример за код показва как да откриете шифроването на документа:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## Отваряне на документ със или без парола

Когато сме се уверили, че даден документ е криптиран, можем да опитаме да отворим този документ без парола, което би трябвало да доведе до изключение.

Следващият пример за код показва как да опитате да отворите криптиран документ без парола:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

След като сме видели, че криптиран документ не може да бъде отворен без парола, можем да опитаме да го отворим, като въведем паролата.

Следващият пример за код показва как да опитате да отворите криптиран документ с парола:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
