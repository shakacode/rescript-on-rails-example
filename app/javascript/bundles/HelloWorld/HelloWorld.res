@react.component
let make = (~name) => {
  let (name, setName) = React.useState(_ => name)
  let onChange = evt => {
    ReactEvent.Form.preventDefault(evt)
    let value = ReactEvent.Form.target(evt)["value"]
    setName(_prev => value);
  }

  <div>
    <h3>{{"Hello, " ++ name ++ "!"}->React.string}</h3>
    <hr />
    <form>
      <label htmlFor="name">
        {"Say hello to: "->React.string}
        <input id="name" type_="text" value={{name}} onChange />
      </label>
    </form>
  </div>;
}
