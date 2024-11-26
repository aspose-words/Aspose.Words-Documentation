---
title: Restringir a edição de documentos em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Restringir edição de documentos
linktitle: Restringir edição de documentos
description: "Restrinja a edição de um documento definindo um tipo de restrição usando Python. Você também pode remover a proteção e tornar regiões editáveis sem restrições."
type: docs
weight: 30
url: /pt/python-net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Às vezes, pode ser necessário limitar a capacidade de editar um documento e permitir apenas determinadas ações com ele. Isso pode ser útil para evitar que outras pessoas editem informações sensíveis e confidenciais no seu documento.

Aspose.Words permite restringir a edição de um documento definindo um tipo de restrição. Além disso, Aspose.Words também permite especificar configurações de proteção contra gravação para um documento.

Este artigo explica como usar Aspose.Words para selecionar um tipo de restrição, como adicionar ou remover proteção e como tornar regiões editáveis irrestritas.

## Selecione o tipo de restrição de edição

Aspose.Words permite controlar a forma como você restringe o conteúdo usando o parâmetro de enumeração [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/). Isso permitirá que você selecione um tipo exato de proteção, como o seguinte:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

Todos os tipos são protegidos por senha e, se essa senha não for inserida corretamente, o usuário não poderá alterar legalmente o conteúdo do seu documento. Assim, se o seu documento for devolvido sem a necessidade de fornecer a senha necessária, é sinal de que algo está errado.

Se você não definiu uma senha ao escolher o tipo de segurança, outros usuários podem simplesmente ignorar a proteção do seu documento.

{{% alert color="primary" %}}

Observe que a senha definida é apenas uma propriedade em um documento que pode ser removida se as propriedades do documento forem acessadas. Conseqüentemente, tal senha não é garantia da segurança do documento. O método [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) mostra exatamente isso.

{{% /alert %}}

## Adicionar proteção de documentos

Adicionar proteção ao seu documento é um processo simples, pois tudo o que você precisa fazer é aplicar um dos métodos de proteção detalhados nesta seção.

Aspose.Words permite proteger seus documentos contra alterações usando o método [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/). Este método não é um recurso de segurança e não criptografa um documento.

{{% alert color="primary" %}}

No Microsoft Word, você pode restringir a edição de maneira semelhante usando ambos:

* Restringir edição (Arquivo → Informações → Proteger documento)
* Recurso alternativo – "Restringir Edição" (Revisar → Proteger → Restringir Edição)

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar proteção por senha ao seu documento:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

O exemplo de código a seguir mostra como restringir a edição em um documento para que somente a edição nos campos do formulário seja possível:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Text added to a document.")

# A document protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# Save the protected document.
doc.save(docs_base.artifacts_dir + "DocumentProtection.AllowOnlyFormFieldsProtect.docx");
{{< /highlight >}}

## Remover proteção de documentos

Aspose.Words permite remover a proteção de um documento com modificação simples e direta do documento. Você pode remover a proteção do documento sem saber a senha real ou fornecer a senha correta para desbloquear o documento usando o método [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/). Ambas as formas de remoção não têm diferença.

O exemplo de código a seguir mostra como remover a proteção do seu documento:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Text added to a document.")

# Documents can have protection removed either with no password, or with the correct password.
doc.unprotect()
doc.protect(aw.ProtectionType.READ_ONLY, "newPassword")
doc.unprotect("newPassword")

doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveDocumentProtection.docx");
{{< /highlight >}}

## Especifique regiões editáveis irrestritas

Você pode restringir a edição do seu documento e ao mesmo tempo permitir alterações em partes selecionadas dele. Assim, qualquer pessoa que abrir o seu documento poderá acessar essas partes sem restrições e fazer alterações no conteúdo.

Aspose.Words permite marcar as partes que podem ser alteradas em seu documento usando os métodos [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) e [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/).

O exemplo de código a seguir mostra como marcar todo o documento como somente leitura e especificar regiões editáveis nele:

{{< highlight python >}}
import aspose.words as aw

# Upload a document and make it as read-only.
doc = aw.Document(docs_base.my_dir + "Document.docx")
builder = aw.DocumentBuilder(doc)

doc.protect(aw.ProtectionType.READ_ONLY, "MyPassword")

builder.writeln("Hello world! Since we have set the document's protection level to read-only, we cannot edit this paragraph without the password.")

# Start an editable range.
edRangeStart = builder.start_editable_range()
# An EditableRange object is created for the EditableRangeStart that we just made.
editableRange = edRangeStart.editable_range

# Put something inside the editable range.
builder.writeln("Paragraph inside first editable range")

# An editable range is well-formed if it has a start and an end.
edRangeEnd = builder.end_editable_range()

builder.writeln("This paragraph is outside any editable ranges, and cannot be edited.");

doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedEditableRegions.docx");
{{< /highlight >}}

Você também pode escolher diferentes restrições de edição de documentos para diferentes seções.

O exemplo de código a seguir mostra como adicionar uma restrição para todo o documento e, em seguida, remover a restrição para uma das seções:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Section 1. Unprotected.")
builder.insert_break(aw.BreakType.SECTION_BREAK_CONTINUOUS)
builder.writeln("Section 2. Protected.")

# Section protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# By default, all sections are protected, but we can selectively turn protection off.
doc.sections[0].protected_for_forms = False
doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");

doc = aw.Document(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");
self.assertFalse(doc.sections[0].protected_for_forms)
self.assertTrue(doc.sections[1].protected_for_forms);
{{< /highlight >}}
