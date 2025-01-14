# HOW TO USE

## Deutsch

### Server Event im Client Triggern

Um ein Server Event im Client zu Triggen, benutze folgenden Code:

```lua
exports.replace_with_your_script_name:TriggerSecuredServerEvent("qnx:test", "hello world")
```

#### Erklärung:

Ersetze `replace_with_your_script_name` mit dem tatsächlichen Namen deines Scripts.

`qnx:test` ist der Name des Events, das du auf dem Server triggern möchtest.

`hello world` ist ein Beispielparameter, den du mit deinem Event senden kannst.

### Serverseitiges Event registrieren

Registriere das Event wie folgt:

```lua
RegisterNetEvent("qnx:test", function(key, message)
    local src = source

    if exports.replace_with_your_script_name:canExecuteEvent(src, key) then
        print("^2[SUCCESS]^7 Event triggered successfully.")
    else
        print("^1[ERROR]^7 Event trigger failed - i ban u now (lol).")
        -- INSERT CUSTOM BAN LOGIC HERE --
    end
end)
```

### Wichtige Hinweise:

`key` **muss immer als erstes Argument übergeben werden!**
Der Key wird zur Verifizierung des Events benötigt.

**Fehlgeschlagene Verifizierung:**
Falls die Verifizierung fehlschlägt (`canExecuteEvent` gibt false zurück), kannst du benutzerdefinierte Bann-Logik implementieren.

## English

### Triggering a Server Event from the Client

To trigger a server event from the client, use the following code:

```lua
exports.replace_with_your_script_name:TriggerSecuredServerEvent("qnx:test", "hello world")
```

#### Explanation:

Replace `replace_with_your_script_name` with the actual name of your script.

`qnx:test` is the name of the event you want to trigger on the server.

`hello world` is an example parameter you can send with your event.

### Registering the Event on the Server

Register the event as follows:

```lua
RegisterNetEvent("qnx:test", function(key, message)
    local src = source

    if exports.replace_with_your_script_name:canExecuteEvent(src, key) then
        print("^2[SUCCESS]^7 Event triggered successfully.")
    else
        print("^1[ERROR]^7 Event trigger failed - i ban u now (lol).")
        -- INSERT CUSTOM BAN LOGIC HERE --
    end
end)
```

### Important Notes:

`key` **must always be the first argument!** The key is required to verify the event.

**Failed Verification:** If the verification fails (`canExecuteEvent` returns false), you can implement custom ban logic.
