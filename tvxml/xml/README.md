tvxml/xml for any xml based tree structures

## Usage
```vlang
import tvxml xml

doc := xml.parse('<div><a href="https://github.com/hd2g/tvxml">Click me!!!</a></div>') or {
  eprintln('failed to construct html document from text')
}

println(doc.stringify())
```
