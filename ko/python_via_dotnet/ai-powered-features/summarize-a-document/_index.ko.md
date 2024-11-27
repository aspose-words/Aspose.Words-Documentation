---
title: 문서 요약
second_title: Aspose.Words(으)로 Python via .NET
articleTitle: 문서 요약
linktitle: 문서 요약
type: docs
weight: 20
description: "문서를 요약합니다. Aspose.Words의 경우Python는 요약 길이를 지정할 수 있도록 하여OpenAI및 구글AI모델을 사용하여 문서 요약을 단순화합니다."
url: /ko/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

문서 요약은 콘텐츠 검토,빠른 통찰력 또는 초록을 준비하는 데 유용한 도구입니다. Aspose.WordsAI전원 모델을 사용하여 문서 요약을 지원하므로 긴 텍스트를 더 쉽게 처리 할 수 있습니다. [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/)모듈에서 사용할 수 있는 이 기능은*OpenAI*및*Google*의 고급 생성 언어 모델을 통합합니다.

문서 내용을 요약하기 위한 다양한 옵션을 지정할 수 있습니다. [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/)메서드를 사용하여 문서 요약을 생성합니다. [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/)속성을 사용하여 요약 길이를 설정할 수도 있습니다.

Aspose.Words을 사용하면 문서 요약을 구현하는 것이 간단합니다. 다음 코드 예제에서는GPT-4 영형 모델을 사용하여 문서를 요약하기 위해 핫을 보여 줍니다:

{{< highlight python >}}
first_doc = aw.Document(MyDir + "Big document.docx")
second_doc = aw.Document(MyDir + "Document.docx")
api_key = os.getenv("API_KEY")
# Use OpenAI or Google generative language models.
model = aw.ai.AiModel.create(aw.ai.AiModelType.GPT_4O_MINI).with_api_key(api_key).as_open_ai_model()
options = aw.ai.SummarizeOptions()
options.summary_length = aw.ai.SummaryLength.SHORT
one_document_summary = model.summarize(first_doc, options)
oneDocumentSummary.save(ArtifactsDir + "AI.AiSummarize.One.docx")
options.summary_length = aw.ai.SummaryLength.LONG
multi_document_summary = model.summarize([first_doc, second_doc], options)
multiDocumentSummary.save(ArtifactsDir + "AI.AiSummarize.Multi.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Aspose.Words로 문서를 요약하면 시간을 절약하고 필수 정보에 집중할 수 있습니다. 자세한 내용은[aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/)API문서를 확인하십시오.

{{% /alert %}}