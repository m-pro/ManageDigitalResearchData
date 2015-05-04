declare namespace tei = 'http://www.tei-c.org/ns/1.0';
for $play in collection('shakespeare')
    let $playname := $play//tei:fileDesc/tei:titleStmt/tei:title/text()
    let $speaker := $play//tei:speaker/text()
    (: order by $speaker :)
    return <html>
    <play>
        <title>{$playname}</title>
        <speaker>{distinct-values($speaker)}</speaker>
    </play>
    <body>This is the play.</body>
    </html>