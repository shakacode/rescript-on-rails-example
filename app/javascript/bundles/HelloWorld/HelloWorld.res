type state = {name: string}

type action =
  | UpdateName(string)

let reducer = (_state, action) =>
  switch(action) {
    | UpdateName(name) => {name: name}
  }

let eventTargetValue = event => {
  ReactEvent.Form.preventDefault(event)
  ReactEvent.Form.target(event)["value"]
}

@react.component
let default = (~name) => {
  let (state, dispatch) =
    React.useReducer(
      reducer,
      {
        name: name,
      }
    )

  <div>
    <h3>{{"Hello, " ++ state.name ++ "!"}->React.string}</h3>
    <hr />
    <form>
      <label htmlFor="name">
        {"Say hello to: "->React.string}
        <input id="name" type_="text" value={{state.name}} onChange={
          event => dispatch(UpdateName(eventTargetValue(event)))
        }/>
      </label>
    </form>
  </div>;
}


