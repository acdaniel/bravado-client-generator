---
description: A comprehensive list of the JSON schemas defining the objects expected by and returned from the {{{api.info.title}}}. Learn More.
---

# Schemas

{{#stableObjEach api.schemaMap as |wrap defPath|}}
## {{wrap.title}}

{{wrap.description}}

### Schema <a name="{{dasherize wrap.title}}-schema"></a>

```json
{{{json wrap.schema}}}
```

<small></small>

### Example <a name="{{dasherize wrap.title}}-example"></a>

```json
{{{json wrap.example}}}
```

<br/>
{{/stableObjEach}}
