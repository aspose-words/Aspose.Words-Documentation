---
title: Замени Полетата C++
second_title: Aspose.Words за C++
articleTitle: Заменете полетата със статичен текст
linktitle: Заменете полетата със статичен текст
description: "Научете как да замените полетата с текст в C++. Заменете полетата със статични данни, като използвате C++ API."
type: docs
weight: 37
url: /bg/cpp/replace-fields/
timestamp: 2024-01-27-14-07-04
---

Заместването на полета често се изисква, когато искате да запишете вашия документ като статично копие. Например, когато изпращате като прикачен файл в имейл. Конвертирането на полета като `DATE` или `TIME` в статичен текст ще позволи на документа да показва същата дата, както когато е бил изпратен. Също така в някои ситуации може да се наложи да премахнете условните `IF` полета от вашия документ и вместо това да ги замените с най-новия текстов резултат. Например конвертиране на резултата от полето `IF` в статичен текст, така че да не променя динамично стойността си, когато се актуализират полетата в документа.

Диаграмата по-долу показва как полето `IF` се съхранява в документ:

* текстът е заобиколен от специални полеви възли - [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldstart/) и [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldend/)
* възелът [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_separator/) разделя текста в полето на кода на полето и резултата от полето
* кодът на полето определя общото поведение на полето, докато резултатът от полето запазва най-новия резултат, когато това поле се актуализира с Microsoft Word или Aspose.Words
* резултатът от полето е това, което се съхранява в полето и се показва в документа, когато се разглежда

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

Структурата може да се види и по-долу в йерархична форма, като се използва демо проект *"DocumentExplorer"*.

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## Полета, които не могат да бъдат заменени с текст

Заместването на поле със статичен текст не работи правилно за някои полета в горен или долен колонтитул.

Например, ако се опитате да конвертирате полето `PAGE` в горен или долен колонтитул в статичен текст, ще се покаже една и съща стойност на всички страници. Това е така, защото горни и долни колонтитули се повтарят на няколко страници, а когато останат като полета, те се обработват особено така, че да показват правилния резултат за всяка страница.

Въпреки това в заглавката полето `PAGE` се превежда добре в статично изпълнение на текста. Това изпълнение на текста ще бъде оценено, сякаш е последната страница в секцията, което ще доведе до показване на последната страница на всички страници на всяко поле `PAGE` в заглавката.

Следващият пример за код показва как да заместите полето с последния му резултат:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UnlinkFields.cpp" >}}

## Конвертиране на определени типове полета в определени части на документа

Тъй като методът **ConvertFieldsToStaticText** приема два параметъра – [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) свойства и [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) изброяване, е възможно към този метод да се премине всеки съставен възел. Това позволява полетата да бъдат преобразувани в статичен текст само в определени части на документа.

Например можете да подадете обект [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) и да конвертирате полета от посочения тип от целия документ в статичен текст, или можете да подадете обект [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) на секция и да конвертирате само полетата, открити в този орган.

{{% alert color="primary" %}}

Когато преминавате възел на ниво блок, като например [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), имайте предвид, че в някои случаи полетата могат да обхващат няколко параграфа. Ако това се случи, се препоръчва да се премине родителя на композита, вместо да се избегне това.

{{% /alert %}}

Изброяването [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/), предадено на метода **ConvertFieldsToStaticText**, указва какъв тип полета трябва да бъдат преобразувани в статичен текст. Всеки друг тип поле, намерен в документа, ще остане непроменен.

Следващият пример за код показва как да изберете полета от определен тип – *targetFieldType* в конкретен възел - *compositeNode* и след това да ги конвертирате в статичен текст:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cpp" >}}

Следващият пример за код показва как да конвертирате всички `IF` полета в документ в статичен текст:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Следващият пример за код показва как да конвертирате всички полета `PAGE` в тялото на документ в статичен текст:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Следващият пример за код показва как да конвертирате всички полета `IF` в последния абзац в статичен текст:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}
