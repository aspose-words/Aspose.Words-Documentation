---
title: Python에 저장 옵션 지정
second_title: Python via .NET용 Aspose.Words
articleTitle: 저장 옵션 지정
linktitle: 저장 옵션 지정
description: "Python를 사용하여 저장 프로세스를 보다 정확하게 제어합니다."
type: docs
weight: 10
url: /ko/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

문서를 저장할 때 일부 고급 속성을 설정할 수 있습니다. Aspose.Words는 저장 프로세스를 보다 정밀하게 제어할 수 있는 [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) 클래스를 제공합니다. [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) 개체를 허용하는 [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) 메서드의 오버로드가 있습니다. 이는 [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) 클래스에서 파생된 클래스의 개체여야 합니다. 각 저장 형식에는 이 저장 형식에 대한 저장 옵션을 보유하는 해당 클래스가 있습니다. 예를 들어 PDF 형식으로 저장하기 위한 [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) 또는 이미지 저장을 위한 [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)이 있습니다. 이 문서에서는 [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/)에서 파생된 일부 옵션 클래스를 사용하는 예를 제공합니다.

다음 코드 예제에서는 문서를 HTML로 저장하기 전에 저장 옵션을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

이 문서에서는 문서를 저장할 때 제어할 수 있는 몇 가지 속성을 설명합니다.

## 비밀번호로 문서 암호화

**비밀번호** 속성을 사용하여 암호화된 문서에 대한 비밀번호를 얻거나 설정합니다. 선택한 문서 형식으로 작업하려면 해당 클래스의 **비밀번호** 속성을 사용하십시오.

예를 들어 문서를 DOC 또는 DOT 형식으로 저장할 때 [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) 클래스의 [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) 속성을 사용합니다.

다음 코드 예제에서는 RC4 암호화 방법을 사용하여 문서를 암호화하기 위해 비밀번호를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

문서를 [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) 형식으로 저장할 때 [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) 클래스의 [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) 속성을 사용하세요.

다음 코드 예제는 비밀번호로 암호화된 Docx를 로드하고 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

모든 형식이 암호화 및 **비밀번호** 속성 사용을 지원하는 것은 아닙니다.

## 문서 생성 시간 업데이트

Aspose.Words는 [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) 속성을 사용하여 UTC로 문서 생성 날짜를 가져오거나 설정하는 기능을 제공합니다. [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/) 옵션을 사용하여 저장하기 전에 이 값을 업데이트할 수도 있습니다.

다음 코드 예제에서는 문서 생성 시간을 업데이트하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## 마지막으로 저장된 속성 업데이트

Aspose.Words는 [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) 속성을 사용하여 저장하기 전에 [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) 속성이 업데이트되는지 여부를 결정하는 값을 가져오거나 설정하는 기능을 제공합니다.

다음 코드 예제에서는 이 속성을 설정하고 문서를 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## 픽셀당 1비트 형식으로 흑백 이미지 저장

이미지 저장 옵션을 제어하기 위해 [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) 클래스가 사용됩니다. 예를 들어, [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) 속성을 사용하여 생성된 이미지의 픽셀 형식을 설정할 수 있습니다. 출력 이미지의 픽셀 형식은 스키아의 작업으로 인해 설정한 값과 다를 수 있으므로 주의하시기 바랍니다.

다음 코드 예제에서는 픽셀당 1비트 형식으로 흑백 이미지를 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
