---
title: Работа с OLE обекти в C++
second_title: Aspose.Words за C++
articleTitle: Работа с OLE обекти
linktitle: Работа с OLE обекти
description: "Създаване и промяна на OLE вграждане във вашия документ с C++."
type: docs
weight: 360
url: /bg/cpp/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (обектно свързване и вграждане) е технология, чрез която потребителите могат да работят с документи, съдържащи "обекти", създадени или редактирани от приложения на трети страни. Това означава, OLE позволява на приложението за редактиране да експортира тези "обекти" в друго приложение за редактиране и след това да ги импортира с допълнително съдържание.

В тази статия ще говорим за вмъкване на обект OLE и задаване на свойствата му в документ.

## Вмъкване На OLE Обект

Ако искате обект OLE, извикайте метода [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) и го подайте изрично **ProgId** с други параметри.

Следващият пример за код показва как да вмъкнете OLE обект в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### Задаване на име на файл и разширение при вмъкване на обект OLE

OLE пакетът е наследен и "недокументиран" начин за съхраняване на вградени обекти, ако манипулаторът OLE е неизвестен.

Ранните версии Windows като Windows 3.1, 95 и 98 имаха приложение Packager.exe, което можеше да се използва за вграждане на всякакъв вид данни в документа. Това приложение вече е изключено от Windows, но Microsoft Word и други приложения все още го използват за вграждане на данни, ако манипулаторът OLE липсва или е неизвестен. Клас `OlePackage` позволява на потребителите достъп до OLE Package свойства.

Следващият пример за код показва как да зададете името на файла, разширението и показваното име за OLE Package:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### Получете достъп до OLE необработени данни за обекта

Потребителите могат да получат достъп до OLE обектни данни, като използват различни свойства и методи от класа `OleFormat`. Например е възможно да получите `OLE` необработени данни за обекта или пътя и името на файла източник за свързания OLE обект.

Следващият пример за код показва как да получите OLE обектни необработени данни, като използвате метода [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### Вмъкване на Ole обект като икона

OLE обекти също могат да бъдат вмъквани в документи като изображения.

Следващият пример за код показва как да вмъкнете OLE обект като икона. За тази цел клас [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) излага метода [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

Следващият пример за код показва как да вмъкнете вграден обект OLE като икона от поток в документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## Вмъкване На Онлайн Видео

Онлайн видеото може да бъде вмъкнато в документа Word от раздела *"Insert" > "Online Video"*. Можете да вмъкнете онлайн видео в документ на текущото местоположение, като извикате метода [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/).

Клас [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) въвежда четири претоварвания на този метод. Първият работи с най-популярните видео ресурси и взема `URL` на видеото като параметър. Например, първото претоварване поддържа просто вмъкване на онлайн видеоклипове от [YouTube](https://www.youtube.com/) както и [Вимео](https://vimeo.com/) ресурси.

Следният пример за код показва как да вмъкнете онлайн видео от *Vimeo* в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

Второто претоварване работи с всички други видео ресурси и взема вграден HTML код като параметър. HTML кодът за вграждане на видеоклип може да варира в зависимост от доставчика, така че се свържете със съответния доставчик за подробности.

{{% alert color="primary" %}}

Моля, обърнете внимание, че документът ще бъде автоматично оптимизиран за MS Word 2013 г., за да покаже видео.

{{% /alert %}}

Следният пример за код показва как да вмъкнете онлайн видео в документ, като използвате такъв HTML код:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}
