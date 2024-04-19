let
    // Define metadata for the function, describing its purpose and usage.
    metaDocumentation = type function (
            txt as (type text meta [
            Documentation.FieldCaption = " TODO "
        ]),
            pattern as (type text meta [
            Documentation.FieldCaption = " TODO "
        ]),
            optional flags as (type text meta [
            Documentation.FieldCaption = " TODO "
        ])
    ) as logical meta [
        Documentation.Name = "Text.ContainsAll",
        Documentation.Author = "Alexis Olson",
        Documentation.LongDescription = 
            // This is the description of the documentation, it only accepts a handful of HTML tags for formatting.
            "
                TODO
                <p> TODO </p>
                <li><b>Author: </b>Alexis Olson</li>
                <li><b>LinkedIn: </b>https://www.linkedin.com/in/alexis-olson-81726818/</li>
            ",
        Documentation.Examples = {
            [
                Description = " TODO ", 
                Code = " TODO ", 
                Result = " TODO "
            ],
            [
                Description = " TODO ", 
                Code = " TODO ", 
                Result = " TODO "
            ],
            [
                Description = " TODO ", 
                Code = " TODO ", 
                Result = " TODO "
            ]
      }
    ],
    myFunction =
        (txt as text, pattern as text, optional flags as text) as logical =>
            let
                EscapedText = Text.Replace(txt, "\", "\\"),
                EscapedPattern = Text.Replace(pattern, "\", "\\"),
                Flags = flags ?? "",
                Script = 
                    "<script>
                        var str = '" & EscapedText & "';
                        var regex = new RegExp('" & EscapedPattern & "', '" & Flags & "');
                        var matches = str.match(regex);
                        document.write(matches);
                    </script>",
                Result =
                    try (Web.Page(Script){0}[Data]{0}[Children]{1}[Children][Text]{0} <> "null")
                    otherwise error Error.Record("Bad RegEx", "invalid regular expression")
            in  
                Result
in
    // Apply the function metadata to myFunction.
    Value.ReplaceType(myFunction, metaDocumentation)
