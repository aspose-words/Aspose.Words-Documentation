---
title: Accessing Type Members
type: docs
weight: 30
url: /java/accessing-type-members/
---

LINQ Reporting Engine enables you to access the following public (static and instance) members of accessible types (see “ REF types Working with Types” for more information) in template expressions:

- Fields
- Methods
- Constructors

REF note **Note –** To access a static member of a type in a template expression, the type must be set known for the engine (see “ REF knownTypes Setting up Known External Types” for more information).

A function type member can be used in a template expression only if the following additional requirements are met:

- The function member returns a value.
- The function member does not take generic type arguments.

The engine supports the following features when dealing with function members:

- Overload resolution according to [C# Language Specification 5.0](http://www.microsoft.com/en-us/download/details.aspx?id=7029)
- Using of parameters taking a variable number of arguments

In addition to C# Language features, the engine provides the following extra features to simplify type member access:

- Accessing members of an object without specifying the object’s identifier (see “ REF contextual Using Contextual Object Member Access” for more information)
- Accessing missing members of an object (see “ REF missingMembers Accessing Missing Members of Data Objects” for more information)
