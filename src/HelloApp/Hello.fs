let from whom =
    sprintf "from %s" whom

[<EntryPoint>]
let main _ =
    let message = from "F#"
    printfn "Hello world %s" message
    
    0 