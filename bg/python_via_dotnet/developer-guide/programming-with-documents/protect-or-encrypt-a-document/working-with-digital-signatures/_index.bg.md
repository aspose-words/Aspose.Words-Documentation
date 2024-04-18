---
title: Работа с цифрови подписи
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с цифрови подписи
linktitle: Работа с цифрови подписи
description: "Цифрово подписване на документи и откриване, преброяване, проверка и премахване на съществуващите цифрови подписи, като се използват Python."
type: docs
weight: 40
url: /bg/python-net/working-with-digital-signatures/
---

Цифров подпис се използва за удостоверяване на автентичността на документ, за да се установи, че изпращачът на документа е този, за който се представя, и съдържанието на документа не е било подправено.

Aspose.Words поддържа документи с цифрови подписи и осигурява достъп до тях, което ви позволява да откривате и утвърждавате цифрови подписи в документ и да подписвате генериран PDF документ с доставен сертификат. Към настоящия момент цифровите подписи се поддържат на документи DOC, OOXML и ODT. Подписването на генерирани документи се поддържа в PDF формат.

{{% alert color="primary" %}}

**Опитай онлайн**

Можете да опитате тази функционалност с нашия [Безплатен онлайн подпис](https://products.aspose.app/words/signature).

{{% /alert %}}

## Цифровите подписи не са запазени на Open and Save

Важно е да се отбележи, че документът е зареден и след това записан с помощта на Aspose.Words ще загубят всички цифрови подписи, подписани на документа. Това е по проект като цифров подпис гарантира, че съдържанието не е променено и освен това удостоверява идентификацията на този, който е подписал документа. Тези принципи ще бъдат обявени за недействителни, ако оригиналните подписи бъдат пренесени към получения документ.

Поради това, ако обработвате документи, качени на сървър, това може да означава, че може да повредите документ, качен на сървъра ви по този начин, без да знаете. Ето защо е най-добре да се провери за цифрови подписи върху документ и да се предприемат подходящи действия, ако има такива, например сигнал може да бъде изпратен до клиента, като ги информира, че документът, който те преминават съдържа цифрови подписи, които ще бъдат загубени, ако се обработва. Можете да изтеглите шаблонен файл от този пример [Тук](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

Кодът по- горе използва [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) метод за откриване, ако документът съдържа цифрови подписи без първо зареждане на документа. Това осигурява ефективен и безопасен начин да се провери документ за подпис преди обработката им. При изпълнение, методът връща a [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) обект, който осигурява имота [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/). Връщане на този имот true ако документът съдържа един или повече цифрови подписи. Важно е да се отбележи, че този метод не утвърждава подписите, той определя само ако има подписи. Валидирането на цифровите подписи е покрито в следващия раздел.

{{% alert color="primary" %}}

Можете също така да проверите дали документът има цифрови подписи след зареждане чрез проверка на `Count` собственост на [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) Колекция.

{{% /alert %}}

## Цифрови подписи за макрос (VBA Projects)

Цифровите подписи на макросите не могат да бъдат достъпни или подписани. Това е защото Aspose.Words не се занимава пряко с макроси в документ. Въпреки това при износа на документа се запазват цифрови подписи върху макроси във формата на всяка дума. Тези подписи могат да бъдат запазени на VBA код, тъй като бинарното съдържание на макросите не се променя, дори ако самият документ е променен.

### Достъп и проверка на цифровите подписи

Документът може да има множество цифрови подписи. Тези подписи могат да бъдат достъпни през [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) Колекция. Всеки върнат обект е a [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) което представлява единен цифров подпис, принадлежащ към документа. Това осигурява членове, които ви позволяват да проверите валидността на подписа.

Най-важното свойство за проверка с цифрови подписи е валидността на всеки подпис в документа. Всички подписи в документа могат да бъдат валидирани незабавно чрез призоваване на [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/) собственост. Това ще се върне. true ако всички подписи в документа са валидни или ако документът няма подписи и false ако поне един цифров подпис не е валиден.

Всеки подпис може да бъде индивидуално валидиран чрез повикване [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/). Подписът може да се върне невалидно по няколко причини, например документът е променен след подписването или валидността на удостоверението. Освен това допълнителни подробности за подписа могат да бъдат достъпни. Образецът на кода по-долу показва как да се валидира всеки подпис в документ и да се показва основна информация за подписа. Можете да изтеглите шаблонен файл от този пример [Тук](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Документи за подписване на думи

[DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) класът осигурява методи за подписване на документ. [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) метод знаци източник документ с помощта на даден [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) с цифров подпис и пише подписан документ до дестинация поток

По-долу пример показва как да се подпише прост документ

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

По-долу пример показва как да се подпише криптиран документ

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Подпис на Word документ с линия за подпис

Можете да подпишете документа с източник [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) както и [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) с цифров подпис и пише подписан документ до дестинация файл. Използване [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) клас можете да посочите опции за подписване на документ. По-долу пример показва как да се създаде нов подпис линия и подпис документ

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

По-долу примерът показва как да се промени съществуващата линия за подпис и да се подпише документ

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Подписващ документ на Word с идентификатор на доставчика на подпис

По-долу примерът показва как да се подпише Word документ с идентификатор на доставчика на подпис. криптографският доставчик на услуги (CSP) е независим софтуерен модул, който всъщност изпълнява криптографски алгоритми за удостоверяване, кодиране и криптиране. MS Office запазва стойността на {00000000-0000-0000-00-00000-000000000000} за своя доставчик на подпис по подразбиране.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Създаване на нов подпис Документ за подписване на Word с идентификатор на доставчика

По-долу пример показва как да се създаде подпис линия и подпис Word документ с идентификатор на доставчика на подпис.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## Изтегляне на стойността на цифровия подпис

Aspose.Words Също така предоставя възможност за извличане на стойността на цифровия подпис от цифров подписан документ като байт масив с помощта на [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) собственост.

Следният пример за код показва как да се получи стойността на цифровия подпис като байт масив от документ:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}