# trup_search
#### A simple dart tool for advanced searches through tanach

All texts were downloaded from [sefaria](https://www.sefaria.org/texts/Tanakh), originally from [tanach.us](https://tanach.us).

I hope to eventually build a ui for the tool, but right now it can only be used through writing the test function in dart.

Things to note:
- Words connected by a Makef are considered one word.
- A Psik is considered a word.
- The כתיב is written without נקודות, while the קרי directly follows it in brackets.
- A search among multiple words won't go through verses. For example, a search for six word combinations will start by checking בראשית ברא אלהים את השמים ואת, ברא אלהים את השמים ואת הארץ, and then move onto והארץ היתה תהו ובהו וחושך על־פני.