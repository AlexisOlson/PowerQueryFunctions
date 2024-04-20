let
    // Define metadata for the function, describing its purpose and usage.
    metaDocumentation = type function (
            txt as (type text meta [
            Documentation.FieldCaption = " Text to test "
        ]),
            pattern as (type text meta [
            Documentation.FieldCaption = " RegEx pattern to use "
        ]),
            optional flags as (type text meta [
            Documentation.FieldCaption = " Flags to use. Default is global ""g"". "
        ])
    ) as logical meta [
        Documentation.Name = "RegExTest",
        Documentation.Author = "Alexis Olson",
        Documentation.LongDescription = 
            // This is the description of the documentation, it only accepts a handful of HTML tags for formatting.
            "
                Searches for a match of a regular expression pattern within the given text.
                Returns TRUE if there is a match and FALSE otherwise.
                <p> Note: This function is a hack that uses JavaScript inside the Web.Page function. </p>
                <li><b>Author: </b>Alexis Olson</li>
                <li><b>LinkedIn: </b>https://www.linkedin.com/in/alexis-olson-81726818/</li>
            ",
        Documentation.Examples = {
            [
                Description = " Check if input text is a valid IP address. ", 
                Code = " RegExTest(""192.168.0.1"", ""^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)\.?\b){4}$"") ", 
                Result = " TRUE "
            ],
            [
                Description = " Check if file extension is a common image type (uses case-insensitive ""i"" flag). ", 
                Code = " RegExTest(""Image001.JPG"", ""^.+\.(jpe?g|gif|png|svg)$"", ""i"") ", 
                Result = " TRUE "
            ]
      }
    ],
    myFunction =
        (txt as text, pattern as text, optional flags as text) as logical =>
            let
                EscapedText = Text.Replace(txt, "\", "\\"),
                EscapedPattern = Text.Replace(pattern, "\", "\\"),
                Flags = flags ?? "g",
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
