
import Autocomplete exposing (update, view)
import StartApp.Simple as StartApp


main =
  StartApp.start
    { model = ""
    , update = update
    , view = view
    }

