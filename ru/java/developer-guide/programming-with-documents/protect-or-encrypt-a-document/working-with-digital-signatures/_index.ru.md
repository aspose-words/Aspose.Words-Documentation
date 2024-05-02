---
title: Работа с цифровыми подписями в Java
second_title: Aspose.Words для Java
articleTitle: Работа с цифровыми подписями
linktitle: Работа с цифровыми подписями
description: "Цифровая подпись документов и обнаружение, подсчет, проверка и удаление существующих цифровых подписей с использованием Java."
type: docs
weight: 30
url: /ru/java/working-with-digital-signatures/
---

Цифровая подпись - это технологическая реализация электронных подписей для подписания документов и аутентификации подписавшего, чтобы гарантировать, что документ не был изменен с момента его подписания. Каждая цифровая подпись уникальна для каждого подписавшего из-за следования протоколу PKI для создания как открытых, так и закрытых ключей. Подписание документа в цифровом виде означает создание подписи с использованием закрытого ключа подписавшего, где математический алгоритм используется для шифрования генерируемого хеша.

Aspose.Words Позволяет обнаруживать, подсчитывать или проверять существующие цифровые подписи, а также добавлять новую подпись в свой документ, чтобы выяснить любое вмешательство в него. Вы также можете удалить все цифровые подписи из документа. Используйте [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) Класс для работы с цифровыми подписями.

В этой статье объясняется, как сделать все вышеперечисленное, чтобы подтвердить подлинность и целостность цифрового документа.

{{% alert color="primary" %}}

Обратите внимание, что вы можете получить доступ к цифровым подписям вашего документа только при запуске Java 6 версия и выше.

{{% /alert %}}

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать эту функцию с нашей [Бесплатная онлайн подпись](https://products.aspose.app/words/signature).

{{% /alert %}}

## Поддерживаемые форматы

Aspose.Words позволяет работать с цифровыми подписями на документах DOC, OOXML и ODT и подписывать сгенерированный документ в формате PDF или XPS Формат.

## Ограничения цифровых подписей

В таблице ниже описаны некоторые ограничения, с которыми вы можете столкнуться при работе с цифровыми подписями. Aspose.Words, А также некоторые альтернативные варианты.

|  ограничение |  Альтернативный вариант |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Потеря цифровых подписей на документе после загрузки и сохранения. Поэтому обработка документа сервером может привести к потере всех цифровых подписей без уведомления |  Проверьте, есть ли в документе цифровые подписи, и при обнаружении их примите соответствующие меры. Например, отправьте уведомление клиентам, сообщив им, что документ, который они загружают, содержит цифровые подписи, которые будут потеряны, если он будет обработан |
|  Aspose.Words Поддержка работы с макросами в документе. Но Aspose.Words Пока не поддерживает цифровые подписи на макросах |  Экспортировать документ в любой формат Word и использовать его. Microsoft Word Добавить цифровую подпись в макросы |

## Обнаружение, подсчет и проверка цифровых подписей

Aspose.Words позволяет обнаружить цифровую подпись в документе с помощью [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) метод и [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) собственность. Стоит отметить, что такая проверка позволит лишь выявить факт подписи, но не ее действительность.

Документ может быть подписан не один раз, и это могут сделать разные пользователи. Для проверки действительности цифровых подписей необходимо загрузить их из документа с помощью [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) Метод и использование [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) собственность. Также Aspose.Words позволяет подсчитать набор всех цифровых подписей в документе, используя [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) собственность.

Все это обеспечивает эффективный и безопасный способ проверки документа на подпись перед его обработкой.

Следующий пример кода показывает, как обнаружить наличие цифровых подписей и проверить их:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## Создайте цифровую подпись {#create-a-digital-signature}

Для создания цифровой подписи вам потребуется загрузить сертификат подписи, подтверждающий личность. Когда вы отправляете документ с цифровой подписью, вы также отправляете сертификат и открытый ключ.

Aspose.Words Это позволяет создать сертификат X.509, цифровой сертификат, который использует международно признанный стандарт X.509 PKI для проверки того, что открытый ключ принадлежит подписывающему лицу, включенному в сертификат. Чтобы сделать это, используйте [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) Метод в пределах [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) класс.

В следующих разделах объясняется, как добавить цифровую подпись, строку подписи и как подписать сгенерированный документ PDF.

### Подписать документ

Aspose.Words Позволяет подписывать документ DOC, DOCX или ODT в цифровом виде. [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) метод и [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) свойств.

Следующий пример кода показывает, как подписывать документы с использованием держателя сертификата и опций подписи:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### Добавить строку подписи

Линия подписи - это визуальное представление цифровой подписи в документе. Aspose.Words позволяет вставить строку подписи с помощью [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) метод. Вы также можете установить параметры для этого представления, используя [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) класс.

Например, на рисунке ниже показано, как могут отображаться действительные и недействительные подписи.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

Кроме того, если документ содержит строку подписи и нет цифровой подписи, есть функция, чтобы попросить пользователя добавить подпись.

Следующий пример кода показывает, как подписать документ с личным сертификатом и конкретной строкой подписи:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### Подпишите генерируемый PDF-документ {#sign-a-generated-pdf-document}

Aspose.Words позволяет вам подписать и получить все детали PDF-документа с помощью [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) свойств.

Следующий пример кода показывает, как подписать сгенерированный PDF:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

На рисунке ниже показано, что сгенерированный PDF-документ открывается в Adobe Acrobat Цифровая подпись проверяется как существующая и действительная.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## Восстановление ценности цифровой подписи

Aspose.Words также обеспечивает возможность извлечения значения цифровой подписи из документа с цифровой подписью в виде байтового массива с использованием [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) собственность.

Следующий пример кода показывает, как получить значение цифровой подписи в виде байтового массива из документа:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## Удалить цифровые подписи

Aspose.Words позволяет удалить все цифровые подписи из подписанного документа с помощью [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) метод.

Следующий пример кода показывает, как загрузить и удалить цифровые подписи из документа:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

Обратите внимание, что вы не можете удалить только одну цифровую подпись в своем документе.

{{% /alert %}}
