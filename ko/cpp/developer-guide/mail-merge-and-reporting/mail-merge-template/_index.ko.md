---
title: Mail Merge 템플릿 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: Mail Merge 템플릿
linktitle: Mail Merge 템플릿
type: docs
description: "만들기 mail merge 출력 문서에서 고정된 내용을 정의한 다음 병합 필드를 사용하여 병합 문서를 생성하는 템플릿입니다."
keywords: "create mail merge template с++"
weight: 10
url: /ko/cpp/mail-merge-template/
---

병합 템플릿을 기본 문서로 사용하는 것이 일반적입니다. mail merge 간단한 조작이라면 mail merge 또는 mail merge 지역과 함께 Mail merge 지역과 함께 더 강력하고 간단한 것보다 인기가있다 mail merge. 단순 mail merge 특정 사례로 간주됩니다. mail merge 영역이 전체 문서인 영역을 사용합니다. 모든 것은 다음 기사"유형 Mail Merge 작업"을 더 자세히 설명합니다.

템플릿은 출력 병합된 문서의 텍스트가 올바르게 서식이 지정되고 mail merge 작업을 수행하면 데이터 원본의 텍스트가 병합 템플릿에 올바르게 입력됩니다.

Aspose.Words 를 만들 수있는 기능을 제공합니다 mail merge 고정 콘텐츠를 정의한 다음 병합 필드를 사용하여 병합 문서를 생성하는 템플릿입니다. 따라서 병합 템플릿에는 모든 출력 문서에서 동일한 필요한 텍스트와 변경 내용을 채울 병합 필드가 있습니다. 따라서 병합된 문서를 생성하는 동안 이러한 필드를 통해 지정된 데이터 원본의 정보가 병합 템플릿에 추가됩니다.

## 는 무엇입니까 Mail Merge 템플릿

A mail merge 템플릿은 고정 데이터와 변수 텍스트를 원하는 병합된 필드를 포함하는 개인화된 문서입니다. 병합 템플릿은 필드를 지원하는 모든 형식일 수 있습니다(예:, DOC, DOCX, DOT, DOTX, RTF. 또한,당신은 또한 사용할 수 있습니다 mustache 문서에 설명 된 템플릿"Mustache 템플릿 구문"을 더 자세히 설명합니다.

새 문서의 모델로 병합 템플릿을 만들 수 있으며 병합된 문서의 각 버전에 대해 동일해야 하는 기본 텍스트를 포함해야 합니다. 템플릿 내부에 병합 필드를 추가하면 데이터 원본에서 가져온 이름이나 주소와 같은 개인 설정 데이터가 표시됩니다. A mail merge 작업은 데이터 원본의 개인 설정 데이터를 병합 템플릿 문서에 자동으로 삽입합니다.

또한,당신은 추가 할 수 있습니다 mail merge 두 개를 삽입하여 템플릿의 영역 mail merge 메일 영역의 시작과 끝을 표시하는 필드입니다. 다음 기사"유형 Mail Merge 작업"은 더 자세히 설명합니다.

## 만들기 Mail Merge 템플릿

템플릿을 만들고 특정 병합 필드를 추가할 수 있습니다. Microsoft Word,또는 프로그래밍 방식으로 사용 Aspose.Words. 이 기사에서는 템플릿을 만드는 프로그래밍 방식을 살펴볼 것입니다.

사용 [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) 다음을 사용하여 필요한 병합 템플릿을 만드는 클래스 Aspose.Words. 다음을 사용하여 이러한 템플릿에 텍스트,병합 필드 및 줄 바꿈을 포함할 수 있습니다 [InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/),그리고 [InsertParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertparagraph/) 방법.

다음 코드 예제에서는 다음을 만드는 방법을 보여 줍니다 mail merge 템플릿:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

아래 그림은 생성 된 템플릿을 보여줍니다:

<img src="mail-merge-template-1.png" alt="mail_merge_template-aspose-words-cpp" style="width:650px"/>

## 사용자 정의 Mail Merge 템플릿 속성

Aspose.Words 많은 속성을 통해 템플릿을 사용자 정의 할 수 있습니다. 템플릿 사용자 정의는 이미지 및 텍스트의 일부 속성을 사용자 정의하는 예를 통해 아래에 설명됩니다.

### 이미지 속성 사용자 지정

다음을 사용하여 이미지 속성을 지정할 수 있습니다 [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/) 수업

다음 코드 예제에서는 이미지 파일 이름 및 이미지 크기를 지정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### 텍스트 속성 사용자 지정

당신은 사용할 수 있습니다 [Text](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/fieldmergingargs/get_text/) 현재 병합 필드의 문서에 텍스트를 삽입하는 속성입니다. 또한 다음을 사용하여 템플릿 내부의 텍스트 및 단락 서식을 변경할 수 있습니다 [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) 그리고 [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) 수업 다음을 사용하여 병합 필드 앞이나 뒤에 삽입할 텍스트를 처리할 수 있습니다 [TextBefore](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textbefore/) 그리고 [TextAfter](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textafter/) 에 포함 된 속성 [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) 수업

다음 코드 예제에서는 확인란 또는 확인란을 삽입하는 방법을 보여 줍니다 HTML 동안 mail merge 운영:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

당신은 또한 구현을 확인할 수 있습니다 `HandleMergeField` 에서 클래스 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## 또한 참조

* 템플릿을 만드는 방법에 대한 자세한 내용은 Microsoft Word 수동으로,검사하십시오 [템플릿 만들기](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) 의 기사 Microsoft 문서
