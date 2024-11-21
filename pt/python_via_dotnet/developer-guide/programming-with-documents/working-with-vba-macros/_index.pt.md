---
title: Trabalhando com macros VBA em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com macros VBA
linktitle: Trabalhando com macros VBA
description: "Crie, leia, grave, clone e gerencie macros VBA em um documento usando Python."
type: docs
weight: 410
url: /pt/python-net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic for Applications (VBA) para Microsoft Word é uma linguagem de programação simples, mas poderosa, que pode ser usada para estender a funcionalidade. Aspose.Words API fornece três classes para obter acesso ao código-fonte do projeto VBA:

- A classe [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) fornece acesso às informações do projeto VBA
- A classe [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) retorna a coleção de módulos do projeto VBA
- A classe [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) fornece acesso ao módulo do projeto VBA
- A enumeração [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) define os tipos de modelo em um projeto VBA. O módulo pode ser um módulo processual, módulo de documento, módulo de classe ou módulo de designer

## Crie um projeto VBA

Aspose.Words API fornece a propriedade [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) para obter ou definir [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) no documento.

O exemplo de código a seguir demonstra como criar um projeto VBA e um módulo VBA junto com propriedades básicas, por exemplo, [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) e [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Ler macros

Aspose.Words também oferece aos usuários a capacidade de ler macros VBA.

O exemplo de código a seguir mostra como ler macros VBA do documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Escreva ou modifique macros

Usando Aspose.Words, os usuários podem modificar macros VBA.

O exemplo de código a seguir mostra como modificar macros VBA usando a propriedade [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Clonar projeto VBA

Com Aspose.Words também é possível clonar projetos VBA.

O exemplo de código a seguir mostra como clonar o projeto VBA usando a propriedade [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) que cria uma cópia do projeto existente:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Clonar Módulo VBA

Você também pode clonar módulos VBA, se necessário.

O exemplo de código a seguir mostra como clonar o módulo VBA usando a propriedade [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) que cria uma cópia do projeto existente:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Trabalhe com as referências do projeto VBA

Aspose.Words API fornece classe [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) para trabalhar com referências de projetos VBA que representam uma coleção de referências de projetos VBA.

O exemplo de código a seguir mostra como remover algumas referências da coleção de referências de um projeto VBA:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}
