def forced_touch( selector )
    touch_successes = frankly_map( selector, 'FEX_forcedTouch' )
    raise "could not find anything matching [#{selector}] to touch" if touch_successes.empty?
    raise "some views could not be touched" if touch_successes.include?(false)
    touch_successes
end