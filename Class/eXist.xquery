declare namespace tei = 'http://www.tei-c.org/ns/1.0';
let $michael := 'Sir Michael'
for $speaker in doc('shakespeare/5694.xml')//tei:speaker
    return
        if(starts-with($speaker, 'Sir M')) then
         update value $speaker with $michael
        else
            ''