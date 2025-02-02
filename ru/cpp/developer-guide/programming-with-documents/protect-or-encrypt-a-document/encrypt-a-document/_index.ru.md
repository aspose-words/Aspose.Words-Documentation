---
title: Зашифровать документ на C++
second_title: Aspose.Words для C++
articleTitle: Зашифровать документ
linktitle: Зашифровать документ
description: "Зашифруйте свой документ, используя соответствующие алгоритмы шифрования для определенных форматов документов."
type: docs
weight: 20
url: /ru/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Шифрование - это процесс, который преобразует читаемый текст в бессмысленные последовательности байтов, чтобы его мог прочитать только тот, у кого есть ключ дешифрования или секретный код. Этот процесс играет важную роль в обеспечении безопасности вашего контента. Это помогает закодировать содержимое, проверить происхождение документа, доказать, что содержимое не было изменено после его отправки, и обеспечить безопасность данных из документа.

В этой статье объясняется, как Aspose.Words позволяет зашифровать документ и как проверить, зашифрован документ или нет.

## Шифрование с помощью пароля

Чтобы зашифровать документ, используйте свойство **Password** для ввода пароля, который выполняет функцию ключа шифрования. Это изменит содержимое вашего документа и сделает его нечитаемым. Для открытия зашифрованного документа потребуется ввести этот пароль.

{{% alert color="primary" %}}

Вы можете найти подходящее свойство **Password** для требуемого формата. Каждому формату сохранения документа в [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving) соответствует класс, содержащий параметры сохранения для этого формата. Например, свойство [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) в классе [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) для DOC или свойство [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/) в классе [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/) для DOCX, DOCM, DOTX, DOTM, и FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Обратите внимание, что шифрование поддерживается только в определенных форматах документов. Например, RTF не поддерживает шифрование.

{{% /alert %}}

В таблице ниже перечислены форматы и алгоритмы шифрования, поддерживаемые Aspose.Words:

| Формат | Поддерживаемое шифрование при загрузке | Поддерживаемое шифрование при сохранении |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR-шифрование 40-битное RC4-шифрование с использованием CryptoAPI RC4-шифрования | Шифрование RC4 (40-битное) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled Плоский макросъемочный | Стандартное шифрование ECMA-376 Гибкое шифрование ECMA-376 | Стандартное шифрование ECMA-376 (AES128 + SHA1) |
| ODT, OTT | Шифрование ODF (Blowfish/AES) | Шифрование ODF (AES256 + SHA256) |
| PDF | Шифрование RC4 (40/128 бит) |

В следующем примере кода показано, как зашифровать документ с помощью пароля:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## Проверьте, Зашифрован Ли Документ

В некоторых случаях у вас может оказаться нечитаемый документ, и вы хотите быть уверены, что он зашифрован, не поврежден и не сжат.

Чтобы определить, зашифрован ли документ и требуется ли пароль, вы можете использовать свойство [IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/) класса [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo). Это свойство также позволит вам выполнить некоторые действия перед загрузкой документа, например, попросить пользователя ввести пароль.

В следующем примере кода показано, как обнаружить шифрование документа:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## Откройте документ с паролем или без него

Когда мы убедимся, что документ зашифрован, мы можем попытаться открыть этот документ без пароля, что должно привести к исключению.

В следующем примере кода показано, как попытаться открыть зашифрованный документ без пароля:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

После того, как мы убедились, что зашифрованный документ не может быть открыт без пароля, мы можем попытаться открыть его, введя пароль.

В следующем примере кода показано, как попытаться открыть зашифрованный документ с помощью пароля:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
