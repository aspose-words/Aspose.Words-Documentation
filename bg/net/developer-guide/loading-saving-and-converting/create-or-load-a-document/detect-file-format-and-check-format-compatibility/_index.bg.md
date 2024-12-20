---
title: Откриване на файлов формат при зареждане
second_title: Aspose.Words вместо .NET
articleTitle: Откриване на файлов формат и проверка на съвместимост формат
linktitle: Откриване на файлов формат и проверка на съвместимост формат
description: "Определяне на формата на файла в C# ако не сте сигурни какво е действителното съдържание на файла или дали да проверите съвместимостта на формата."
type: docs
weight: 20
url: /bg/net/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Понякога е необходимо да се определи форматът на документа преди отваряне, защото разширението на файла не гарантира, че съдържанието на файла е подходящо. Например, известно е, че Crystal Reports често издава документи в RTF формат, но им дава .doc разширение.

Aspose.Words предоставя възможност за получаване на информация за типа на файла, за да се избегне изключение, ако не сте сигурни какво е действителното съдържание на файла.

## Откриване на файлов формат без изключение

Когато се занимавате с множество документи в различни формати на файлове, може да се наложи да отделите тези файлове, които могат да бъдат обработвани от Aspose.Words от тези, които не могат. Може да искате да знаете защо някои от документите не могат да бъдат обработени.

Ако се опитате да заредите файл в [Document](https://reference.aspose.com/words/net/aspose.words/document/) обект и Aspose.Words не може да разпознае формата на файла или форматът не се поддържа, Aspose.Words ще направи изключение. Можете да хванете тези изключения и да ги анализирате, но Aspose.Words и осигурява [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/) метод, който ни позволява бързо да определим формата на файла, без да зареждаме документ с възможни изключения. Този метод връща a [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/) обект, който съдържа засечената информация за типа файл.

{{% alert color="primary" %}}

DetectFile Формат само проверява формата на файла, но не потвърждава формата на файла. Няма гаранция, че файлът ще бъде отворен успешно, дори ако **DetectFileFormat** връща, че е един от поддържаните формати. Това е заради **DetectFileFormat** метод чете само частично файлов формат данни, достатъчни за проверка на формата на файла, но не достатъчно за пълно валидиране.

{{% /alert %}}

## Проверка на съвместимостта на файловия формат

Можем да проверим съвместимостта във формат на всички файлове в избраната папка и да ги сортираме по формат в съответните подпапки.

Тъй като ние се занимаваме със съдържанието в папка, първото нещо, което трябва да направите е да получите колекция от всички файлове в тази папка с помощта на **GetFiles** метод на `Directory` клас (от `System.IO` a.

Следният пример за код показва как да получите списък на всички файлове в папката:

{{< gist "aspose-words-gists" "3b6a8e49d800948f7d6ef7975f233fb3" "get-files-in-folder.cs" >}}

Когато всички файлове са събрани, останалата част от работата се извършва от **DetectFileFormat** метод, който проверява формата на файла.

Следният пример за код показва как да се итератира върху събрания списък от файлове, да се провери формата на всеки файл и да се премести всеки файл в съответната папка:

{{< gist "aspose-words-gists" "3b6a8e49d800948f7d6ef7975f233fb3" "check-format-compatibility.cs" >}}

Файловете се преместват в подходящи подпапки с помощта на `Move` метод на `File` Клас от едно и също `System.IO` Имепространство.

В горния пример се използват следните файлове. Името на файла е отляво и описанието му е отдясно:

| Group на файлове | Входен документ | Тип |
|  :-  |  :-  |  :-  |
| Поддържани файлови формати | Тестов файл (doc).doc | Microsoft Word 95/ 6. 0 или Microsoft Word 97 - 2003 г. документ. |
|  | Тестов файл (`Dot`). точка | Microsoft Word 95/ 6. 0 или Microsoft Word 97 за 2003. |
|  | Тестов файл (Docx).docx | Office Open XML Wordprocessing Документ на ML без макроси. |
|  | Тестов файл (Doccm).docm | Office Open XML Wordprocessing ML документ с макроси. |
|  | Тестов файл (Dotx). dotx | Office Open XML Wordprocessing Образец ML. |
|  | Тестов файл (Dotm). точка | Office Open XML Wordprocessing Образец ML с макроси. |
|  | Тестов файл (XML). xml | FlatOPC OOXML документ. |
|  | Тестов файл (RTF). rtf | Документ с богат текстов формат. |
|  | Тестов файл (WordML). xml | Microsoft Word 2003 Обработка на думи Документ на ML. |
|  | Тестов файл (HTML).html | HTML документ. |
|  | Тестов файл (MHTML). mhtml | MHTML (Уеб архив) документ. |
|  | Тестов файл (Odt).odt | Open Document Text (OpenOffice Writer). |
|  | Тестов файл (Ott).ott | Шаблон с отворен документ. |
|  | Тестов файл (docPreWord60).doc | Microsoft Word 2.0 документа. |
| Кодирани документи | Тестов файл (Enc).doc | Шифрована Microsoft Word 95/ 6. 0 или Microsoft Word 97 - 2003 г. документ. |
|  | Тестов файл (Enc).docx | Шифрована Office Open XML обработка на думи Документ на ML. |
| Неподдържани файлови формати | Тестов файл (JPG). jpg | Файл с изображения JPEG. |

