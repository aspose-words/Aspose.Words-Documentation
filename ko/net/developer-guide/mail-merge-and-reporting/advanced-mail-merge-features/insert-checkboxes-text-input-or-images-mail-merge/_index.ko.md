---
title: Mail Merge동안Checkbox에스,텍스트 입력 또는 이미지 삽입
second_title: Aspose.Words.NET
articleTitle: Checkbox에스,텍스트 입력 또는 이미지 삽입
linktitle: Checkbox에스,텍스트 입력 또는 이미지 삽입
description: "C#를 사용하여Mail Merge중에checkbox또는 텍스트 입력 필드를 삽입합니다. 또한C#에서Mail Merge동안 데이터베이스에서 이미지를 삽입합니다."
type: docs
weight: 40
url: /ko/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

병합 엔진은 문서를 입력으로 받아`MERGEFIELD`필드를 찾은 다음 데이터 원본에서 얻은 데이터로 바꿉니다. 일반적으로 일반 텍스트와HTML가 삽입되지만Aspose.Words사용자는Mail Merge필드에 대해 더 특이한 시나리오를 처리하는 문서를 생성할 수도 있습니다.

강력한Aspose.Words기능을 사용하면Mail Merge프로세스를 확장 할 수 있습니다:

- mail merge동안 문서에checkbox및 텍스트 입력 양식 필드를 삽입합니다.
- 모든 사용자 정의 저장소(파일,BLOB필드 등)에서 이미지를 삽입합니다.)

## Mail Merge동안Checkbox및 텍스트 입력을 삽입합니다.

병합 필드에서 텍스트가 아닌checkbox또는 텍스트 입력 필드가 대체되도록Mail Merge작업을 수행해야 하는 경우가 있습니다. 이 시나리오가 가장 일반적인 시나리오는 아니지만 일부 작업에서는 매우 편리합니다.

Word문서의 다음 스크린샷은 병합 필드가 있는 템플릿을 보여줍니다:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

아래Word문서의 이 스크린샷은 이미 생성된 문서를 보여줍니다:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

일부 필드는 일반 텍스트로,일부 필드는checkbox양식 필드로,`Subject`필드는 텍스트 입력 필드로 대체되었습니다.

{{% /alert %}}

다음 코드 예제에서는mail merge동안checkbox를 삽입하고 텍스트 필드를 문서에 입력하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## Mail Merge동안 이미지 삽입

Mail Merge작업을 수행할 때 특수 이미지Mail Merge필드를 사용하여 데이터베이스의 이미지를 문서에 삽입할 수 있습니다. 이미지Mail Merge필드는 이미지:MyFieldName라는 병합 필드입니다.

### 데이터베이스에서 이미지 삽입

Mail merge동안 문서에서 이미지Mail Merge필드가 발견되면[FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/)이벤트가 발생합니다. 이 이벤트에 응답하여 파일 이름,스트림 또는 이미지 개체를Mail Merge엔진에 반환하여 문서에 삽입할 수 있습니다.

다음 코드 예제에서는 데이터베이스BLOB필드에 저장된 이미지를 보고서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### Mail Merge동안 이미지 속성 설정

이미지 병합 필드를 병합하는 동안[WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/)과 같은 다양한 이미지 속성을 제어해야 할 수도 있습니다.

현재[ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/)을 사용하면 이미지 너비 또는 높이 속성 만 각각 설정할 수 있습니다. 이 문제를 극복하기 위해Aspose.Words는[Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/)속성을 제공하여 삽입 된 이미지 또는 다른 모양을 완벽하게 제어 할 수 있습니다.

다음 코드 예제에서는 다양한 이미지 속성을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
