let eventTargetValue = event => {
  ReactEvent.Form.preventDefault(event)
  ReactEvent.Form.target(event)["value"]
}
