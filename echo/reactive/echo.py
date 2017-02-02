from charms.reactive import when, when_not, set_state


@when('squid.installed')
def check_squid():
    print("Squid is here!")
