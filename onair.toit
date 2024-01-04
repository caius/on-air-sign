import gpio

LED ::= 19

main:
  led := gpio.Pin LED --output

  while true:
    print "blink"
    led.set 1
    sleep --ms=500
    led.set 0
    sleep --ms=500
