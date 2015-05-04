declare namespace tei = 'http://www.tei-c.org/ns/1.0';
let $correct_name := 'Sir Michell'
let $variants := ('Sir Mich.', 'Sir M.', 'Sir Mic.')
for $speaker in doc('shakespeare/5694.xml')//tei:speaker
return
    if (index-of($variants, $speaker/text())) then
        update value $speaker with $correct_name 
    else
        ''