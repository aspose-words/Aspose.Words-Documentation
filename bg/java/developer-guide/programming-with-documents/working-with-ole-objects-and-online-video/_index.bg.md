---
title: Работа с Оле обекти
second_title: Aspose.Words вместо Java
articleTitle: Работа с Оле обекти
linktitle: Работа с Оле обекти
description: "Създаване и промяна на OLE вграждане във вашия документ с помощта на Java."
type: docs
weight: 360
url: /bg/java/working-with-ole-objects/
---

OLE означава "Object Linking and Embedding." Това е технологията, чрез която потребителите могат да работят с документи, съдържащи "обекти," създадени или редактирани от приложения на трети страни. Това означава, OLE позволява на заявление за износ на тези "обекти" към друго приложение за редактиране и след това ги внася обратно с допълнително съдържание.

В тази статия ще говорим за въвеждане на обект OLE и поставяне на неговите свойства в документ.

## Вмъкване на обект

Ако искате OLE обект, обадете се [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) • **ProgId** изрично с други параметри.

Следният пример за код показва как да вмъкнете OLE Обект в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Задаване на име на файл и разширение при вмъкване на обект OLE

Пакетът OLE е наследство и "недокументиран" начин за съхранение на вградени обекти, ако не е известен.

Рано Windows версии като Windows 3.1, 95 и 98 са имали конвейер. exe приложение, което може да се използва за вграждане на всеки вид данни в документа. Това заявление сега е изключено от Windows, но Microsoft Word и други приложения все още го използват, за да вграждат данни, ако ръководителят на OLE липсва или не е известен. На `OlePackage` класът позволява на потребителите да получат достъп до свойствата на пакет OLE.

Следният пример за код показва как да зададете името на файла, разширението и името на дисплея за пакет OLE:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Get Access to OLE Object Raw Data

Потребителите могат да получат достъп до данните от обекта на OLE чрез различни свойства и методи на `OleFormat` Клас. Например, възможно е да се получи `OLE` обект сурови данни или пътя и името на изходния файл за свързания обект OLE.

Следният пример с код показва как да получите OLE Обект на необработени данни, използвайки [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) метод:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Вмъкване на OLE Обект като икона

Обектите OLE могат да бъдат включени и в документи като изображения.

Следният пример за код показва как да вмъкнете OLE Object като икона. За тази цел, **DocumentBuilder** класа показва [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) метод.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

Следният пример за код показва как да се въведе вграден обект OLE като икона от поток в документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Вмъкване на онлайн видео

Онлайн видеото може да бъде вмъкнато в Word документ от *"Insert" > "Online Video"* tab. Можете да въведете онлайн видео в документ на текущото място, като се обадите на [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) метод:

На [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Класът въвежда четири претоварване на този метод. Първият работи с най-популярните видео ресурси и отнема `URL` на видеото като параметър. Например, първото претоварване поддържа просто въвеждане на онлайн видео от [YouTube](https://www.youtube.com/) както и [Vimeo](https://vimeo.com/) ресурси.

Следният пример за код показва как да вмъкнете онлайн видео от *Vimeo* в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

Второто претоварване работи с всички други видео ресурси и приема вградени HTML код като параметър. HTML кодът за вграждане на видео може да варира в зависимост от доставчика, така че се свържете със съответния доставчик за подробности.

{{% alert color="primary" %}}

Моля, имайте предвид, че документът ще бъде автоматично оптимизиран, за да може MS Word 2013 да показва видео.

{{% /alert %}}

Следният пример за код показва как да вмъкнете онлайн видео в документ с помощта на такъв HTML код:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
