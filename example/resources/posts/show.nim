import templates, json
import ../../../src/basolato/view

proc showHtml*(post:JsonNode):string = tmpli html"""
<div class="post">
    $if post["published_date"].get().len > 0 {
      <div class="date">
        $(post["published_date"].get)
      </div>
    }
    <h2>$(post["title"].get)</h2>
    <p>$(post["text"].get)</p>
</div>
"""