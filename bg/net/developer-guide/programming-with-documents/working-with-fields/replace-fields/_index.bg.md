---
title: Замяна на полета C#
second_title: Aspose.Words вместо .NET
articleTitle: Замяна на полета със статичен текст
linktitle: Замяна на полета със статичен текст
description: "Научете как да замените полетата с текст в C#. Замяна на полета със статични данни .NET API."
type: docs
weight: 37
url: /bg/net/replace-fields/
timestamp: 2024-01-27-14-07-04
---

Замяната на полета често се изисква, когато искате да запазите документа си като статично копие. Например, когато изпращате като прикачен файл в имейл. Конвертиране на полета като `DATE` или `TIME` към статичен текст ще позволи на документа да показва същата дата, както когато е изпратен. Също така, в някои ситуации, може да се наложи да премахнете условното `IF` полета от вашия документ и да ги замени с най-скорошния текстов резултат вместо това. Например, конвертиране на резултата от `IF` поле към статичен текст, така че вече няма да променя динамично стойността си, когато се актуализират полетата в документа.

Диаграмата по- долу показва как `IF` полето се съхранява в документ:

* текстът е заобиколен от специалните полеви възли [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) както и [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend)
* [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) Възел разделя текста в полето в полевия код и резултата от полето
* кодът на полето определя общото поведение на полето, докато резултатът на полето запазва най-скорошния резултат, когато това поле се актуализира, използвайки Microsoft Word или Aspose.Words
* резултатът от полето е това, което се съхранява в полето и се показва в документа, когато се разглежда

![update-remove-a-field-aspose-words](/words/net/replace-fields/updating-and-removing-a-field-1.png)

Структурата също може да се види по- долу в йерархична форма с помощта на [демо проект "Експлорер"](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](/words/net/replace-fields/updating-and-removing-a-field-2.png)

## Полета, които не могат да бъдат заменени с текст

Замяна на поле със статичен текст не работи правилно за някои полета в заглавна част или стъпало.

Например, опитвайки се да конвертирате `PAGE` поле в заглавна част или стъпало към статичен текст ще доведе до същата стойност, която се показва на всички страници. Това е така, защото заглавните части и стъпалата се повтарят на няколко страници и когато останат като полета, те се обработват особено, така че те показват правилния резултат за всяка страница.

Обаче, в заглавната част, `PAGE` полето се превежда добре в статично движение на текст. Този текст ще бъде оценен, сякаш е последната страница в раздела, която ще предизвика `PAGE` поле в заглавната част за показване на последната страница на всички страници.

Следният пример за код показва как да замените полето с най-новите си резултати:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UnlinkFields.cs" >}}

## Конвертиране на определени типове полета в специфични части на документа

От както **ConvertFieldsToStaticText** метод приема два параметъра .. [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) свойства и [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) Изброяване, възможно е да се премине всеки композитен възел към този метод. Това позволява полетата да бъдат преобразувани в статичен текст само в специфични части на документа.

Например, можете да преминете [Document](https://reference.aspose.com/words/net/aspose.words/document/) обект и конвертиране на полета от посочения тип от целия документ в статичен текст, или можете да преминете [Body](https://reference.aspose.com/words/net/aspose.words/body/) обект на раздел и само конвертирате полетата, намерени в това тяло.

{{% alert color="primary" %}}

При преминаване на блок ниво възел като [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), Имайте предвид, че в някои случаи полетата могат да обхващат няколко параграфа. Ако това се случи, се препоръчва да се премине на родителя на композита вместо да се избегне това.

{{% /alert %}}

На [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) Преброяване на **ConvertFieldsToStaticText** метод определя какъв тип полета трябва да се конвертират в статичен текст. Всеки друг тип поле в документа ще остане непроменен.

Следният пример с код показва как да изберете полета от конкретен тип *targetFieldType* в конкретен възел *compositeNode* и след това да ги превърне в статичен текст:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

Следният пример с код показва как да конвертирате всички `IF` полета в документ за статичен текст:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Linked%20fields.docx).

{{% /alert %}}

Следният пример с код показва как да конвертирате всички `PAGE` полета в документ за статичен текст:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInBody-ConvertFieldsInBody.cs" >}}

Следният пример с код показва как да конвертирате всички `IF` полета в последния параграф до статичен текст:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.cs" >}}
