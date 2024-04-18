---
title: Работа с OLE обекти и онлайн видео в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с OLE обекти и онлайн видео
linktitle: Работа с OLE обекти и онлайн видео
description: "Създаване и промяна на OLE вграждане във вашия документ с помощта на C#."
type: docs
weight: 360
url: /bg/net/working-with-ole-objects/
---

OLE (Object Linking and Embedding) е технология, чрез която потребителите могат да работят с документи, съдържащи "обекти," създадени или редактирани от приложения на трети страни. Това означава, OLE позволява редактиране на приложение за износ на тези "обекти" към друго приложение за редактиране и след това ги внася с допълнително съдържание.

В тази статия, ние ще говорим за въвеждане на OLE обект и определяне на неговите свойства, както и въвеждане на онлайн видео в документ.

## Вмъкване на OLE Обект

Ако искате OLE обект, обадете се [InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/) и да го преминете **ProgId** изрично с други параметри.

Следният пример с код показва как да се вмъкне OLE Обект в документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### Задаване името на файла и разширението при въвеждане на обект OLE

Пакетът OLE е наследство и "недокументиран" начин за съхранение на вградени обекти, ако не е известен.

Рано Windows версии като Windows 3.1, 95 и 98 са имали конвейер. exe приложение, което може да се използва за вграждане на всеки вид данни в документа. Това заявление вече е изключено от Windows, но Microsoft Word и други приложения все още го използват, за да вграждат данни, ако уредът за управление на OLE липсва или не е известен. На `OlePackage` класът позволява на потребителите да получат достъп до свойствата на пакета OLE.

Следният пример за код показва как да зададете името на файла, разширението и името на дисплея за OLE пакет:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### Get Access to OLE Object Raw Data

Потребителите могат да получат достъп до данни от обекта на OLE чрез различни свойства и методи на `OleFormat` Клас. Например, възможно е да се получи `OLE` обект сурови данни или пътя и името на изходния файл за свързания обект OLE.

Следният пример за код показва как да получите OLE Обект на необработени данни с помощта на [GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/) метод:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### Вмъкване на OLE Обект като икона

Обектите на OLE могат да бъдат въвеждани и в документи като изображения.

Следният пример за код показва как да се вмъкне OLE Object като икона. За тази цел, [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) Класът показва [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/) метод:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

Следният пример за код показва как да се вмъкне вграден обект OLE като икона от поток в документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

Максималният размер на иконата трябва да бъде 32x32 за правилния дисплей.

{{% /alert %}}

## Вмъкване на онлайн видео

Онлайн видеото може да бъде вмъкнато в Word документ от *"Insert" > "Online Video"* tab. Можете да поставите онлайн видео в документ на текущото място, като се обадите на [InsertOnlineVideo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/) метод.

На [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) Класът въвежда четири претоварване на този метод. Първият работи с най-популярните видео ресурси и отнема `URL` на видеото като параметър. Например, първото претоварване поддържа просто въвеждане на онлайн видео от [YouTube](https://www.youtube.com/) както и [Vimeo](https://vimeo.com/) ресурси.

Следният пример с код показва как да вмъкнете онлайн видео от *Vimeo* в документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

Второто претоварване работи с всички други видео ресурси и приема вградени HTML код като параметър. HTML кодът за вграждане на видео може да варира в зависимост от доставчика, така че се свържете със съответния доставчик за подробности.

{{% alert color="primary" %}}

Моля, имайте предвид, че документът ще бъде автоматично оптимизиран, за да може MS Word 2013 да показва видео.

{{% /alert %}}

Следният пример за код показва как да вмъкнете онлайн видео в документ с помощта на такъв HTML код:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}