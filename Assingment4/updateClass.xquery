declare namespace tei = 'http://www.tei-c.org/ns/1.0';
let $correct_name := 'Charles'
let $variants := ('Charles.', 'Charl.', 'Char.')
for $speaker in doc('shakespeare/5695.xml')//tei:speaker
return
    if (index-of($variants, $speaker)) then
       (: update value $speaker with $correct_name :)
       $speaker
    else
        ''