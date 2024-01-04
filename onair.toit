import gpio

main:
  button := gpio.Pin 27 --input --pull-down
  led := gpio.Pin 26 --output

  // Boot off
  ledOn := false
  led.set 0

  while true:
    // Wait for full down/up cycle
    button.wait-for 1
    button.wait-for 0

    ledOn = not ledOn
    if ledOn:
      led.set 1
    else:
      led.set 0

    sleep --ms=500
